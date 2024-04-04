terraform {
  backend "azurerm" {
    resource_group_name  = "akhil07"
    storage_account_name = "akhil07storage"
    container_name       = "tfstate07"
    key                  = "terraform.tfstate"
  }
}
