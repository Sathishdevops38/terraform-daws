variable "ami_id" {
  type = string
  default = "ami-0b7ba67ca92bbe799"
}

variable "instance_type" {
  type = string
  default = "t3.micro"
}

variable "vpc_id" {
  type = string
  default = "vpc-0e5b821f84ca6c619"
}

variable "subnet_id" {
  type = string
  default = "subnet-06dc23984fd523dd0"
}

variable "sg" {
  type = string
  default = "sg-042fe005f1e4d6ce9"
}