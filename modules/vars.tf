# global variables

variable "aws_region" {
  description = "VPC region"
  default = "ap-southeast-1"
}

variable "vpc_cidr" {
  description = "VPC Subnet"
  default = "172.31.0.0/16"
}

variable "public_subnet_cidr" {
  description = "Public_Subnet"
  default = "172.31.1.0/24"
}

variable "private_subnet_cidr" {
  description = "Prevate subnet"
  default = "172.31.2.0/24"
}

variable "key_pair" {
  description = "ec2_key_pair"
  default = "console_mytuan"
}

variable "ami" {
  description = "WINDOWS ami"
  default = "ami-0c512a41948d56a41"
}