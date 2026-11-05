
variable "cluster_name" {
  description = "Name of the Amazon EKS cluster."
  type        = string
}

variable "cluster_version" {
  description = "Kubernetes version for the EKS cluster."
  type        = string
}

variable "private_subnet_ids" {
  description = "IDs of the private subnets used by the EKS cluster."
  type        = list(string)
}

variable "vpc_id" {
  description = "ID of the VPC hosting the EKS cluster."
  type        = string
}

variable "instance_type" {
  description = "EC2 instance type used by EKS worker nodes."
  type        = string
}

variable "desired_capacity" {
  description = "Desired number of worker nodes."
  type        = number
}

variable "max_capacity" {
  description = "Maximum number of worker nodes."
  type        = number
}

variable "min_capacity" {
  description = "Minimum number of worker nodes."
  type        = number
}
