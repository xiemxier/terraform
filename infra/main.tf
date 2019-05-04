#aws vpc
module "aws_vpc" {
   source = "../modules/aws_vpc"
#VPC block
vpc_cidr_block           = "${var.vpc_cidr_block}"
vpc_instance_tenancy     = "${var.vpc_instance_tenancy}"
vpc_enable_dns_support   = "${var.vpc_enable_dns_support}"
vpc_enable_dns_hostnames = "${var.vpc_enable_dns_hostnames}"
vpc_tags                 =  "${var.vpc_tags}"

#Subnet block
count                          = "${var.count_subnet}"
subnet_vpc_id_cidrblock        = "${var.subnet_vpc_id_cidrblock}"
subnet_map_public_ip_on_launch = "${var.subnet_map_public_ip_on_launch}"
subnet_availability_zone       = "${var.subnet_availability_zone}"
subnet_tags                    = "${var.subnet_tags}"

#Internet gateway block
internet_gateway_tags          = "${var.internet_gateway_tags}"

#Route table block
route_table_tags               = "${var.route_table_tags}"

#Internet access block
internet_access_destination_cidr_block = "${var.internet_access_destination_cidr_block}"
}

#aws instances
module "aws_instance" {
  source                  = "../modules/aws_instances"

  count                   = "${var.count_instance}"
  aws_ami_id              = "${var.aws_ami_id}"
  instance_type           = "${var.instance_type}"
  subnet_id               = "${module.aws_vpc.aws_subnet_id}"
  key_name                = "${var.key_name}"
  vpc_security_group_ids  = ["${module.sg.security_group_id}"]
  iam-role                = "${var.iam-role}"
#volume
  volume_size             = "${var.volume_size}"
  volume_type             = "${var.volume_type}"
  delete_on_termination   = "${var.delete_on_termination}"

}
##security group
#get ip address
data "http" "workstation_ip" {
  url = "http://icanhazip.com"
}
####
module "sg" {
  source             = "../modules/aws_sg"
  security_groupname = "sg_testing_module"
  description        = "allow traffic from sg-alb"
  environment        = "testing"
  vpc_id             = "${module.aws_vpc.vpc_id}"
  inbound_cidr_blocks      = {
    "0" = ["10.1.3.0/24", "27017","27017","tcp"]
    "1" = ["10.1.4.0/24", "27017","27017","tcp"]

    "2" = ["${chomp(data.http.workstation_ip.body)}/32", "22", "22", "tcp" ]

  }
  outbound_cidr_blocks = {
    "0"    = ["0.0.0.0/0","0","0","-1"]
  }
    ###source security group id###
  number_of_ingress_source_security_group_id = 0
  inbound_source_security_group = {}
  number_of_egress_source_security_group_id = 0
  outbound_source_security_group = {}

  tags     = {
    "Name" = "sg-test"
  }

}












