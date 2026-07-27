output "storage_account_name" {
  value = data.azurerm_storage_account.storage.name
}

output "table_name" {
  value = azurerm_storage_table.table.name
}