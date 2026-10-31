output "vm_public_ip" {
  value = module.vm.public_ip
}

output "vm_private_ip" {
  value = module.vm.private_ip
}

output "ssh_command" {
  value = "ssh -i ~/.ssh/azure_lab ${module.vm.admin_username}@${module.vm.public_ip}"
}
