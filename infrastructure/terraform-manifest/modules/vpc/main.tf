module "vpc" {
  source = "terraform-aws-modules/vpc/aws"
  version = "~> 6.7"

  name = var.vpc_name
  cidr = var.vpc_cidr
  azs             = var.availability_zones
  private_subnets = var.private_subnet_cidr_blocks
  public_subnets  = var.public_subnet_cidr_blocks

  enable_nat_gateway   = true
  single_nat_gateway   = true
  enable_dns_hostnames = true
  enable_dns_support   = true


  tags = {
    Project     = "AWS-EKS-GitOps-CICD"
    Owner       = "Ujjwal Patil"
    ManagedBy   = "Terraform"
    Environment = var.environment
    "kubernetes.io/cluster/${var.cluster_name}" = "shared"
  }

  public_subnet_tags = {
    "kubernetes.io/cluster/${var.cluster_name}" = "shared"
    "kubernetes.io/role/elb"                   = "1"
  }

  private_subnet_tags = {
    "kubernetes.io/cluster/${var.cluster_name}" = "shared"
    "kubernetes.io/role/internal-elb"          = "1"
  }


}