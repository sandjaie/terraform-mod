terraform {
  required_version = ">= 1.0.0"

  required_providers {
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = ">= 2.6.1"
    }
    aws = {
      source  = "hashicorp/aws"
      version = ">= 4.25.0"
    }
  }
}
