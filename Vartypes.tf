
variable "instance_type" {
  type    = string
  default = "t3.micro"
}

variable "instance_count" {
  type    = number
  default = 2
}
variable "aws_regions" {
  type    = list(string)
  default = ["ap-south-1", "us-east-1"]
}

variable "instance_tags" {
  type = map(string)
  default = {
    Name        = "var_instance"
    Environment = "dev"
    owner       = "hymap"
  }
}
variable "monitoring" {
  type    = bool
  default = false
}

variable "instance_details" {
  type = object({
    instance_name  = string
    instance_type  = string
    instance_count = number
    monitoring     = bool
  })
  default = {
    instance_name  = "var_instance"
    instance_type  = "t3.micro"
    instance_count = 2
    monitoring     = false
  }
}