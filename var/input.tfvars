#module ec2
count = "2"
instance_type = "t2.micro"
aws_ami_id = "0b419c3a4b01d1859"
enviroment = "test"
subnet_id = ["subnet-0c3ab122def70d3a5","subnet-0c4b4d5f3e7dc5936"]
key_name = "nguyen_keyname"
vpc_security_group_ids = ["sg-07939951e43382c71"]
tags = ["sv-1","sv-2"]
iam-role = ""
user_data = ""
###root volume
volume_size = "20"
volume_type = "gp2"
device_name = "/dev/sdb"
#ebs volume
ebs_volume_size = "20"
ebs_volume_type = "gp2"
####