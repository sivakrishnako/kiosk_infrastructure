terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.23.0"
    }
    tls = {
      source = "hashicorp/tls"
      version = "~> 4.0.0"
    }
  }
}
