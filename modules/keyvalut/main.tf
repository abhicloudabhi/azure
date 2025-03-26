resource "azurerm_key_vault" "kv" {
  name                = "kv-${var.environment}-142"
  location            = var.location
  resource_group_name = var.resource_group_name
  tenant_id           = var.tenant_id
  sku_name            = "standard"
}