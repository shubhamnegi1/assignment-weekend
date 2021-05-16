provider "aws" {
  version = "~> 2.0"
  region     = "eu-west-1"
}

remote_state {
  backend = "s3"
  config = {
    encrypt        = true
    bucket         = "s3-backend-state"
    region         = "eu-west-1"
    dynamodb_table = "terraform-locks"
  }
}