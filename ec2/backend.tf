terraform {
  backend "s3" {
    bucket         = "infra1-terraform-state-backend"
    key            = "terraform.tfstate"
    region         = "us-east-2"
    dynamodb_table = "terraform_state"
  }
}
