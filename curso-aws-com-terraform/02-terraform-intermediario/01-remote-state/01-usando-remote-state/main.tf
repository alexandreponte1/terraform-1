terraform {

  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }

  backend "s3" {
#    bucket  = "tfstate-584197209529"
#    key     = "dev/01-usando-remote-state/terraform.tfstate"
#    region  = "us-east-1"
#    profile = "playground"
  }

}

provider "aws" {
  region  = var.aws_region
  profile = var.aws_profile
}
