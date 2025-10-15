data "aws_ami" "amazon_linux_2023" {
  most_recent = true
  owners      = ["amazon"] # The owner alias for official Amazon AMIs

  filter {
    name   = "name"
    values = ["al2023-ami-*-x86_64"] # Filter for AL2023 AMIs, adjust for arm64 if needed
  }

  filter {
    name   = "architecture"
    values = ["x86_64"] # Specify the desired architecture
  }
}
resource "aws_instance" "web_ec2" {
  ami = aws_ami.amazon_linux_2023.id
  instance_type = var.instance_type
  subnet_id = aws_subnet.robo_pub.id
  vpc_security_group_ids = [ aws_security_group.robo_sg_all.id ]
  tags = var.ec2_tags
}