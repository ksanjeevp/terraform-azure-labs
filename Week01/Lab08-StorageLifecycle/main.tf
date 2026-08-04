data "azurerm_resource_group" "rg" {
  name = var.resource_group_name
}

data "azurerm_storage_account" "storage" {
  name                = var.storage_account_name
  resource_group_name = data.azurerm_resource_group.rg.name
}

resource "azurerm_storage_management_policy" "lifecycle_policy" {
  storage_account_id = data.azurerm_storage_account.storage.id
rule {
    name    = "LifecycleRule"
    enabled = true
filters {
   blob_types = ["blockBlob"]
}
actions {
base_blob {
        tier_to_cool_after_days_since_modification_greater_than = 30
      }

}
  }

}

