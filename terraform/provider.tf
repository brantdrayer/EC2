provider "aws" {
  region  = "us-east-2"
}

terraform {
  backend "s3" {
    bucket         = "brant-terraform"
    key            = "dev/terraform.tfstate"
    region         = "us-east-2"
    dynamodb_table = "terraform"
    encrypt        = true
  }
}
