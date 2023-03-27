
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.0.0"
    }
  }
  backend "azurerm" {
    client_id            = var.client_id
    client_secret        = var.client_secret
    subscription_id      = var.subscription_id
    tenant_id    = var.TENANT_ID
    resource_group_name  =    "demo"
    storage_account_name     = "statestore"
    container_name           = "mycontainer"
    key                      = "terraform.tfstate"
  }
}

provider "azurerm" {
  features {}
  client_id = var.CLIENT_ID 
  client_secret = var.CLIENT_SECRET
  subscription_id = var.SUBSCRIPTION_ID
  tenant_id    = var.TENANT_ID
}

resource "azurerm_container_group" "container_group" {
  name                = "mycontainergroup"
  location           = var.LOCATION
  resource_group_name = "demo"
  ip_address_type     = "Public"
  os_type             = "Linux"
  dns_name_label = "mycontainergroup"

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
  
  image_registry_credential {
        server = var.IMAGE_SERVER
        username = var.ACR_USERNAME
        password = var.ACR_PASSWORD

    }
}