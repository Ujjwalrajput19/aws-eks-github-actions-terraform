# AWS EKS GitOps CI/CD – React 2048 Application

A cloud-native DevOps portfolio project focused on automating application deployment on Amazon EKS using Terraform, Docker, Amazon ECR, GitHub Actions and ArgoCD.

## Project Ownership 

**Project owner:** Ujjwal Patil

## Project Overview

The goal of this project is to build an automated deployment pipeline for a containerized React 2048 application running on Amazon Elastic Kubernetes Service (EKS).

The intended implementation combines Infrastructure as Code, containerization, continuous integration and GitOps-based continuous delivery.

### Project Objectives

- Provision AWS infrastructure using Terraform.
- Build and package the React application using Docker.
- Store container images in Amazon Elastic Container Registry (ECR).
- Deploy the application on Amazon EKS.
- Automate image building and publishing using GitHub Actions.
- Manage Kubernetes application deployments using ArgoCD.
- Expose the application through the AWS Load Balancer Controller.
- Apply infrastructure and deployment best practices.

## Technology Stack

The following versions and constraints are configured in the project files. They have not yet been validated through a deployment.

| Technology | Configured Version / Usage |
|---|---|
| AWS Region | ap-south-1 (Mumbai) |
| Terraform CLI | >= 1.5.7 |
| AWS Terraform Provider | ~> 6.69 |
| Kubernetes Terraform Provider | ~> 3.4 |
| Helm Terraform Provider | ~> 3.3 |
| Random Terraform Provider | ~> 3.9 |
| Local Terraform Provider | ~> 2.9 |
| Kubectl Terraform Provider | ~> 1.19 |
| EKS Terraform Module | ~> 21.26 |
| VPC Terraform Module | ~> 6.7 |
| Kubernetes Cluster Version | 1.37 |
| ArgoCD Helm Chart | 10.14.0 |
| AWS Load Balancer Controller Chart | 1.14.0 |
| AWS Load Balancer Controller IAM Policy | v2.14.1 |
| Node.js Build Image | 22-alpine |
| Nginx Runtime Image | 1.28-alpine |
| React | 17.0.2 |
| React DOM | 17.0.2 |
| React Scripts | 4.0.3 |
| TypeScript | 4.1.2 |

## AWS Infrastructure Configuration

The project is configured for the Mumbai AWS region.

| Resource / Setting | Configuration |
|---|---|
| AWS Region | ap-south-1 |
| Availability Zones | ap-south-1a, ap-south-1b |
| VPC CIDR | 10.0.0.0/16 |
| Public Subnet 1 | 10.0.1.0/24 |
| Public Subnet 2 | 10.0.2.0/24 |
| Private Subnet 1 | 10.0.3.0/24 |
| Private Subnet 2 | 10.0.4.0/24 |
| ECR Repository | aws-eks-2048-app |
| EKS Cluster | ujjwal-eks-cluster |
| Kubernetes Namespace | dev |
| Worker Node Instance Type | t3.medium |
| Desired Worker Nodes | 2 |
| Minimum Worker Nodes | 1 |
| Maximum Worker Nodes | 5 |

## Architecture Overview

The planned infrastructure and application architecture includes:

- **Amazon VPC:** Provides an isolated network environment.
- **Public and Private Subnets:** Separate internet-facing and internal resources.
- **Internet Gateway:** Provides internet connectivity for public subnet resources.
- **NAT Gateway:** Allows private subnet resources to access external services.
- **Amazon EKS:** Manages the Kubernetes control plane.
- **Managed Node Groups:** Run the application's Kubernetes workloads.
- **Amazon ECR:** Stores Docker container images.
- **AWS Load Balancer Controller:** Integrates Kubernetes Ingress resources with AWS load balancing.
- **ArgoCD:** Continuously monitors the Git repository and synchronizes Kubernetes manifests.
- **GitHub Actions:** Automates application build and image publishing workflows.

## CI/CD and GitOps Workflow

The intended application delivery workflow is:

1. A developer pushes application changes to the GitHub repository.
2. GitHub Actions detects the changes.
3. The React application is packaged into a Docker image.
4. The Docker image is tagged with a unique identifier.
5. The image is published to Amazon ECR.
6. Kubernetes deployment configuration is updated with the new image reference.
7. ArgoCD detects the updated Kubernetes configuration in Git.
8. ArgoCD synchronizes the desired application state with the EKS cluster.
9. The AWS Load Balancer Controller manages external application access.

## Repository Structure

```text
aws-eks-github-actions-terraform/
│
├── .github/
│   └── workflows/
│
├── app/
│   ├── public/
│   ├── src/
│   ├── Dockerfile
│   ├── nginx.conf
│   ├── package.json
│   ├── package-lock.json
│   └── yarn.lock
│
├── infrastructure/
│   │
│   ├── k8s-manifest/
│   │   ├── namespace.yaml
│   │   ├── deployment.yaml
│   │   ├── service.yaml
│   │   └── ingress.yaml
│   │
│   └── terraform-manifest/
│       ├── modules/
│       │   ├── alb/
│       │   ├── eks/
│       │   ├── ecr/
│       │   └── vpc/
│       │
│       ├── providers.tf
│       ├── variables.tf
│       ├── terraform.tfvars
│       ├── terraform.tfvars.example
│       ├── backend.tf
│       ├── kubernetes.tf
│       ├── 3_alb.tf
│       └── 4_argocd.tf
│
├── .gitignore
└── README.md
```

## Security Considerations

Security practices
