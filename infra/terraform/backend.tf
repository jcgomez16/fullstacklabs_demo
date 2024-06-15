terraform {
  backend "s3" {
    bucket = "labs-cgomez-terraform-state-bucket"
    key = "env/terraform.tfstate"
    region = "us-west-2"
    dynamodb_table = "terraform-state-lock"
    encrypt = true
  }

  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.27.0"
    }
  }
}