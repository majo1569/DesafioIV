variable "region" {
  description = "Region in AWS"
}

variable "vpc_cidr" {
  description = "VPC Main 1 CIDR"
}

variable "subnet1_cidr" {
  description = "Subnet 1 CIDR"
}

variable "subnet1_zone_1a" {
  description = "Zone 1a - Subnet 1"
}
variable "ami_id" {
  description = "AMI id"
  type = string
}

variable "subnet1_private_ip" {
  description = "Subnet 1 Private IP"
  type = string
}

variable "key1" {
  description = "KEY"
  type = string
}

variable "username" {
  description = "Resource Owner | AWS IAM username"
  type = string
}

variable "instance_type" {
  description = "EC2 instance type"
  type = string
}