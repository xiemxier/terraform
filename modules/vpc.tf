# Create VPC, subnet, Internet GW, route table

#Define VPC
resource "aws_vpc" "default" {
  cidr_block = "${var.vpc_cidr}"
  enable_dns_hostnames = True

  tags {
    Name = "test-VPC"
  }
}

#Define Public Subnet
resource "aws_subnet" "public_subnet" {
  cidr_block = "${var.public_subnet_cidr}"
  vpc_id = "${aws_vpc.default.id}"
  availability_zone = "ap-southeast-1a"

  tags {
    Name = "Public Subnet"
  }
}

#Define Private Subnet
resource "aws_subnet" "private_subnet" {
  cidr_block = "${var.private_subnet_cidr}"
  vpc_id = "${aws_vpc.default.id}"
  availability_zone = "ap-southeast-1b"
  tags {
    Name = "Private Subnet"
  }
}

#Define Internet Gateway
resource "aws_internet_gateway" "default" {
  vpc_id = "${aws_vpc.default.id}"
  tags {
    Name = "Test IGW"
  }
}

#Route Table
resource "aws_route_table" "public_subnet" {

  vpc_id = "${aws_vpc.default.id}"
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = "${aws_internet_gateway.default}"
  }
  tags {
    Name = "Route for public subnet"
  }
}

#Assign route table to public subnet
resource "aws_route_table_association" "public_subnet" {
  route_table_id = "${aws_route_table.public_subnet}"
  subnet_id = "${aws_subnet.public_subnet}"
}

#Create Security Group
resource "aws_security_group" "public_sg" {
  name = "Public Access"
  ingress {
    from_port = "3389"
    protocol = "rdp"
    to_port = "3389"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port = "-1"
    protocol = "icmp"
    to_port = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  vpc_id = "${aws_vpc.default.id}"
  tags {
    Name = "Test_public_subnet"
  }
}

