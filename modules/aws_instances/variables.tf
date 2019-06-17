
#resource aws instance
variable "count" {}
variable "aws_ami_id" {}
variable "instance_type" {}
variable "subnet_id" {type = "list"}
variable "key_name" {}
variable "vpc_security_group_ids" {type = "list"}
<<<<<<< HEAD
variable "iam-role" {}
variable "user_data" {}
variable "tags" {}
=======
variable "iam_role" {}
variable "instance_tag" {
  type = "list"
}
variable "user_data" {}

>>>>>>> soulblade_phuoc
#resource root volume
variable "volume_size" {}
variable "volume_type" {}
variable "delete_on_termination" {}
<<<<<<< HEAD
=======

>>>>>>> soulblade_phuoc
#resource ebs volume
variable "device_name" {}
variable "ebs_volume_size" {}
variable "ebs_volume_type" {}
<<<<<<< HEAD
variable "ebs_delete_on_termination" {}
=======
variable "ebs_delete_on_termination" {}
>>>>>>> soulblade_phuoc
