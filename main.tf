provider "aws" {
  region = "us-west-2"
}

# 🔍 Data source: Get the latest Amazon Linux 2 AMI
data "aws_ami" "amazon_linux" {
  most_recent = true
  owners      = ["amazon"]

  filter {
    name   = "name"
    values = ["amzn2-ami-hvm-*-x86_64-gp2"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
}

# 🚀 Launch an EC2 instance using the AMI from the data source
resource "aws_instance" "example" {
  ami           = data.aws_ami.amazon_linux.id
  instance_type = "t2.micro"

  tags = {
    Name = "demo-instance"
  }
}

# 🧾 Output the AMI ID for reference
output "ami_id_used" {
  value = data.aws_ami.amazon_linux.id
}

