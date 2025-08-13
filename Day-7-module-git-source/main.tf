module "dev" {
  source = "github.com/Mohite2017/Terraform-9AM-Practice/Day-7-modules-source"
  ami-id = "ami-08a6efd148b1f7504"
  instance-type = "t2.micro"
  subnet_id = "subnet-0c8286a3ece0b069d"
  name = "test"
}