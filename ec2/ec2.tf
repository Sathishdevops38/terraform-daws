resource "aws_instance" "terraform" {
  ami = "ami-0caa91d6b7bee0ed0"
  instance_type = "t3.micro"
  vpc_security_group_ids = [ aws_security_group.allow-all.id ]
  tags = {
    Name = "terraform"
    Terraform = true
  }
}

