# gets current availability zone which should be us-east-1a
data "aws_availability_zone" "current_availability_zone" {
    name = "us-east-1a"
}


# get default ami type
variable "default_ami" {
    description = "Default ami used for most ec2 instances"
    type        = string
    default     = "ami-0d7a109bf30624c99"
}


# get instance type
variable "instance_type" {
    description = "Instance type used for ec2 instances"
    type        = string
    default     = "t2.micro"
}



############################################################################################


## Nonprod Variables

# get nonprod vpc cidr block
variable "nonprod_vpc_cidr_block" {
    description = "cidr block for nonprod vpc"
    type        = string
    default     = "172.19.0.0/24"
}


# get nonprod private subnet cidr block
variable "nonprod_private_subnet_cidr_block" {
    description = "cidr block for nonprod private subnet"
    type        = string
    default     = "172.19.0.0/25"
}



############################################################################################


## Onprem Variables

# get onprem vpc cidr block
variable "onprem_vpc_cidr_block" {
    description = "cidr block for onprem vpc"
    type        = string
    default     = "192.168.0.0/24"
}


# get onprem public subnet cidr block
variable "onprem_public_subnet_cidr_block" {
    description = "cidr block for onprem public subnet"
    type        = string
    default     = "192.168.0.0/25"
}


# get onprem private subnet cidr block
variable "onprem_private_subnet_cidr_block" {
    description = "cidr block for onprem private subnet"
    type        = string
    default     = "192.168.0.128/25"
}










