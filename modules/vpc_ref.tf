# Authentication
# Module for simple Infrastucture in Aws 
provider "aws" {
  region     = var.region
  access_key = var.access_key
  secret_key = var.secret_key
}
# Aws Resources
resource "aws_vpc" "main" {
  cidr_block       = var.cidr_block_vpc
  instance_tenancy = "default"

  tags = {
    Name = "Terraform_vpc"
  }
}  
  resource "aws_subnet" "main" {
  vpc_id     = aws_vpc.main.id
  cidr_block = var.cidr_block_sub

  tags = {
    Name = "Terrform_subnet"
  }
}
  resource "aws_internet_gateway" "main" {
  vpc_id = aws_vpc.main.id
  }

  

resource "aws_network_acl" "main" {
  vpc_id = aws_vpc.main.id

  egress {
    protocol   = -1
    rule_no    = 200
    action     = "allow"
    cidr_block = var.cidr_block_sub
    from_port  = 0
    to_port    = 0
  }
  ingress {
    protocol   = -1
    rule_no    = 100
    action     = "allow"
    cidr_block = var.cidr_block_sub
    from_port  = 0
    to_port    = 0
  }
  tags = {
    Name = "Terraform_NACL"
  }
}

resource "aws_route_table" "r" {
  vpc_id = aws_vpc.main.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.main.id
  }

  tags = {
    Name = "Terraform_RT"
  }
}

resource "aws_instance" "ec2_test" {
    ami = var.ami
    subnet_id = aws_subnet.main.id
    instance_type = var.instance_type
    key_name = var.key
}

resource "aws_security_group" "new" {
    name = "terraform_sg"

ingress {
    description = "Security Group"
    from_port   = 22
    to_port     = 22
    protocol    = var.proto
    # output as input calling resource aws_instance with attribute publicip 
    cidr_blocks = ["${aws_instance.ec2_test.public_ip}/32"]
  }
}
