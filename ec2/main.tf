resource "aws_instance" "ec2_instance" {
     ami = var.ami
     count = 1
     instance_type = "t2.micro"
     key_name = "windows"
} 
