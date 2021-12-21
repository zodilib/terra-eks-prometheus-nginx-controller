provider "aws" {
  region = var.region
}

terraform {
  required_version = "<= 0.13.1"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "<= 3.63"
    }

    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = "~> 2.0"
    }

    helm = {
      source = "hashicorp/helm"
    }
  }
}