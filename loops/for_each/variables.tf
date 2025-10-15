variable "ami_id" {
  default = "ami-0caa91d6b7bee0ed0"
}
variable "instance_type" {
  default = "t3.micro"
}

variable "sg_name" {
    type = string
    default = "allow-all"
    # optional to inform what is this variable about
    description = "Security Group Name to attach to EC2 instance"
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
    Terraform = true
    Env= "Dev"
    project= "Devops"
  }
}

variable "instances" {
  type    = list(string)
  default = ["mongodb", "redis"] 
}

variable "zone_id" {
  default = "Z05700624Q21KABEP00F"
}

variable "domain_name" {
  default = "daws38sat.fun"
}