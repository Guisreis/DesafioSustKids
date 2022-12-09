resource "aws_nat_gateway" "NAT_GW" {

  allocation_id = aws_eip.ip_elastic[count.index].id
  count = "${length(var.private_subnet_cidrs)}"
  subnet_id = element(aws_subnet.private_subnets[*].id, count.index)

  tags = {
    Name = "NAT_Internet-gw_2"
  }

  depends_on = [aws_internet_gateway.Internet_Gw]
}