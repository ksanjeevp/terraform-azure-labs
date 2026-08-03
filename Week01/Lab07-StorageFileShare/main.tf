data "azurerm_resource_group" "rg" {
  name = var.resource_group_name
}

data "azurerm_storage_account" "storage" {
  name                = var.storage_account_name
  resource_group_name = data.azurerm_resource_group.rg.name
}

resource "azurerm_storage_share" "share" {
  name                 = var.share_name
  storage_account_name = data.azurerm_storage_account.storage.name
  
quota=10
}
