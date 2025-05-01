# backend config in main.tf (or backend.tf)
terraform {
  backend "s3" {
    bucket         = "imagereks"
    key            = "home/ubuntu/ec2/terraform.tfstate"
    region         = "us-east-1"
  #  use_lockfile = "your-lock-table"     # Optional but recommended
    encrypt        =  true
  }
}

