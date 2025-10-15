resource "aws_instance" "terraform" {
  for_each = toset(var.instances)
  ami = var.ami_id
  instance_type = var.instance_type
  vpc_security_group_ids = [ aws_security_group.allow-all.id ]
  tags ={
    Name = each.value
  }
   
}

