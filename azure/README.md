# Azure infrastructure (Terraform)

Flask app platform on Azure, built step by step: network → VM → ACR → AKS.

## Layout

```
azure/
├── bootstrap/              State storage (tfstate-rg, storage account, container). Local state.
├── modules/                Reusable building blocks — no provider config, no hard-coded values
│   ├── network/            VNet, app subnet, NSG (+ association)
│   ├── vm/                 Public IP, NIC, Ubuntu VM (key-only SSH)
│   └── platform/           Container registry (AKS next)
└── environments/
    └── dev/                One root per component, each with its own state file
        ├── network/        Resource group + network module   → dev/network.tfstate
        ├── vm/             VM module (reads RG + subnet)      → dev/vm.tfstate
        └── platform/       Platform module (reads RG)         → dev/platform.tfstate
```

**Modules** say *what* to build. **Environments** say *where* and *with which values*
(`terraform.tfvars`). A prod environment would reuse the same modules with different values.

## Usage

```bash
az login --tenant <your-tenant-domain>
export ARM_SUBSCRIPTION_ID=$(az account show --query id -o tsv)

cd environments/dev/network && terraform init && terraform apply
cd ../platform               && terraform init && terraform apply
cd ../vm                     && terraform init && terraform apply   # optional, costs money
```

Apply order: **bootstrap → network → platform / vm**. Destroy in reverse order.

## Conventions

- Names: `<project>-<environment>-<resource>` (e.g. `flask-dev-vnet`); ACR has no hyphens.
- Tags on everything: `project`, `environment`, `managed_by`, `owner`.
- Cross-stack references use `data` sources by name, so stacks stay loosely coupled.
- No subscription IDs or secrets in code: the subscription comes from `ARM_SUBSCRIPTION_ID`.
- The state backend uses Entra ID auth (`use_azuread_auth`). Your identity needs
  **Storage Blob Data Contributor** on the state storage account (data plane).
