provider "aws" {
  region = "ap-south-1"  
}

resource "aws_vpc" "my_vpc" {
  cidr_block = "10.0.0.0/16"
  
  tags = {
    Name = "MyCustomVPC"
  }
}

output "vpc_id" {
  value = aws_vpc.my_vpc.id
}
