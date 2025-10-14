resource "aws_instance" "terraform" {
  ami = "ami-04c08fd8aa14af291"
  instance_type = "t3.micro"
  security_groups = [aws_security_group.allow-all.id]
  tags = {
    Name = "2186585_terraform"
    Terraform = true
  }
}