terraform {

  backend "s3" {

    bucket = "pgd-terraform-state"

    key = "pgd-poc-sqs/redhat-idm.tfstate"

    region = "ap-southeast-3"

    dynamodb_table = "terraform-lock"

    encrypt = true
  }
}