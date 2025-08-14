variable "ami-id" {
    description = "inerting the ami values to main.tf"
    type = string
    default = ""
  
}
variable "instance_type" {
    type = string
    default = ""
  
}
variable "name" {
    type = string
    default = ""
  
} 
variable "subnet_id" {
    description = "subnet id for the instance"
    type = string
    default = ""
  
}
variable "bucket_name" {
    description = "S3 bucket name"
    type = string
    default = ""
}
