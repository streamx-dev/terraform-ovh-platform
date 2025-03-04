terraform {
  required_version = ">= 1.8.1"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.46.0"
    }

    ovh = {
      source  = "ovh/ovh"
      version = "~> 1.4.0"
    }
  }
}