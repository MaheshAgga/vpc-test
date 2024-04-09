terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.42.0"
    }
  }
 
    backend "s3" {
      bucket = "daws76s-roboshopin-remote-state"
      key = "vpc-test"
      region = "us-east-1"
      dynamodb_table = "daws76s-locking"
    
 }
}

provider "aws" {
  # Configuration options
  region = "us-east-1"
}