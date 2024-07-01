resource "azurerm_resource_group" "resource_group" {
  for_each = var.resource_groups
  name     = "rg-${var.project_name}-${each.value}-${var.env}-${var.location}"
  location = var.location
}