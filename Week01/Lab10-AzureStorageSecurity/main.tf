# =====================================================================
# DATA SOURCES: Fetch Existing Infrastructure
# =====================================================================
data "azurerm_resource_group" "rg" {
  name = var.resource_group_name
}

data "azurerm_storage_account" "storage" {
  name                = var.storage_account_name
  resource_group_name = data.azurerm_resource_group.rg.name
}

# =====================================================================
# SECURITY CONTROL 1: Network Firewall Rules
# =====================================================================
resource "azurerm_storage_account_network_rules" "firewall" {
  storage_account_id = data.azurerm_storage_account.storage.id

  # "Deny" blocks all public traffic except listed IPs
  default_action             = "Deny" 
  bypass                     = ["AzureServices"]
  ip_rules                   = var.allowed_ip_addresses
}

# =====================================================================
# SECURITY CONTROL 2: Generate Time-Bound Service SAS Token
# =====================================================================
data "azurerm_storage_account_sas" "secure_sas" {
  connection_string = data.azurerm_storage_account.storage.primary_connection_string
  https_only        = true
  signed_version    = "2022-11-02"

  resource_types {
    service   = true
    container = true
    object    = true
  }

  services {
    blob  = true
    queue = false
    table = false
    file  = false
  }

  start  = "2026-08-05T00:00:00Z" # Current date
  expiry = "2026-08-06T00:00:00Z" # Valid for 24 hours

  permissions {
    read    = true
    write   = false
    delete  = false
    list    = true
    add     = false
    create  = false
    update  = false
    process = false
    tag     = false
    filter  = false
  }
}

