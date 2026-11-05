variable "name" {
  description = "Name of the Amazon ECR repository."
  type        = string
}

variable "environment" {
  description = "Deployment environment, such as dev, staging, or production."
  type        = string
}
