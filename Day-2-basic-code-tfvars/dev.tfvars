ami_id = "ami-085ad6ae776d8f09c"
type ="t2.micro"
key = "ec2test"

#note: if the name is defualt terraform.tfvars we can run regular process no need to mention 
#Note: if user can give custom .tfvars name like example dev.tfvars process follow below 
# terraform plan -var-file="dev.tfvars"
# terraform apply -var-file="dev.tfvars"