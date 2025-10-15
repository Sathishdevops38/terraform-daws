output "instances_ouput" {
  value = aws_instance.terraform
}
output "instances_private_ip" {
  value = aws_instance.terraform.*.private_ip
}