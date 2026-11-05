
variable "environment" {
  description = "Deployment environment, such as dev, staging, or production."
  type        = string
}

variable "oidc_url" {
  description = "OIDC issuer URL of the Amazon EKS cluster."
  type        = string
}

variable "oidc_arn" {
  description = "ARN of the IAM OIDC identity provider associated with EKS."
  type        = string
}

variable "cluster_name" {
  description = "Name of the Amazon EKS cluster."
  type        = string
}
