variable "name" {
description = "Name of ScienceLogic Resources deployed by this module"
type = string 
default = "vero"
}

variable "region" {
description = "AWS Region"
type = string
default = "us-east-1"
}
#variable "tags" {} 
#variable "scilo_ip" {}
#variable "management_vpc_cidr" {}
#variable "collector_ips" {}
variable "tags" {} 
variable "vpc_id" {
description = "VPC ID of Customer VPC"
type = string
default = "vpc-1fcf0b67"
}

variable "app_vpc_cidr" {
description = "CIDR Block of App VPC"
type = string
default = "10.0.0.0/16"
}

variable "instance_type" {
description = "Instance Type for EC2"
default = "t2.large"
}

variable "public_subnet_prefix" {
description = "Prefix for RestorePoint Private Subnet. Ex., 'public-a.app*, public-b.app*...'"
type = string
default = "public-a.app*"
}

variable "instance_storage" {
description = "Instance Storage for EC2"
type = number
default = 20
}

variable "additional_instance_storage" {
description = "Additional EBS Volume Size"
type = number
default = 60
}

variable "instance_storage_type" {
description = "Instance Storage Type for EC2"
default = "gp2"
}

variable "key_name" {
description = "Key Pair Name"
type = string
default = "mynew.pem"
}

#variable "vero_ami_name" {} 

#variable "tags" {
# description = "Default tags for all resources"
# type = map(string)
# default = "verotg"
#}
variable "vero_owner_account" {
description = "Account ID of vero AMI Owner"
type = string
default = "653899156175"
}
