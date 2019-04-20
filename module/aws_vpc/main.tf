#main.tf
#Create VPC/Subnet
provider "aws" {
  region = "${var.region}"
}
#End provider

#Create VPC
resource "aws_vpc" "My_VPC" {
  cidr_block = "${var.vpc_cidr_block}"
  instance_tenancy = "${var.vpc_instance_tenancy}"
  enable_dns_support = "${var.vpc_enable_dns_support}"
  enable_dns_hostnames = "${var.vpc_enable_dns_hostnames}"
tags = "${var.vpc_tags}"
}
#End Create VPC

#Create subnet
resource "aws_subnet" "My_VPC_Subnet" {
  cidr_block = "${var.subnet_vpc_id_cidrblock}"
  vpc_id = "${var.subnet_vpc_id}"
  map_public_ip_on_launch = "${var.subnet_map_public_ip_on_lunch}"
  availability_zone = "${var.subnet_availability_zone}"
tags = "${var.subnet_tags}"
}
#End Create subnet

#Create Internet gateway
resource "aws_internet_gateway" "My_VPC_GW" {
  vpc_id = "${var.internet_gateway_vpc_id}"
tags = "${var.internet_gateway_tags}"
}
#End Create Internet gateway

#Create Route table
resource "aws_route_table" "My_VPC_route_table" {
  vpc_id = "${var.route_table_vpc_id}"
tags = "${var.route_table_tags}"
}
#End Route table

#Create Internet access
resource "aws_route" "My_VPC_internet_access" {
  route_table_id = "${var.internet_access_route_table_id}"
  destination_cidr_block = "${var.internet_access_destination_cidr_block}"
  gateway_id = "${var.internet_access_gateway_id}"
}
#End Internet access

#Associate route table with subnet
resource "aws_route_table_association" "My_VPC_associate" {
  vpc_id = "${var.associate_vpc_id}"
  route_table_id = "${var.association_route_table_id}"
  subnet_id = "${var.association_subnet_id}"
}