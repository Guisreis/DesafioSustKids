resource "aws_subnet" "public_subnets" {
 count      = length(var.public_subnet_cidrs)
 vpc_id     = aws_vpc.vpc_main.id
 cidr_block = element(var.public_subnet_cidrs, count.index)
 availability_zone = var.azs_public
 
 tags = {
   Name = "Public Subnet_2 ${count.index + 1}"
 }
}
 
resource "aws_subnet" "private_subnets" {
 count      = length(var.private_subnet_cidrs)
 vpc_id     = aws_vpc.vpc_main.id
 cidr_block = element(var.private_subnet_cidrs, count.index)
 availability_zone = var.azs_private
 
 tags = {
   Name = "Private Subnet_2 ${count.index + 1}"
 }
}

 resource "aws_subnet" "db_subnets" {
 count      = length(var.db_subnet_cidrs)
 vpc_id     = aws_vpc.vpc_main.id
 cidr_block = element(var.db_subnet_cidrs, count.index)
 availability_zone = var.azs_db
 
 tags = {
   Name = "DB Subnet_2 ${count.index + 1}"
 }
}
