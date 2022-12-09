

resource "aws_security_group" "aws_secgroup" {

   depends_on = [
    aws_vpc.vpc_main

  ]
  
  tags = {
   Name = "GRUPOSEC_1"
 }


  vpc_id = aws_vpc.vpc_main.id

  ingress {
    protocol  = "tcp"
    self      = true
    from_port = 22  
    to_port   = 22
    cidr_blocks = ["179.125.29.146/32"]
  }
  ingress {
    from_port   = 80
    to_port     = 80
    self      = true
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
}
  egress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
   egress {
    from_port   = 443   
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
    ingress {
    from_port   = 443   
    to_port     = 443
    self      = true
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}