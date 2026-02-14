terraform {
  backend "s3" {
    bucket         = "prasanna-terraform-state-123"
    key            = "dev/terraform.tfstate"
    region         = "ap-south-1"
    dynamodb_table = "terraform-lock-table"
    encrypt        = true
  }
}
