terraform {
  required_version = ">= 1.5.7"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.69"
    }

    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = "~> 3.4"
    }

    helm = {
      source  = "hashicorp/helm"
      version = "~> 3.3"
    }

    random = {
      source  = "hashicorp/random"
      version = "~> 3.9"
    }

    local = {
      source  = "hashicorp/local"
      version = "~> 2.9"
    }

    http = {
      source  = "hashicorp/http"
      version = "~> 3.5"
    }

    kubectl = {
      source  = "gavinbunney/kubectl"
      version = "~> 1.19"
    }
  }
}

provider "aws" {
  region = var.region
}
