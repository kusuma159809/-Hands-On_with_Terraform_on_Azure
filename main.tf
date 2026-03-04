terraform {
  cloud {

    organization = "kusumahansdon"

    workspaces {
      name = "Hands-On_With_Terraform_On_Azure"
    }
  }
}
provider "azurerm" {
  features {}
  skip_provider_registration = true
}
resource "azurerm_resource_group" "rg" {
  name     = "813-2c54ca08-hands-on-with-terraform-on-azure"
  location = "South Central US"
}
module "kusumastorage" {
  source               = "app.terraform.io/kusumahansdon/kusumastorage/storage"
  version              = "1.0.0"
  location             = azurerm_resource_group.rg.location
  resource_group_name  = azurerm_resource_group.rg.name
  storage_account_name = "kusumakumarigavidi1509ram89856778988237"
  # insert required variables here
}

