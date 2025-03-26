terraform {
  backend "azurerm" {
    resource_group_name  = "abhishek-rg"
    storage_account_name = "cloudstorage258"
    container_name       = "terraformfile232"
    key                  = "./dev/terraform.tfstate"
    tenant_id            = "var.tenant_id"
  }
}
