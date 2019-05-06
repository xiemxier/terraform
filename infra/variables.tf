#Start of AWS EC2 Instances
variable "count_instance" {}
variable "aws_ami_id" {}
variable "instance_type" {}
#variable "subnet_id" {}
variable "key_name" {}
#variable "vpc_security_group_ids" {type = "list"}
variable "iam-role" {}
variable "instance_tags" {type = "list"}
#root volume
variable "volume_size" {}
variable "volume_type" {}
variable "delete_on_termination" {}
#ebs volume
variable "device_name" {}
variable "ebs_volume_size" {}
variable "ebs_volume_type" {}
variable "ebs_delete_on_termination" {}
#End of AWS EC2 Instances

#----

#Start of VPC block
variable "vpc_cidr_block" {}
variable "vpc_instance_tenancy" {}
variable "vpc_enable_dns_support" {}
variable "vpc_enable_dns_hostnames" {}
variable "vpc_tags" {type = "string"}
#End VPC block

#Subnet block
variable "count_subnet" {}
variable "subnet_vpc_id_cidrblock" {type = "list"}
variable "subnet_map_public_ip_on_launch" {}
variable "subnet_availability_zone" {type = "list"}
variable "subnet_tags" {type = "string"}
#End Subnet block

#Internet gateway block
variable "internet_gateway_tags" {type = "string"}
#End Internet gateway block

#Route table block
variable "route_table_tags" {type = "string"}
#End Route table block

#Internet access block
variable "internet_access_destination_cidr_block" {}
#End Internet access block
#provider
variable "region" {}
#End of AWS VPC

