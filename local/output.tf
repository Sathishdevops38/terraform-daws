output "instances_ouput" {
  value = aws_instance.web_ec2
}
output "instances_private_ip" {
  value = aws_instance.web_ec2.private_ip
}