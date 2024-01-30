terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.34.0"
    }
  }
  backend "s3" {
    bucket = "soravks-tictactoe-gitops"
    region = "us-east-1"
    key    = "prod/tictactoe/state/terraform.tfstate"
  }
}

provider "aws" {
  region = var.region
}