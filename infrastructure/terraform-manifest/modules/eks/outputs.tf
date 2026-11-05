
output "cluster_id" {
  description = "Unique identifier of the Amazon EKS cluster."
  value       = module.eks.cluster_id
}

output "cluster_name" {
  description = "Name of the Amazon EKS cluster."
  value       = module.eks.cluster_name
}

output "cluster_endpoint" {
  description = "Endpoint of the Amazon EKS Kubernetes API server."
  value       = module.eks.cluster_endpoint
}

output "cluster_security_group_id" {
  description = "Security group ID attached to the EKS cluster."
  value       = module.eks.cluster_security_group_id
}

output "node_security_group_id" {
  description = "Security group ID associated with EKS worker nodes."
  value       = module.eks.node_security_group_id
}

output "oidc_provider_arn" {
  description = "ARN of the EKS OIDC identity provider."
  value       = module.eks.oidc_provider_arn
}

output "cluster_oidc_issuer_url" {
  description = "OIDC issuer URL of the EKS cluster."
  value       = module.eks.cluster_oidc_issuer_url
}

output "cluster_certificate_authority_data" {
  description = "Base64 encoded certificate data required to communicate with the cluster."
  value       = module.eks.cluster_certificate_authority_data
}
