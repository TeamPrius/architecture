# nonprod vpc

resource "aws_vpc" "nonprod" {
  cidr_block = var.nonprod_vpc_cidr_block  
  tags = {
     Name = "nonprod vpc"
  }
}

# create private subnet

resource "aws_subnet" "private_subnet_nonprod" {
  vpc_id                  = aws_vpc.nonprod.id
  cidr_block              = var.nonprod_private_subnet_cidr_block
  availability_zone       = data.aws_availability_zone.current_availability_zone.name
  map_public_ip_on_launch = false
  
  tags = {
    Name = "private subnet in nonprod"
  }
}


