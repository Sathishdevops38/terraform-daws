resource "aws_instance" "terraform" {
  ami = "var.ami_id"
  instance_type = "var.instance_type"
  security_groups =  "var.sg_id" 
  subnet_id = ["var.subnet_id"]
  tags = {
    Name = "terraform"
    Terraform = true
  }
}