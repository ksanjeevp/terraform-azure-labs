# Terraform Lab 04 - Upload Blob to Azure Storage

## Overview

This lab demonstrates how to upload a local file to an existing Azure Storage Container using Terraform.

Instead of creating all Azure resources from scratch, this lab reuses infrastructure created in previous labs by referencing existing Azure resources with Terraform data sources. A Block Blob is then uploaded into the existing Storage Container.

---

## Objectives

- Reuse an existing Azure Resource Group
- Reuse an existing Azure Storage Account
- Reuse an existing Azure Storage Container
- Upload a local file as an Azure Storage Blob
- Verify the deployment in the Azure Portal

---

## Technologies Used

- Terraform
- Microsoft Azure
- Azure Storage Account
- Azure Blob Storage
- Azure Resource Manager (ARM)

---

## Terraform Resources

### Data Sources

- azurerm_resource_group
- azurerm_storage_account
- azurerm_storage_container

### Resources

- azurerm_storage_blob

---

## Project Structure

```
Lab04-BlobUpload/
│
├── Architecture/
├── Screenshots/
├── sample.txt
├── main.tf
├── provider.tf
├── variables.tf
├── versions.tf
├── outputs.tf
├── terraform.tfvars.example
└── README.md
```

---

## Architecture

```
Azure Resource Group
        │
        ▼
Azure Storage Account
        │
        ▼
Storage Container
        │
        ▼
Blob (sample.txt)
```

*(Insert architecture diagram from the Architecture folder.)*

---

## Deployment Steps

### Initialize Terraform

```bash
terraform init
```

### Validate Configuration

```bash
terraform validate
```

### Review Execution Plan

```bash
terraform plan
```

### Deploy Resources

```bash
terraform apply
```

---

## Terraform Outputs

Example output:

```
container_name = terraform-state

storage_account_name = ksanjeevpterraformlab001

blob_name = sample.txt

primary_blob_endpoint =
https://ksanjeevpterraformlab001.blob.core.windows.net/
```

---

## Azure Verification

After deployment, verify:

- Resource Group exists
- Storage Account exists
- Storage Container exists
- Blob uploaded successfully
- Blob visible in Azure Portal

---

## Screenshots

Include screenshots for:

- Terraform Plan
- Terraform Apply
- Azure Storage Account
- Storage Container
- Uploaded Blob
- Terraform Outputs

---

## Key Learning Outcomes

This lab reinforced several important Terraform concepts:

- Using **data sources** to reference existing Azure resources
- Creating Azure Storage Blobs with Terraform
- Understanding the difference between **data** and **resource**
- Managing infrastructure incrementally across multiple Terraform projects
- Validating deployments using both Terraform outputs and the Azure Portal

---

## Challenges Encountered

While developing this lab, I encountered Terraform validation errors caused by missing data source declarations and incorrect resource references.

These issues were resolved by:

- Declaring the required Azure Storage Account as a data source
- Reusing existing infrastructure instead of recreating resources
- Correcting Terraform output references

These troubleshooting steps improved my understanding of Terraform dependency management and configuration validation.

---

## Repository

Part of the **Terraform Azure Labs** learning repository.

Future labs will build upon this Storage Account to deploy additional Azure Storage services and more advanced Terraform configurations.