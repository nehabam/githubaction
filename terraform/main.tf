resource "azurerm_resource_group" "example" {
  name     = ${{env.name}}
  location = "West Europe"
  tag = "prod"
}



# Configure the Azure provider
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0.2"
    }
  }

  required_version = ">= 1.1.0"
}

provider "azurerm" {
  features {}
}

variable "name" {
  default = "myTFResourceesGroup"
}

