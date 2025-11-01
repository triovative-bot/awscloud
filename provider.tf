terraform {
  required_version = ">= 1.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = "~> 2.23"
    }
  }
}

provider "aws" {
  region = var.aws_region
}

# Kubernetes provider will be configured after EKS cluster creation
provider "kubernetes" {
  host                   = module.eks-fargate.cluster_endpoint
  cluster_ca_certificate = base64decode(module.eks-fargate.cluster_certificate_authority_data)
  token                  = data.aws_eks_cluster_auth.this.token
}
