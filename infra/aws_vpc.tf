module "aws_vpc_test" {
  source = "../module/aws_vpc"
#VPC block
vpc_cidr_block = "${var.vpc_cidr_block}"
vpc_instance_tenancy = "${}"
vpc_enable_dns_support = "${}"
vpc_enable_dns_hostnames = "${}"
vpc_tags = "${}"
#End VPC block

#Subnet block
subnet_vpc_id = "${}"
subnet_vpc_id_cidrblock = "${}"
subnet_map_public_ip_on_lunch = "${}"
subnet_availability_zone = "${}"
subnet_tags = "${}"
#End Subnet block

#Internet gateway block
internet_gateway_vpc_id = "${}"
internet_gateway_tags = "${}"
#End Internet gateway block

#Route table block
route_table_vpc_id = "${}"
route_table_tags = "${}"
#End Route table block

#Internet access block
internet_access_route_table_id = "${}"
internet_access_destination_cidr_block = "${}"
internet_access_gateway_id = "${}"
internet_access_tags = "${}"
#End Internet access block

#Route table association block
associate_vpc_id = "${}"
association_subnet_id = "${}"
association_route_table_id = "${}"
#End Route table association
}