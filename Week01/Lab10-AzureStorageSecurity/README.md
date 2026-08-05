# Lab 10: Azure Storage Security Hardening via Terraform

# Objective

Configure security settings for an existing Azure Storage Account using Terraform.

This laboratory focuses exclusively on implementing data plane security, infrastructure firewalls, and least-privilege token access for an existing Azure Storage Account.

## 🔒 Security Enhancements Implemented
1. **Network Firewall Isolation:** Storage default action is updated to `Deny`. Only explicitly whitelisted IP addresses can access data.
2. **Data-in-Transit Encryption:** Enforces strict HTTPS communication requirements.
3. **Time-Bound Service SAS:** Generates a secure token limited to 24 hours with read-only permissions instead of using global root access keys.
4. **Log Masking:** Protects cryptographic strings from terminal leaks using `sensitive = true`.

## 🚀 Execution Steps

1. **Configure local environment variables** in a `terraform.tfvars` file:
   ```hcl
   resource_group_name  = "your-rg-name"
   storage_account_name = "your-storage-account-name"
   allowed_ip_addresses = ["YOUR_LOCAL_PUBLIC_IP"]
   ```

2. **Initialize and Apply:**
   ```bash
   terraform init
   terraform apply -auto-approve
   ```

3. **View Protected Token Output:**
   ```bash
   terraform output sas_token
   ```

## 🧹 Clean Up
To remove the applied security firewall restrictions and reset the storage account access without deleting the account itself, run:
```bash
terraform destroy -auto-approve
```
