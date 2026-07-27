# Lab 05 - Azure Storage Queue using Terraform

## Objective

Create an Azure Storage Queue inside an existing Azure Storage Account using Terraform.

This lab demonstrates how to reference existing Azure resources with **Terraform Data Sources** and provision only the required infrastructure component.

---

## Technologies Used

- Terraform v1.13+
- Azure Resource Manager (AzureRM Provider v4.x)
- Azure Storage Queue
- Azure Resource Group
- Azure Storage Account

---

## Architecture

```
Existing Resource Group
        │
        ▼
Existing Storage Account
        │
        ▼
Azure Storage Queue
```

---

## Project Structure

```
Lab05-StorageQueue/
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

- Azure Storage Queue

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

## Outputs

After successful deployment Terraform returns:

- Storage Account Name
- Queue Name

Example

```
storage_account_name = "ksanjeevpterraformlab001"

queue_name = "terraformqueue"
```

---

## Verification

Deployment verified from:

Azure Portal

Storage Account

→ Data Storage

→ Queues

Verified Queue

```
terraformqueue
```

Screenshots are available inside the **Screenshots/** folder.

---

## Learning Outcomes

In this lab I learned:

- Using Terraform Data Sources
- Referencing existing Azure Storage Accounts
- Creating Azure Storage Queues
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

## Next Lab

Lab 06 – Azure Storage Table