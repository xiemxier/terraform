variable "instance_type" {
  description = "instance default for testing"
}
variable "environment" {
  description = "environment resource belong to"
}
variable "aws_ami_id" {
  description = "AMI ID for launch instance"
}
variable "subnet_id" {
  description = "ID for the subnet where instance should be launch"
}
variable "key_name" {}
variable "count" {}
variable "vpc_security_group_ids" {
  type = "list"
}
variable "tags" {
  type = "list"
}
variable "iam-role" {}
variable "user_data" {}
#root volume
variable "volume_size" {}
variable "volume_type" {}
variable "delete_on_termination" {}
variable "device_name" {}
variable "ebs_volume_size" {}
variable "ebs_volume_type" {}
variable "ebs_delete_on_termination" {}