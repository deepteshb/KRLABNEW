terraform {
    backend "s3" {
    bucket = "mybucket"
    key    = "prod.tf.state"
    region = "us-east-1"
    workspaces {
      name = "dev"
    }
  }

  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "4.41.0"
    }
  }
}

provider "aws" {
  # Configuration options
    #access_key = "my-access-key"
    #secret_key = "my-secret-key"
    region = "us-east-1"

}