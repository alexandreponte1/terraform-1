terraform {
  required_version = "0.14.4"

  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
    archive = {
      source = "hashicorp/archive"
    }
    random = {
      source = "hashicorp/random"
    }
    template = {
      source = "hashicorp/template"

    }
  }
}

provider "aws" {
  region  = var.aws_region
  profile = "playground"
}
