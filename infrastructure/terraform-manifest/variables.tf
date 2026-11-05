variable "region" {
  type        = string
  description = "AWS region for deploying the EKS infrastructure."
}

variable "environment" {
  type        = string
  description = "Deployment environment, such as dev, staging, or production."
}

variable "ecr_repo_name" {
  type        = string
  description = "Name of the Amazon ECR repository."
}

variable "vpc_cidr" {
  type        = string
  description = "CIDR block assigned to the project VPC."
}

variable "availability_zones" {
  type        = list(string)
  description = "Availability zones used by the VPC."
}

variable "public_subnet_cidr_blocks" {
  type        = list(string)
  description = "CIDR blocks for public subnets."
}

variable "private_subnet_cidr_blocks" {
  type        = list(string)
  description = "CIDR blocks for private subnets."
}

variable "cluster_name" {
  type        = string
  description = "Name of the Amazon EKS cluster."
}

variable "cluster_version" {
  type        = string
  description = "Kubernetes version for the EKS cluster."
}

variable "instance_type" {
  type        = string
  description = "EC2 instance type used by EKS worker nodes."
}

variable "desired_capacity" {
  type        = number
  description = "Desired number of EKS worker nodes."
}

variable "max_capacity" {
  type        = number
  description = "Maximum number of EKS worker nodes."
}

variable "min_capacity" {
  type        = number
  description = "Minimum number of EKS worker nodes."
}
