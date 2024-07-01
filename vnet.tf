module "vnet" {
  source  = "Azure/vnet/azurerm"
  version = "4.1.0"

  resource_group_name = azurerm_resource_group.resource_group["networking"].name
  vnet_location       = var.location
  use_for_each        = true
}