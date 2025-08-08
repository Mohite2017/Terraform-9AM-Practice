terraform {
  backend "s3" {
    bucket = "terrabucketname"
    key    = "Day-4/terraform.tfstate"
    region = "us-east-1"
    use_lockfile = true #s3 supports this features but terraform version 1 > 1.10, latest version >= 1.10 
  dynamodb_table = "test"
  encrypt =true
  }
}
