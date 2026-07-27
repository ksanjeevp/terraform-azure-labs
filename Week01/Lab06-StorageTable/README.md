# Lab 06 - Azure Storage Table using Terraform

## Objective

Create an Azure Storage Table inside an existing Azure Storage Account using Terraform.

This lab demonstrates how to reference existing Azure resources with **Terraform Data Sources** and provision only the required infrastructure component.

---

## Architecture

![Architecture](Architecture/architecture.png)



Azure Subscription
        │
        ▼
Resource Group
rg-ai-platform-labs
        │
        ▼
Storage Account
ksanjeevpterraformlab001
        │
        ▼
Storage Table
terraformtable

## Technologies Used


- Terraform v1.13+
- Azure Resource Manager (AzureRM Provider v4.x)
- Azure Storage Table
- Azure Resource Group
- Azure Storage Account

---

## Project Structure

```
Lab06-StorageTable/
│
├── Architecture/
├── Screenshots/
├── main.tf
├── provider.tf
├── variables.tf
├── versions.tf
├── outputs.tf
├── terraform.tfvars.example
└── README.md
```

---

## Terraform Configuration

### Data Sources

- Existing Resource Group
- Existing Storage Account

### Resource Created

- Azure Storage Table

---

## Deployment Workflow

Initialize Terraform

```bash
terraform init
```

Validate configuration

```bash
terraform validate
```

Review execution plan

```bash
terraform plan
```

Deploy infrastructure

```bash
terraform apply
```

---

#outputs

After successful deployment Terraform returns:

- Storage Account Name
- Table Name

Example

Outputs:

storage_account_name = "ksanjeevpterraformlab001"
table_name = "terraformtable"

## Verification

Deployment verified from:

Azure Portal

Storage Account

→ Data Storage

→ Tables

Verified Table

```
terraformtable
```

Screenshots are available inside the **Screenshots/** folder.

![terraformtable](Screenshots/terraformtable.png)

---

## Learning Outcomes

In this lab I learned:

- Using Terraform Data Sources
- Referencing existing Azure Storage Accounts
- Creating Azure Storage Tables
- Managing infrastructure without recreating existing resources
- Using Terraform outputs for deployment verification

---

## Best Practices

- Reuse existing infrastructure through Data Sources
- Keep Terraform modules focused on a single responsibility
- Validate configurations before deployment
- Store screenshots as deployment evidence
- Commit only Terraform configuration files (exclude `.terraform`, `tfstate`, and secrets)

---

