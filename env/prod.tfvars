environment = "prod"
location = "East US"
resource_group_name = "rg-prod"

# ACR Configuration
acr_name = "acrprod142"
acr_sku = "Standard"

# VNet Configuration
vnet_cidr = "10.0.0.0/16"
subnet_cidr = "10.0.1.0/24"

# AKS Configuration
node_size = "Standard_D2s_v3"
node_count = 3