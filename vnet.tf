module "vnet1" {
  source  = "Azure/vnet/azurerm"
  version = "4.1.0"

  resource_group_name = azurerm_resource_group.resource_group["networking"].name
  vnet_location       = var.location
  use_for_each        = true
  vnet_name           = "vnet-${var.project_name}-${var.vnet1.name}-${var.env}-${var.location}"
  address_space       = [var.vnet1.cidr]
  subnet_names        = var.vnet1.subnet_names
  subnet_prefixes     = var.vnet1.subnet_prefixes
}

module "vnet2" {
  source  = "Azure/vnet/azurerm"
  version = "4.1.0"

  resource_group_name = azurerm_resource_group.resource_group["networking"].name
  vnet_location       = var.location
  use_for_each        = true
  vnet_name           = "vnet-${var.project_name}-${var.vnet2.name}-${var.env}-${var.location}"
  address_space       = [var.vnet2.cidr]
  subnet_names        = var.vnet2.subnet_names
  subnet_prefixes     = var.vnet2.subnet_prefixes
}

resource "azurerm_virtual_network_peering" "vnet1" {
  name                      = "peer1to2"
  resource_group_name       = azurerm_resource_group.resource_group["networking"].name
  virtual_network_name      = module.vnet1.vnet_name
  remote_virtual_network_id = module.vnet2.vnet_id
}

resource "azurerm_virtual_network_peering" "vnet2" {
  name                      = "peer2to1"
  resource_group_name       = azurerm_resource_group.resource_group["networking"].name
  virtual_network_name      = module.vnet2.vnet_name
  remote_virtual_network_id = module.vnet1.vnet_id
}