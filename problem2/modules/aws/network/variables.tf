variable "vpc_cidr_block" {
}
variable "tags" {
  type = map(string)
}

variable enable_dns_support {
}
variable enable_dns_hostnames {
}

variable "aws_availability_zone_public"{
  default = "eu-west-1a"
}

variable "aws_availability_zone_private"{
  default = "eu-west-1b"
}

variable "subnet_cidr_blocks" {
  type    = list(string)
  default = ["none", "none"]
}

