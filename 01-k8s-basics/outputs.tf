output "namespace" {
  description = "Namespace where app is deployed"
  value       = kubernetes_namespace.app.metadata[0].name
}

output "service_nodeport" {
  description = "NodePort assigned to flask service"
  value       = kubernetes_service.flask.spec[0].port[0].node_port
}

output "deployment_replicas" {
  description = "Number of replicas running"
  value       = kubernetes_deployment.flask.spec[0].replicas
}
