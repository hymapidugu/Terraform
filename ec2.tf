variable "aws_instance_type" {
  type = string
}

resource "aws_instance" "tfmyec2" {
  ami           = "ami-083cf4acad89c8905"
  instance_type = var.aws_instance_type
  subnet_id     = "subnet-0cb7d8c2c4b5b5af4"

  tags = {
    Name = "tfmyec2"
  }

}