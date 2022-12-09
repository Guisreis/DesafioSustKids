
resource "aws_route_table_association" "RT-IG-Association" {
  
count = "${length(var.public_subnet_cidrs)}"
subnet_id = element(aws_subnet.public_subnets[*].id, count.index)

route_table_id = aws_route_table.Public-Subnet-RT.id
}
