# =====================================================================
# OUTPUTS
# =====================================================================
output "sas_token" {
  value     = data.azurerm_storage_account_sas.secure_sas.sas
  sensitive = true
}
