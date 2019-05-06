#Provider
region                   = "ap-southeast-1"

#Start of VPC block
vpc_cidr_block           = "10.1.0.0/16"
vpc_instance_tenancy     = "default"
vpc_enable_dns_support   = "true"
vpc_enable_dns_hostnames = "true"
vpc_tags                 = "Demo VPC"
#End VPC block

#Subnet block
count_subnet                   = 2
subnet_vpc_id_cidrblock        = ["10.1.3.0/24","10.1.4.0/24"]
subnet_map_public_ip_on_launch = "true"
subnet_availability_zone       = ["ap-southeast-1a","ap-southeast-1b"]
subnet_tags                    = "SUBNET-SOULBLADE"
#End Subnet block

#Internet gateway block
internet_gateway_tags = "GATEWAY-SOULBLADE"
#End Internet gateway block

#Route table block
route_table_tags = "ROUTETABLE-SOULBLADE"
#End Route table block

#Internet access block
internet_access_destination_cidr_block = "0.0.0.0/0"
#End Internet access block

#Start of EC2 Instances
count_instance = 2
aws_ami_id = "ami-76144b0a"
instance_type = "t2.micro"
key_name = "secomm"
#vpc_security_group_ids = ["sg-03dd57d950c69e910"]
iam-role = ""
user_data = ""

instance_tags = ["web1","web2"]
volume_size = "30"
volume_type = "gp2"
delete_on_termination = "true"

#End of EC2 Instances