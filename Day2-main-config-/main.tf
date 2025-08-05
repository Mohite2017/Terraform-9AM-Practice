
variable "type" {
  description = "EC2 instance type"
  type        = string
  default     = "t2.medium"
}

resource "aws_instance" "dev" {
  ami = var.ami-id
  instance_type = var.type
  tags = {
    Name = "e2test"
  }
}
resource "aws_instance" "test" {
  ami = var.ami-id
  instance_type = var.type
}