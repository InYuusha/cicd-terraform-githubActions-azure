

terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.0.0"
    }
  }
}

provider "azurerm" {
  features {}
  subscription_id = var.SUBSCRIPTION_ID
  tenant_id      = var.TENANT_ID
}

resource "azurerm_container_group" "container_group" {
  name                = "mycontainergroup"
  location           = var.LOCATION
  resource_group_name = "demo"
  ip_address_type     = "Public"
  os_type             = "Linux"

  container {
    name   = "mycontainer"
    image  = var.CONTAINER_IMAGE
    cpu    = "1"
    memory = "1.5"

    ports {
      port     =  80
      protocol = "TCP" 
    }
  }
}