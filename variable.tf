variable "aws_region" {
  description = "aws_region"
  type = string
  default = "ap-south-1"
}

variable "vpc_cidr_block" {
  description = "CIDR block for the VPC"
  type = string
  default = "10.0.0.0/16"
}
variable "subnet_cidr_block" {
    description = "CIDR block for the subnet_cidr_block"
    type = string
    default = "10.0.1.0/24"
}
variable "subnet_availability_zone" {
    description = "Availability_zone for subnet"
    type = string
    default = "ap-south-1a"
}
variable "subnet_availability_zone2" {
    description = "Availability_zone for subnet"
    type = string
    default = "ap-south-1b"
}
variable "security_group_name" {
    description = "prefix for the security_group_name"
    type = string
    default = "access80"
}
variable "ami_id" {
  description = "AMI id for the instance"
  type = string
  default = "ami-08e5424edfe926b43"
}
variable "instance_type" {
  type = string
  default = "t2.micro"
}
variable "key_name" {
    type = string
    default = "vm"
}
# Defining CIDR Block for 2ndSubnet
variable "subnet1_cidr" {
  default = "10.0.2.0/24"
}
# Defining CIDR Block for 3rd Subnet
variable "subnet2_cidr" {
  default = "10.0.3.0/24"
}
# Defining CIDR Block for 4th Subnet
variable "subnet3_cidr" {
  default = "10.0.4.0/24"
}
# Defining CIDR Block for 5th Subnet
variable "subnet4_cidr" {
  default = "10.0.5.0/24"
}
# Defining CIDR Block for 6th Subnet
variable "subnet5_cidr" {
  default = "10.0.6.0/24"
}
