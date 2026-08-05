# Azure Static Website Deployment via Terraform

This repository automates the enablement and deployment of a static website hosted on an **existing** Azure Storage Account using Terraform.

## 📌 Architecture Components
*   **Data Sources:** Fetches an existing Azure Resource Group and Storage Account.
*   **Resources:** 
    *   Enables the native Static Website hosting feature.
    *   Uploads the root `index.html` file into the auto-generated `$web` container.
*   **Outputs:** Exposes the primary public web endpoint URL.

---

## 📂 Project Directory Structure

```text
.
├── main.tf          # Core Terraform configuration
├── variables.tf     # Input variables definitions
├── terraform.tfvars # (Optional) Local configuration values
└── index.html       # Your website homepage source
```

---

## 🛠️ Prerequisites

Before you deploy, ensure you have the following installed and configured:

1.  **Terraform CLI** (v1.0.0 or higher recommended).
2.  **Azure CLI** installed.
3.  **Active Azure Subscription** with an existing Resource Group and Storage Account already created.

---

## 🚀 Getting Started

### 1. Authenticate with Azure
Log into your Azure account using the Azure CLI:
```bash
az login
```
If you manage multiple subscriptions, set the active one:
```bash
az account set --subscription "YOUR_SUBSCRIPTION_ID"
```

### 2. Configure Variables
Create a `terraform.tfvars` file in the root folder to supply your existing infrastructure details:
```hcl
resource_group_name  = "your-existing-rg-name"
storage_account_name = "your-existing-storage-account-name"
```

### 3. Deploy the Infrastructure

Initialize the Terraform working directory (downloads the AzureRM provider):
```bash
terraform init
```

Generate and review the execution plan:
```bash
terraform plan
```

Apply the changes to enable the static website and upload `index.html`:
```bash
terraform apply -auto-approve
```

---

## 🔗 Accessing the Website

Once the deployment completes successfully, Terraform will print the public URL in your terminal outputs:

```bash
Outputs:

static_website_url = "https://<your_storage_account_name>.z13.web.core.windows.net/"
```

Copy and paste that URL into any web browser to view your live static website.

---

## 🧹 Clean Up

If you need to disable the static website hosting feature and remove the uploaded `index.html` from Azure, run:
```bash
terraform destroy -auto-approve
```
*Note: This will **not** delete your actual Storage Account or Resource Group, as they are referenced as managed data sources.*
