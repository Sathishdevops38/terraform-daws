output "instances_ouput" {
  value = aws_instance.web_ec2.tags_all.Name
}
output "public_ip" {
  value = aws_instance.web_ec2.public_ip
}

output "web_ec2_dns" {
  value = aws_route53_record.instances.fqdn
}