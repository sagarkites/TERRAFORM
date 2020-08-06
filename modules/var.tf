# Centralised variable File (make Terraform DRY) can be callable in .tf file
variable "access_key" {
    default = "access"
}

variable "secret_key" {
    default = "secret"
}


variable "region" {
  default = "us-east-1"
}

variable "cidr_block_vpc" {
    default = "10.0.0.0/16"
}

variable "cidr_block_sub" {
    default = "10.0.1.0/24"
}

variable "ami" {
    default = "ami-09d8b5222f2b93bf0"

}

variable "instance_type" {
    default = "t2.micro"
}
# Key should be already Created in the aws Ec2 console 
variable "key" {
    default = "terraform"
}

variable "proto" {
    default = "tcp"
}


