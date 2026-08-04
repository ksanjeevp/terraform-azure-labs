output "storage_account_name" {
  value = data.azurerm_storage_account.storage.name
}

output "lifecycle_policy" {
  value = "Configured"
}