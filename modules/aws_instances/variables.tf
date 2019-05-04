
#resource aws instance
variable "count" {}
variable "aws_ami_id" {}
variable "instance_type" {}
variable "subnet_id" {type = "list"}
variable "key_name" {}
variable "vpc_security_group_ids" {type = "list"}
variable "iam-role" {}


#resource root volume

variable "volume_size" {}
variable "volume_type" {}
variable "delete_on_termination" {}

#resource ebs volume
