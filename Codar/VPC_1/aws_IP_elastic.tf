resource "aws_eip" "ip_elastic" {
  count    = "${length(var.private_subnet_cidrs)}"
  vpc      = true
}

resource "aws_eip" "ip_elastic_public" {
  vpc      = true
}

  resource "aws_network_interface" "multi-ip_public" {
  count = length(var.public_subnet_cidrs)
  subnet_id   = aws_subnet.public_subnets[count.index].id
}

