resource "aws_instance" "main" {

  ami           = var.ami_id
  instance_type = var.instance_type

  subnet_id = var.subnet_id

  vpc_security_group_ids = var.security_group_ids

  iam_instance_profile = var.iam_instance_profile

  root_block_device {

    volume_size = var.disk_size

    volume_type = "gp3"
  }

  tags = {
    Name = var.name
  }
}