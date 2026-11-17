resource "aws_instance" "var_instance" {
  count         = var.instance_count
  ami           = "ami-083cf4acad89c8905"
  instance_type = var.instance_type
  subnet_id     = "subnet-0cb7d8c2c4b5b5af4"
  monitoring    = var.monitoring

  tags = merge(var.instance_tags, {
    Name = "${var.instance_details.instance_name}-${count.index + 1}"
  })
}