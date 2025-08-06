terraform {
  backend "s3" {
    bucket = "terrafombackend"
    key    = "terrafrom.tfstate"
    region = "us-east-1"
  }
}
