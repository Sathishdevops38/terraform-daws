resource "aws_security_group" "robo_sg_allow_all" {
  name = var.sg_name
  description = "allow all"

  egress = {
    from_port = var.from_port
    to_port = var.to_port
    protocol = var.protocol
    cidr_blocks = var.cidr_blocks
  }

  ingress = {
    from_port = var.from_port
    to_port = var.to_port
    protocol = var.protocol
    cidr_blocks = var.cidr_blocks
  }
}