resource "aws_instance" "terraform" {
  ami = "ami-09c813fb71547fc4f"
  instance_type = "t3.medium"
  security_groups = [aws_security_group.allow-all.id]
  subnet_id = "subnet-06dc23984fd523dd0"
  tags = {
    Name = "terraform"
    Terraform = true
  }
}