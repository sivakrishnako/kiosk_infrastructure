terraform {
  backend "s3" {
    bucket = "kiosk-terraform-dev-1"
    key    = "terraform/terraform.tfstate"
    region = "us-east-2"
  }
}
