resource "aws_route53_record" "instances" {
  zone_id = var.zone_id
  name    = "${aws_instance.web_ec2.tags_all.Name}.${var.domain_name}" # mongodb.daws86s.fun
  type    = "A"
  ttl     = 1
  records = [aws_instance.web_ec2.private_ip]
  allow_overwrite = true
}