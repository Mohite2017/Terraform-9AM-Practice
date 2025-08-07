terraform {
  backend "s3" {
    bucket = "terrafombackend"
    key    = "terraform.tfstate"
    region = "us-east-1"
  }
}
