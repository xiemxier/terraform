variable "count" {}
variable "instance_type" {}
variable "aws_ami_id" {}
variable "enviroment" {}
variable "subnet_id" {}
variable "key_name" {}
variable "vpc_security_group_ids" {type = "list"}
variable "tags" {type = "list"}
variable "iam-role" {}
variable "user_data" {}
variable "volume_size" {}
variable "volume_type" {}
variable  "delete_on_termination" {}
variable "device_name" {}
variable "ebs_volume_size" {}
variable "ebs_volume_type" {}
variable "ebs_delete_on_termination" {}
