data "aws_ami" "ubuntu" {
  most_recent = true
  owners      = ["099720109477"]

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
  }
}

data "aws_subnet" "selected" {
  filter {
    name   = "subnet-id"
    values = ["subnet-0cb7d8c2c4b5b5af4"]
  }
}

moved {
  from = aws_instance.tfmyec3
  to   = aws_instance.tfmyec3[0]
}

resource "aws_instance" "tfmyec3" {
  count         = 3
  ami           = data.aws_ami.ubuntu.id
  instance_type = var.aws_instance_type
  subnet_id     = data.aws_subnet.selected.id

  tags = {
    Name = "tfmyec3-${count.index + 1}"
  }
}
