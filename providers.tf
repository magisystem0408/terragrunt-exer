terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~>3.0"
    }
  }
  backend "s3" {
  }
}

provider "aws" {
  profile = "stadleTerraform"
  region  = "ap-northeast-1"
}
