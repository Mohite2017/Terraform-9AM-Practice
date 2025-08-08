terraform {
  backend "s3" {
    bucket = "terrabucketname"
    key    = "Day-4/terraform.tfstate"
    region = "us-east-1"
  }
}
