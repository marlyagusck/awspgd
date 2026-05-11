module "redhat_idm" {

  source = "../../modules/ec2-redhat-idm"

  project_name = "pgd-poc-sqs-redhat-idm"

  environment = "poc"

  ami_id = "ami-xxxxxxxx"

  instance_type = "c7i.2xlarge"

  disk_size = 500
}