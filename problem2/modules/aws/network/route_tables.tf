# Route table for public zone
resource "aws_route_table" "public_zone_route_table" {
  vpc_id = aws_vpc.vpc.id
  tags = {
      "Name" = "public-zone-route-table"
    }
}

resource "aws_route_table_association" "public_zone_route_table_association" {
  subnet_id      = aws_subnet.public_subnet.id
  route_table_id = aws_route_table.public_zone_route_table.id
}

resource "aws_route" "public_zone_route_table_entry_to_internet_gateway" {
  route_table_id         = aws_route_table.public_zone_route_table.id
  destination_cidr_block = "0.0.0.0/0"
  gateway_id             = aws_internet_gateway.igw.id
}

