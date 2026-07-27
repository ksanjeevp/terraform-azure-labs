output "storage_account_name" {
  value = data.azurerm_storage_account.storage.name
}

output "queue_name" {
  value = azurerm_storage_queue.queue.name
}