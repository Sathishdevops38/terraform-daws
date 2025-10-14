resource "aws_instance" "terraform" {
  ami = var.ami_id
  instance_type = var.instance_type == "dev" ? "t3.micro" : "t3.medium"
  vpc_security_group_ids = [ aws_security_group.allow-all.id ]
  tags = var.ec2
  }

