output "instance_ids" {
  description = "The IDs of the created EC2 instances"
  value       = aws_instance.ec2_example[*].id
}

output "instance_names" {
  description = "The Name tags of the EC2 instances"
  value       = [for i in aws_instance.ec2_example : i.tags["Name"]]
}

