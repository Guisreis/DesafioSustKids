resource "aws_internet_gateway" "Internet_Gw" {

  vpc_id = aws_vpc.vpc_main.id

  tags = {
    Name = "Internet-GTW_2"
  }
}