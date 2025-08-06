provider "aws" {
  region = "us-east-1" # Change to your region
}

# 1. Create IAM Role
resource "aws_iam_role" "ec2_fullaccess_role" {
  name = "ec2-fullaccess-role"

  assume_role_policy = jsonencode({
    Version = "2012-10-17",
    Statement = [{
      Effect = "Allow",
      Principal = {
        Service = "ec2.amazonaws.com"
      },
      Action = "sts:AssumeRole"
    }]
  })
}

# 2. Attach AmazonEC2FullAccess Policy to the Role
resource "aws_iam_role_policy_attachment" "ec2_fullaccess_attach" {
  role       = aws_iam_role.ec2_fullaccess_role.name
  policy_arn = "arn:aws:iam::aws:policy/AmazonEC2FullAccess"
}

# 3. Create IAM Instance Profile
resource "aws_iam_instance_profile" "ec2_profile" {
  name = "ec2-fullaccess-profile"
  role = aws_iam_role.ec2_fullaccess_role.name
}

# 4. Launch EC2 instance with IAM Role attached
resource "aws_instance" "dev" {
  ami           = "ami-08a6efd148b1f7504" # Change to your region’s correct AMI
  instance_type = "t2.micro"
  iam_instance_profile = aws_iam_instance_profile.ec2_profile.name

  tags = {
    Name = "e2test"
  }
}
