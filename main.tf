provider "aws" {
  region = var.aws_region
}

resource "aws_instance" "ec2_example" {
  count         = var.instance_count
  ami           = var.ami_id
  instance_type = var.instance_type

  tags = {
    Name = "${var.project_name}-instance-${count.index + 1}"
  }
}

