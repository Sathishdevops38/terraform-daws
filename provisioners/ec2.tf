data "aws_ami" "amazon_linux_2023" {
  most_recent = true
  owners      = ["self"] # The owner alias for official Amazon AMIs

  filter {
    name   = "name"
    values = ["devops-practice-ami"] # Filter for AL2023 AMIs, adjust for arm64 if needed
  }

  filter {
    name   = "architecture"
    values = ["x86_64"] # Specify the desired architecture
  }
  
  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
}
resource "aws_instance" "web_ec2" {
  ami = data.aws_ami.amazon_linux_2023.id
  instance_type = var.instance_type
  subnet_id = aws_subnet.robo_pub.id
  associate_public_ip_address = true
  vpc_security_group_ids = [ aws_security_group.robo_sg_all.id ]
  tags = merge(
    local.resource_tags,
    var.ec2_tags,
    {
      "Environment" = local.env # Creates a new key-value pair for the environment
    }
  )
  # user_data = <<-EOF
  #             #!/bin/bash
  #             echo "Hello from user data!" | sudo tee /tmp/user_data_output.log
  #             # Add more commands here, e.g., install packages, configure services
  #             sudo yum update -y
  #             sudo yum install -y nginx
  #             sudo systemctl start nginx
  #             sudo systemctl enable nginx
  #             EOF
  provisioner "local-exec" {
    command = "echo instance created"
  }
  provisioner "remote-exec" {
    inline = [ 
      "sudo dnf install -y nginx",
      "sudo systemctl start nginx",
      "sudo systemctl enable nginx"
     ]
  }
  connection {
    type = "ssh"
    user = "ec2-user"
    password = "DevOps321"
    host = self.public_ip
  }
  provisioner "local-exec" {
    command = "systemctl disable nginx"
    when = destroy
  }
  
}

