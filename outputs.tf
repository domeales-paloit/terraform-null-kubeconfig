output "kubeconfig_map" {
  description = "Kubeconfig as a Terraform map"
  value       = local.kubeconfig
  sensitive   = true
}

output "kubeconfig_yaml" {
  description = "Kubeconfig YAML"
  value       = local.kubeconfig_yaml
  sensitive   = true
}

output "kubeconfig_base64" {
  description = "Kubeconfig YAML base64 encoded"
  value       = base64encode(local.kubeconfig_yaml)
  sensitive   = true
}
