terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
    google = {
      source  = "hashicorp/google"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region                  = "ap-south-1"
  access_key              = var.AWS_ACCESS_KEY_ID
  secret_key              = var.AWS_SECRET_ACCESS_KEY
}

provider "google" {
  credentials = file(var.GOOGLE_CREDENTIALS_JSON)
  project     = var.GOOGLE_PROJECT
  region      = var.GOOGLE_REGION
}
