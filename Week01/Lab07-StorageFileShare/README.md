# Lab 06 - Azure Storage File Share using Terraform

## Objective

Create an Azure Storage File Share inside an existing Azure Storage Account using Terraform.

This lab demonstrates how to reference existing Azure resources with **Terraform Data Sources** and provision only the required infrastructure component.

---

## Architecture

![Architecture](Architecture/architecture.png)



Azure Subscription
        │
        ▼
Resource Group
rg-ai-platform-labs-v2
        │
        ▼
Storage Account
ksanjeevpterraformlab002
        │
        ▼
Storage File Share
share_name = "terraformfileshare"


## Technologies Used


- Terraform v1.13+
- Azure Resource Manager (AzureRM Provider v4.x)
- Azure Storage File Share
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
- File Share name

Example

Outputs:

storage_account_name = "ksanjeevpterraformlab002"
share_name = "terraformfileshare"

## Verification

Deployment verified from:

Azure Portal

Storage Account

→ Data Storage

→ File shares (Classic File Share)

Verified Table

```
terraformfileshare
```

Screenshots are available inside the **Screenshots/** folder.

![terraformtable](Screenshots/terraformfileshare.png)

---

## Learning Outcomes

In this lab I learned:

- Using Terraform Data Sources
- Referencing existing Azure Storage Accounts
- Creating Azure Storage File Share
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

