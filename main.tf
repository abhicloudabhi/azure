module "acr" {
  source              = "./modules/acr"
  acr_name            = var.acr_name 
  environment         = var.environment
  resource_group_name = var.resource_group_name
  location            = var.location
  acr_sku             = var.acr_sku
}

module "keyvault" {
  source              = "./modules/keyvalut"
  environment         = var.environment
  resource_group_name = var.resource_group_name
  location            = var.location
  tenant_id           = var.tenant_id
}

module "vnet" {
  source              = "./modules/vnet"
  environment         = var.environment
  resource_group_name = var.resource_group_name
  location            = var.location
  vnet_cidr           = var.vnet_cidr
  subnet_cidr         = var.subnet_cidr
}

module "aks" {
  source              = "./modules/aks"
  environment         = var.environment
  resource_group_name = var.resource_group_name
  location            = var.location
  node_size           = var.node_size
  node_count          = var.node_count
  subnet_id           = module.vnet.subnet_id
}