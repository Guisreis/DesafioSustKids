resource "aws_eip" "ip_elastic" {
  count    = "${length(var.private_subnet_cidrs)}"
  vpc      = true
}