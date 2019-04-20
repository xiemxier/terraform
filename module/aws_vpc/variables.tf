#VPC block
variable "vpc_cidr_block" {}
variable "vpc_instance_tenancy" {}
variable "vpc_enable_dns_support" {}
variable "vpc_enable_dns_hostnames" {}
variable "vpc_tags" {type = "map"}
#End VPC block

#Subnet block
variable "subnet_vpc_id_cidrblock" {}
variable "subnet_map_public_ip_on_launch" {}
variable "subnet_availability_zone" {}
variable "subnet_tags" {type = "map"}
#End Subnet block

#Internet gateway block
variable "internet_gateway_tags" {type = "map"}
#End Internet gateway block

#Route table block
variable "route_table_tags" {type = "map"}
#End Route table block

#Internet access block
variable "internet_access_destination_cidr_block" {}
#End Internet access block
