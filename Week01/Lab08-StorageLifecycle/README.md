Lab 08 – Azure Storage Lifecycle Management
Objective

Automatically manage blob lifecycle using Azure Storage Management Policies.

This is your first exposure to cost optimization in Azure Storage.

Real companies don't keep every blob forever.

Typical policy:
Upload Blob
      │
      ▼
Hot Tier
      │
30 Days
      ▼
Cool Tier
      │
90 Days
      ▼
Archive Tier
      │
180 Days
      ▼
Delete

#Architecture

Azure Subscription
        │
        ▼
Resource Group
        │
        ▼
Storage Account
        │
        ▼
Storage Management Policy
        │
        ▼
Blob Lifecycle Rules


#Folder Structure

Lab08-StorageLifecycle/
│
├── Architecture/
├── ScreenShots/
├── main.tf
├── variables.tf
├── provider.tf
├── versions.tf
├── outputs.tf
├── terraform.tfvars.example
└── README.md