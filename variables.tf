variable "project_name" {
  description = "Name prefix for the EC2 instances"
  type        = string
}

variable "aws_region" {
  description = "AWS region to deploy the instance"
  type        = string
}

variable "instance_count" {
  description = "Number of EC2 instances to create"
  type        = number
  default     = 1
}

variable "instance_type" {
  description = "Type of EC2 instance"
  type        = string
  default     = "t2.micro"
}

variable "ami_id" {
  description = "AMI ID to use for EC2 instance"
  type        = string
}

