############################################################
# EXISTING VPC
############################################################

data "aws_vpc" "main" {

  id = "vpc-0fdbbaba1a2460ee6"
}

############################################################
# EXISTING SUBNETS
############################################################

data "aws_subnet" "private_a" {

  id = "subnet-07113b8af97b75bdd"
}

data "aws_subnet" "private_b" {

  id = "subnet-05bd7e99f91f77bc2"
}

data "aws_subnet" "public_a" {

  id = "subnet-04866302f1a061aca"
}

data "aws_subnet" "public_b" {

  id = "subnet-07ae1409d56697141"
}

############################################################
# EXISTING SECURITY GROUP
############################################################

data "aws_security_group" "existing" {

  id = "sg-0a72d58a90aaec3d4"
}