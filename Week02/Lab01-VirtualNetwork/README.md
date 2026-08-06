# Lab 01: Azure Virtual Network (VNet) via Terraform

This laboratory establishes the core isolated networking environment in Azure that will host all subsequent compute, security, and load-balancing services for Week 02.

## 🌐 Network Specifications
*   **Resource Group:** `rg-week02-networking-prod`  # (your-rg-name )
*   **Virtual Network Name:** `vnet-core-prod`
*   **Primary Address Space:** `10.0.0.0/16` (65,536 private IPs available for sub-allocation)

## 🚀 Execution Steps

1. Navigate to this lab's directory:
   ```bash
   cd Week02/Lab01-VirtualNetwork
   ```

2. Initialize the AzureRM provider plugins:
   ```bash
   terraform init
   ```

3. Review the execution strategy:
   ```bash
   terraform plan
   ```

4. Deploy the virtual network:
   ```bash
   terraform apply -auto-approve
   ```

## 🔍 Verification
Run the following Azure CLI command to confirm your new private network boundary exists:
```bash
az network vnet show --resource-group rg-week02-networking-prod --name vnet-core-prod --output table
```
