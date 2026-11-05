variable "vpc_name" {
  description = "Name of the VPC."
  type        = string
}

variable "environment" {
  description = "Deployment environment, such as dev, staging, or production."
  type        = string
}

variable "vpc_cidr" {
  description = "CIDR block assigned to the VPC."
  type        = string
}

variable "availability_zones" {
  description = "Availability zones used by the VPC."
  type        = list(string)
}

variable "private_subnet_cidr_blocks" {
  description = "CIDR blocks for private subnets."
  type        = list(string)
}

variable "public_subnet_cidr_blocks" {
  description = "CIDR blocks for public subnets."
  type        = list(string)
}

variable "cluster_name" {
  description = "Name of the Amazon EKS cluster associated with the VPC."
  type        = string
}
