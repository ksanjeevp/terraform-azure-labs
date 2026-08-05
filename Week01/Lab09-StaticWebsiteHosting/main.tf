data "azurerm_resource_group" "rg" {
  name = var.resource_group_name
}

data "azurerm_storage_account" "storage" {
  name                = var.storage_account_name
  resource_group_name = data.azurerm_resource_group.rg.name
}


 
resource "azurerm_storage_account_static_website" "static_website" {
  storage_account_id = data.azurerm_storage_account.storage.id
  index_document     = "index.html"
  error_404_document = "404.html" # 
}