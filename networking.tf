
resource "aws_subnet" "subnet1" {
  vpc_id                  = aws_vpc.vpc1_id
  cidr_block              = "172.16.11.0/28" //var.subnet1_cidr
  map_public_ip_on_launch = true

  availability_zone = var.subnet1_zone_1a

  tags = {
    "Name" = "grupo-11"
  }
}


resource "aws_route_table" "r" {
  vpc_id = aws_vpc.vpc1_id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.gw.id
  }
}

resource "aws_route_table_association" "table_subnet1" {
  subnet_id      = aws_subnet.subnet1.id
  route_table_id = aws_route_table.r.id
}
