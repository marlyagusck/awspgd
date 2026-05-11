terraform {

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {

  region = "ap-southeast-3"

  assume_role {

    role_arn = "arn:aws:iam::<ACCOUNT_ID>:role/TerraformAdminRole"

    session_name = "terraform-session"
  }
}