# Lab 02 - Azure Storage Account using Terraform

## Objective

Create an Azure Storage Account using Terraform while reusing an existing Azure Resource Group created in Lab01.

---

## Skills Learned

- Terraform Data Sources
- Azure Storage Account
- Terraform Variables
- Outputs
- AzureRM Provider
- Infrastructure as Code

---

## Architecture

Terraform
        │
        ▼
Existing Resource Group
        │
        ▼
Azure Storage Account

---

## Files

| File | Purpose |
|------|----------|
| provider.tf | Azure Provider |
| versions.tf | Terraform & Provider versions |
| variables.tf | Input variables |
| terraform.tfvars.example | Sample variables |
| main.tf | Storage Account creation |
| outputs.tf | Outputs |
| README.md | Documentation |

---

## Terraform Commands

terraform init

terraform validate

terraform plan

terraform apply

terraform destroy

---

## Outputs

- Resource Group Name
- Storage Account Name
- Primary Blob Endpoint

---

## Screenshots

- terraform init
- terraform validate
- terraform plan
- terraform apply
- Azure Portal Storage Account

---

## Key Learning

Unlike Lab01, the Resource Group is **not created**.

Terraform reads it using:

```hcl
data "azurerm_resource_group" "rg" {}
```

This is called a **Data Source**.

The Storage Account is then created inside the existing Resource Group.

---

## Result

Successfully deployed:

- Azure Storage Account
- HTTPS Only Enabled
- TLS 1.2
- Standard LRS Redundancy
