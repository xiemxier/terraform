#provider
region                   = "ap-southeast-1"
#VPC block
vpc_cidr_block           = "10.0.0.0/16"
vpc_instance_tenancy     = "default"
vpc_enable_dns_support   = "true"
vpc_enable_dns_hostnames = "true"
vpc_tags                 = "PC-TUNG"
#End VPC block

#Subnet block
subnet_vpc_id_cidrblock        = "10.0.1.0/24"
subnet_map_public_ip_on_launch = "true"
subnet_availability_zone       = "ap-southeast-1a"
subnet_tags                    = "SUBNET-TUNG"
#End Subnet block

#Internet gateway block
internet_gateway_tags = "GATEWAY-TUNG"
#End Internet gateway block

#Route table block
route_table_tags = "ROUTETABLE-TUNG"
#End Route table block

#Internet access block
internet_access_destination_cidr_block = "0.0.0.0/0"
#End Internet access block