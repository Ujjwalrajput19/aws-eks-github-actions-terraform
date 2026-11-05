module "eks" {
  source  = "terraform-aws-modules/eks/aws"
  version = "~> 21.26"

  name               = var.cluster_name
  kubernetes_version = var.cluster_version

  enable_irsa                              = true
  endpoint_public_access                  = true
  enable_cluster_creator_admin_permissions = true

  subnet_ids = var.private_subnet_ids
  vpc_id     = var.vpc_id

  eks_managed_node_groups = {
    node_groups = {
      min_size     = var.min_capacity
      max_size     = var.max_capacity
      desired_size = var.desired_capacity
      instance_types = [var.instance_type]
    }
  }

  addons = {
    coredns = {
      most_recent = true
    }

    kube-proxy = {
      most_recent = true
    }

    vpc-cni = {
      most_recent = true
    }
  }

  tags = {
    Project   = "AWS-EKS-GitOps-CICD"
    Owner     = "Ujjwal Patil"
    ManagedBy = "Terraform"
  }
}
