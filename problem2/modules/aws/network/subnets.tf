resource "aws_subnet" "private_subnet" {
  availability_zone = var.aws_availability_zone_private
  cidr_block        = var.subnet_cidr_blocks[0]
  map_public_ip_on_launch = false
  vpc_id                  = aws_vpc.vpc.id
  tags = {
      "Name" = "public-zone-subnet"
    }
}
resource "aws_subnet" "public_subnet" {
  availability_zone = var.aws_availability_zone_public
  cidr_block        = var.subnet_cidr_blocks[1]
  map_public_ip_on_launch = false
  vpc_id                  = aws_vpc.vpc.id
  tags = {
      "Name" = "private-zone-subnet"
    }
}