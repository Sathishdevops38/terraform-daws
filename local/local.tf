locals {
  instance_type = "t3.micro"
  common_tags = "${var.projects}.${var.ec2_tags}"
}