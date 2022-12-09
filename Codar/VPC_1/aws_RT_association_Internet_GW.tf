
resource "aws_route_table_association" "RT-IG-Association" {
  
count = "${length(var.public_subnet_cidrs)}"
subnet_id = element(aws_subnet.public_subnets[*].id, count.index)

route_table_id = aws_route_table.Public-Subnet-RT.id
}

resource "aws_route_table_association" "RT-IG-Association_2" {
  
count = "${length(var.public_subnet_cidrs_2)}"
subnet_id = element(aws_subnet.public_subnets_2[*].id, count.index)

route_table_id = aws_route_table.Public-Subnet-RT_2.id
}