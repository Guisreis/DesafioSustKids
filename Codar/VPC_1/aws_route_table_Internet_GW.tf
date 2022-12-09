resource "aws_route_table" "Public-Subnet-RT" {
  depends_on = [
    aws_vpc.vpc_main,
    aws_internet_gateway.Internet_Gw
  ]

  vpc_id = aws_vpc.vpc_main.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.Internet_Gw.id
  }

  tags = {
    Name = "RT for Internet GW"
  }
}

resource "aws_route_table" "Public-Subnet-RT_2" {
  depends_on = [
    aws_vpc.vpc_main,
    aws_internet_gateway.Internet_Gw
  ]

  vpc_id = aws_vpc.vpc_main.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.Internet_Gw.id
  }

  tags = {
    Name = "RT for Internet GW_2"
  }
}