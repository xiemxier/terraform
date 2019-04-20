#VPC block
variable "vpc_cidr_block" {}
variable "vpc_instance_tenancy" {}
variable "vpc_enable_dns_support" {}
variable "vpc_enable_dns_hostnames" {}
variable "vpc_tags" {}
#End VPC block

#Subnet block
variable "subnet_vpc_id" {}
variable "subnet_vpc_id_cidrblock" {}
variable "subnet_map_public_ip_on_lunch" {}
variable "subnet_availability_zone" {}
variable "subnet_tags" {}
#End Subnet block

#Internet gateway block
variable "internet_gateway_vpc_id" {}
variable "internet_gateway_tags" {}
#End Internet gateway block

#Route table block
variable "route_table_vpc_id" {}
variable "route_table_tags" {}
#End Route table block

#Internet access block
variable "internet_access_route_table_id" {}
variable "internet_access_destination_cidr_block" {}
variable "internet_access_gateway_id" {}
variable "internet_access_tags" {}
#End Internet access block

#Route table association block
variable "associate_vpc_id" {}
variable "association_subnet_id" {}
variable "association_route_table_id" {}
#End Route table association