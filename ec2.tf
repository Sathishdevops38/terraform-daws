resource "aws_instance" "terraform" {
  ami = "ami-04c08fd8aa14af291"
  instance_type = "t3.medium"
  security_groups = [aws_security_group.allow-all.id]
  subnet_id = "subnet-06dc23984fd523dd0"
  tags = {
    Name = "2186585_terraform"
    Terraform = true
  }
}