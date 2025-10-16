variable "sg_name" {
  default = "robo_sg_allow_all"
}

variable "from_port" {
  default = "0"
}

variable "to_port" {
  default = "0"
}

variable "protocol" {
  default = "-1"
}

variable "cidr_blocks" {
  default = "0.0.0.0/0"
}

variable "projects" {
  default = {
    Name = "roboshop-project"
    Terrafrom = true
    Env = "dev" 
  }
}
variable "ec2_tags" {
  default = {
    Name = "web_ec2"
  }
}