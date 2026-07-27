# Lab 03 – Azure Storage Container with Terraform

## Objective

Create an Azure Storage Container inside an existing Storage Account using Terraform.

## Architecture

![Architecture](Architecture/architecture.png)


Subscription
    │
    └── Resource Group
            │
            └── Storage Account
                    │
                    └── Storage Container

## Prerequisites

- Azure Subscription
- Terraform
- Azure CLI authenticated
- Existing Resource Group
- Existing Storage Account

## Terraform Files

provider.tf
versions.tf
variables.tf
main.tf
outputs.tf

## Validation

terraform validate

## Plan

terraform plan

## Apply

terraform apply

## Outputs

container_name
storage_account_name

## Azure Verification

Verified the Storage Container in Azure Portal.

## Lessons Learned

- Difference between data and resource blocks
- Referencing existing Azure resources
- Storage hierarchy
- Reading Terraform validation errors