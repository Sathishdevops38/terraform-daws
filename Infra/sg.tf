resource "aws_security_group" "robo_sg_all" {
  name        = var.sg_name
   description = "Allow all inbound traffic and all outbound traffic"
  
  egress {
    from_port        = var.egress_from_port # from port 0 to to port 0 means all ports
    to_port          = var.egress_to_port 
    protocol         = var.protocol # -1 means all protocols
    cidr_blocks      = var.cidr# internet
  }

  ingress {
    from_port        = var.ingress_from_port # from port 0 to to port 0 means all ports
    to_port          = var.ingress_to_port
    protocol         = var.protocol # -1 means all protocols
    cidr_blocks      = var.cidr #internet
  }

  tags = var.sg_tags
}