resource "aws_subnet" "public_subnets" {
 count      = length(var.public_subnet_cidrs)
 vpc_id     = aws_vpc.vpc_main.id
 cidr_block = element(var.public_subnet_cidrs, count.index)
 availability_zone = var.azs_public
 map_public_ip_on_launch = var.mapPublicIP
 
 tags = {
   Name = "Public Subnet_1"
 }
}

resource "aws_subnet" "public_subnets_2" {
 count      = length(var.public_subnet_cidrs_2)
 vpc_id     = aws_vpc.vpc_main.id
 cidr_block = element(var.public_subnet_cidrs_2, count.index)
 availability_zone = var.azs_public_2
 map_public_ip_on_launch = var.mapPublicIP
 
 tags = {
   Name = "Public Subnet_2"
 }
}
 
resource "aws_subnet" "private_subnets" {
 count      = length(var.private_subnet_cidrs)
 vpc_id     = aws_vpc.vpc_main.id
 cidr_block = element(var.private_subnet_cidrs, count.index)
 availability_zone = var.azs_private
 
 tags = {
   Name = "Private Subnet ${count.index + 1}"
 }
}

 resource "aws_subnet" "db_subnets" {
 count      = length(var.db_subnet_cidrs)
 vpc_id     = aws_vpc.vpc_main.id
 cidr_block = element(var.db_subnet_cidrs, count.index)
 availability_zone = var.azs_db
 
 tags = {
   Name = "DB Subnet ${count.index + 1}"
 }
}
