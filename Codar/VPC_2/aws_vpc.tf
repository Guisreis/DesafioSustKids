resource "aws_vpc" "vpc_main" {
  cidr_block = "10.1.0.0/16"
  enable_dns_hostnames = true
  
  tags = {
    Name = "vpc_desafio_2"
    
  }
}