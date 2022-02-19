terraform {

  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }

 # backend "s3" {
 #   bucket  = "tfstate-812498273566"
 #   key     = "dev/03-data-sources-s3/terraform.tfstate"
 #   region  = "us-east-1"
 #   profile = "playground"
 # }
}

provider "aws" {
  region  = var.aws_region
  profile = var.aws_profile
}
