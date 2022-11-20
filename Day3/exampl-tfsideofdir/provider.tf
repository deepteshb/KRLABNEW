terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "4.39.0"
    }

    docker = {
      source = "kreuzwerker/docker"
      version = "2.23.0"
    }
  }
  
}

provider "aws" {
  # Configuration options
}


provider "azurerm" {
  # Configuration options
}

provider "docker" {
  # Configuration options
}