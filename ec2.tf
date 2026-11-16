resource "aws_instance" "tfmyec2" {
  ami           = "ami-083cf4acad89c8905"
  instance_type = "t3.micro"
  subnet_id     = "subnet-0cb7d8c2c4b5b5af4"

  tags = {
    Name = "tfmyec2"
  }

}