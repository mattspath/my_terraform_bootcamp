terraform {
  backend "s3" {
    bucket  = "mattspath-tf-state" 
    key     = "terraform_bootcamp/terraform.tfstate"
    region  = "us-west-2"
    profile = "terraform_bootcamp"
  }
  
  
  
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.5"
    } 
    proxmox = {
      source = "Telmate/proxmox"
      version = "3.0.1-rc4"
    }    
  }
  required_version = "~> 1.9.8"
}

# Configure the AWS Provider
provider "aws" {
  region  = "us-west-2"
  profile = "terraform_bootcamp"
}

provider "proxmox" {
  pm_api_url = "https://172.16.1.10:8006/api2/json"
}

