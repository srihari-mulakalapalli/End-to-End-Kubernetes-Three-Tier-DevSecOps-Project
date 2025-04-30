terraform {
  backend "s3" {
    bucket         = "mulakalapalli-bucket"
    region         = "us-east-1"
    key            = "End-to-End-Kubernetes-Three-Tier-DevSecOps-Project/Jenkins-Server-TF/terraform.tfstate"
    dynamodb_table = "Lock-Files"
    encrypt        = true
  }
  required_version = "~> 1.11.0"
  required_providers {
    aws = {
      version = "~> 5.49.0"
      source  = "hashicorp/aws"
    }
  }
}