module "dev" {
    source = "../Day-7-modules-source"
    ami-id = "ami-08a6efd148b1f7504"
    instance-type = "t2.medium"
    subnet_id = "subnet-0c8286a3ece0b069d"
    bucket_name = "fdnksnfskjns"
    name = "test"

}
