terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "2.94.0"
    }
  }
}
provider "azurerm" {
  features {
    
  }
}


resource "azurerm_network_security_group" "nsg" {
  for_each            = var.nsgs  
  name                = "${each.value.name}"
  location            = var.location
  resource_group_name = var.rgname 
}
