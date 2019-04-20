module "aws_vpc_test" {
  source = "../module/aws_vpc"
#VPC block
vpc_cidr_block           = "${var.vpc_cidr_block}"
vpc_instance_tenancy     = "${var.vpc_instance_tenancy}"
vpc_enable_dns_support   = "${var.vpc_enable_dns_support}"
vpc_enable_dns_hostnames = "${var.vpc_enable_dns_hostnames}"
vpc_tags = {
  "Name" = "${var.vpc_tags}"
}
#Subnet block
subnet_vpc_id_cidrblock        = "${var.subnet_vpc_id_cidrblock}"
subnet_map_public_ip_on_launch = "${var.subnet_map_public_ip_on_launch}"
subnet_availability_zone       = "${var.subnet_availability_zone}"
subnet_tags = {
  "Name" = "${var.subnet_tags}"
}
#Internet gateway block
internet_gateway_tags = {
  "Name" = "${var.internet_gateway_tags}"
}
#Route table block
route_table_tags = {
  "Name" = "${var.route_table_tags}"
}
#Internet access block
internet_access_destination_cidr_block = "${var.internet_access_destination_cidr_block}"
}