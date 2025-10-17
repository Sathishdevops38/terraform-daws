variable "common_tags" {
  default = {
    project = "roboshop"
    Terraform = true
}
}

variable "cidr_block" {
  default =  "10.0.0.0/16"
}

variable "instance_tenancy" {
  default = "default"
}

variable "internet_cidr" {
  default = "0.0.0.0/0"
}

variable "vpc_tags" {
  default = {
    Name= "robo-vpc"
  }
}

variable "availability_zone_pub" {
  default = "us-west-2a"
}

variable "availability_zone_pri" {
  default = "us-west-2b"
}
variable "robo_pub_cidr" {
  default = "10.0.1.0/24"
}

variable "robo_pri_cidr" {
  default = "10.0.2.0/24"
}

variable "sub_tags_pub" {
  default = {
    Name= "robo-pub"
  }
}

variable "sub_tags_pri" {
  default = {
    Name= "robo-pri"
  }
}

variable "igw_tags" {
  default = {
    Name= "robo-igw"
  }
}

variable "robo_pub_rt_tags" {
  default = {
    Name= "robo-pub-rt"
  }
}

variable "instance_type" {
  default = "t3.micro"
}

variable "ec2_tags" {
  default = {
    Name= "robo-web-ec2"
  }
}

variable "cidr" {
    type = list
    default = ["0.0.0.0/0"]
}

variable "ingress_from_port" {
    default = 0
}

variable "ingress_to_port" {
    default = 0
}

variable "egress_from_port" {
    default = 0
}

variable "egress_to_port" {
    default = 0
}

variable "protocol" {
    type = string
    default = "-1"
}

variable "sg_tags" {
  type = map
  default = {
    Name = "allow_all"
  }
}

variable "sg_name" {
  default = "robo_sg_all"
}


variable "zone_id" {
  default = "Z05700624Q21KABEP00F"
}

variable "domain_name" {
  default = "daws38sat.fun"
}