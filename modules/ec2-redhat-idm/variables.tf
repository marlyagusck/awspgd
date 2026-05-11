variable "name" {}

variable "ami_id" {}

variable "instance_type" {}

variable "subnet_id" {}

variable "security_group_ids" {
  type = list(string)
}

variable "disk_size" {
  default = 100
}

variable "iam_instance_profile" {
  default = null
}