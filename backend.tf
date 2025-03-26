terraform {
  backend "azurerm" {
    resource_group_name  = "deepak-rg"
    storage_account_name = "deepakstorage4578"
    container_name       = "terraformstorage"
    key                  = "./dev/terraform.tfstate"
    tenant_id            = "var.tenant_id"
  }
}