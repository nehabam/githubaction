resource "azurerm_resource_group" "example" {
  name     = "${var.name}-${var.env}"
  location = "West Europe"
 
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
  default = "myTFResourcGroup"
}

variable "env" {

}


