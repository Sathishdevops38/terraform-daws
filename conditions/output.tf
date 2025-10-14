output "terraform_private_ip" {
  value = aws_instance.terraform.private_ip
}

output "terraform_public_ip"{
    value = aws_instance.terraform.public_ip
}

output "terraform_dns_name" {
  value = aws_instance.terraform.public_dns
}