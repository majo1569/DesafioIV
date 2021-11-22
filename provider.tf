provider "aws" {
   region  = us-east-2 //var.region
}

terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
    random = {
      source = "hashicorp/random"
    }
  }


  backend "remote" {
   organization = "_organization_"

    workspaces {
      name = "_workspace_"
    }
  }
}
