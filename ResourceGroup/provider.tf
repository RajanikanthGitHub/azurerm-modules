# We strongly recommend using the required_providers block to set the
# Azure Provider source and version being used
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=2.67.0"
    }
  }
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
  tenant_id       = "1f4beacd-b7aa-49b2-aaa1-b8525cb257e0"
  subscription_id = "e5c53a81-f5c9-4864-b65a-d6fc347b4e2d"
  client_id       = "53d2cc47-e67b-4dec-88d0-63c5bca5cef0"
  client_secret   = "vm3yAZWllKjN7~Z3gklQ6XXE38Zhjqwq2-"
  features {}
}

/*
    tenant_id       = "1f4beacd-b7aa-49b2-aaa1-b8525cb257e0"
    subscription_id = "e5c53a81-f5c9-4864-b65a-d6fc347b4e2d"
    client_id       = "53d2cc47-e67b-4dec-88d0-63c5bca5cef0"
    client_secret   = "vm3yAZWllKjN7~Z3gklQ6XXE38Zhjqwq2-"
*/