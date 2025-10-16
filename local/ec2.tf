resource "aws_instance" "web_ec2" {
  ami = data.aws_ami.al2023
  instance_type = local.instance_type
  vpc_security_group_ids = [ aws_security_group.robo_sg_allow_all ]
  tags = local.common_tags
}