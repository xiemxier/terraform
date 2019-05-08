#Provider
region                   = "ap-southeast-1"
#Start of VPC block
vpc_cidr_block           = "10.1.0.0/16"
vpc_instance_tenancy     = "default"
vpc_enable_dns_support   = "true"
vpc_enable_dns_hostnames = "true"
vpc_tags                 = "PC-TUAN"
#Subnet block
count_subnet                         = 2
subnet_vpc_id_cidrblock        = ["10.1.3.0/24","10.1.4.0/24"]
subnet_map_public_ip_on_launch = "true"
subnet_availability_zone       = ["ap-southeast-1a","ap-southeast-1b"]
subnet_tags                    = "SUBNET-TUAN"
#Internet gateway block
internet_gateway_tags = "GATEWAY-TUAN"
#Route table block
route_table_tags = "ROUTETABLE-TUAN"
#Internet access block
internet_access_destination_cidr_block = "0.0.0.0/0"
#EC2 Instances
count_instance = 2
aws_ami_id = "ami-76144b0a"
instance_type = "t2.micro"
key_name = "tony-key"
iam-role = ""
user_data = ""

instance_tag = ""
volume_size  = "30"
volume_type  = "gp2"
delete_on_termination = "true"
#resource ebs volume
device_name     = ""
ebs_volume_size = ""
ebs_volume_type = ""
ebs_delete_on_termination = ""

#End of EC2 Instances