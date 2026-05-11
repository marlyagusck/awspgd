############################################################
# TEST APPLICATION
############################################################

module "test_application" {

  source = "../../modules/ec2"

  name = "test-application"

  ami_id = var.rhel_ami

  instance_type = "t3.large"

  subnet_id = data.aws_subnet.private_a.id

  security_group_ids = [
    data.aws_security_group.existing.id
  ]

  disk_size = 100
}

############################################################
# REDHAT IDM
############################################################

module "redhat_idm" {

  source = "../../modules/ec2"

  name = "redhat-idm"

  ami_id = var.rhel_ami

  instance_type = "c7i.2xlarge"

  subnet_id = data.aws_subnet.private_a.id

  security_group_ids = [
    data.aws_security_group.existing.id
  ]

  disk_size = 500
}

############################################################
# ACTIVE DIRECTORY
############################################################

module "active_directory" {

  source = "../../modules/ec2"

  name = "active-directory"

  ami_id = var.windows_ami

  instance_type = "c7i.2xlarge"

  subnet_id = data.aws_subnet.private_b.id

  security_group_ids = [
    data.aws_security_group.existing.id
  ]

  disk_size = 500
}

############################################################
# REPLICATION SERVER
############################################################

module "replication_server" {

  source = "../../modules/ec2"

  name = "replication-server"

  ami_id = var.rhel_ami

  instance_type = "t3.large"

  subnet_id = data.aws_subnet.private_b.id

  security_group_ids = [
    data.aws_security_group.existing.id
  ]

  disk_size = 100
}

############################################################
# REDHAT SSO
############################################################

module "redhat_sso" {

  source = "../../modules/ec2"

  name = "redhat-sso"

  ami_id = var.rhel_ami

  instance_type = "c7i.2xlarge"

  subnet_id = data.aws_subnet.private_b.id

  security_group_ids = [
    data.aws_security_group.existing.id
  ]

  disk_size = 500
}