############################################
# Network Variables
############################################
variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  type        = string
  default     = "10.1.0.0/16"
}

variable "subnet1_cidr" {
  description = "CIDR block for the first public subnet"
  type        = string
  default     = "10.1.1.0/24"
}

variable "subnet2_cidr" {
  description = "CIDR block for the second public subnet"
  type        = string
  default     = "10.1.2.0/24"
}

############################################
# Name Tags
############################################
variable "vpc_name" {
  description = "Name tag for the VPC"
  type        = string
  default     = "dev-vpc"
}

variable "subnet1_name" {
  description = "Name tag for the first subnet"
  type        = string
  default     = "dev-subnet-1"
}

variable "subnet2_name" {
  description = "Name tag for the second subnet"
  type        = string
  default     = "dev-subnet-2"
}

variable "internet_gateway_name" {
  description = "Name tag for the Internet Gateway"
  type        = string
  default     = "dev-igw"
}

variable "route_table_name" {
  description = "Name tag for the Public Route Table"
  type        = string
  default     = "dev-public-rt"
}

variable "private_route_table_name" {
  description = "Name tag for the Private Route Table"
  type        = string
  default     = "dev-private-rt"
}

variable "security_group_name" {
  description = "Name tag for the Security Group"
  type        = string
  default     = "dev-sg"
}

############################################
# EC2 Instance Variables
############################################
variable "instance_ami" {
  description = "AMI ID for the EC2 instance"
  type        = string
  default     = "ami-0d54604676873b4ec"
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t2.micro"
}
