terraform {
  backend "s3" {
    bucket         = "terraform-statefile-infra"
    key            = "infrastatefile.tfstate"
    region         = "us-east-2"
    dynamodb_table = "terraform_state" // Optional for state locking
  }
}

