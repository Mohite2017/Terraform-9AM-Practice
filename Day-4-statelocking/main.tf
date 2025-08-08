resource "aws_instance" "dev" {
  ami           = "ami-08a6efd148b1f7504" # Change to your region’s correct AMI
  instance_type = "t2.micro"
  tags = {
    Name = "e2test"
  }
}
resource "aws_vpc" "name" {
  
cidr_block = "10.0.0.0/16"
  
  tags = {
    Name = "devpc"
  }
}