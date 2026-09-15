resource "aws_vpc" "my_vpc" {
  cidr_block = var.vpc_cidr_block
  tags = {
    Name = "my-vpc"
  }
}

resource "aws_subnet" "subnet1" {
  vpc_id            = aws_vpc.my_vpc.id
  cidr_block        = var.subnet1_cidr_block
  availability_zone = var.az1
  map_public_ip_on_launch = true
  tags = {
    Name = "subnet-1"
  }
}
