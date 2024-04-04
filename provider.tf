provider "azurerm" {
  features {}
  skip_provider_registration = true
  subscription_id = "a1959dd9-b11d-4f5c-aa2e-e85c59dbe727" 
  tenant_id       = "61b2db07-fac4-4636-8c07-ab264dade2fa"
}

terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.62.1"
    }
  }
}
