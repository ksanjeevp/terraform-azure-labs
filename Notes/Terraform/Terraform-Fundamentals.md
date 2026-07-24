# Terraform Fundamentals

## What is Terraform?

Terraform is an Infrastructure as Code (IaC) tool developed by HashiCorp that allows us to provision, manage, and version cloud infrastructure using declarative configuration files.

Instead of manually creating Azure resources through the Azure Portal, Terraform describes the desired infrastructure in code and automatically creates or updates resources to match that desired state.

---

## Why Terraform?

Before Terraform, infrastructure was often created manually.

Problems:

- Manual configuration errors
- Difficult to reproduce environments
- No version control
- Time-consuming deployments

Terraform solves these problems by treating infrastructure like source code.

---

## Key Features

- Infrastructure as Code (IaC)
- Declarative configuration
- Multi-cloud support
- Execution planning
- State management
- Dependency graph
- Reusable modules

---

## Terraform Workflow

1. Write configuration (.tf files)
2. terraform init
3. terraform validate
4. terraform fmt
5. terraform plan
6. terraform apply
7. terraform destroy

---

## Important Files

| File | Purpose |
|------|---------|
| main.tf | Main resources |
| variables.tf | Input variables |
| outputs.tf | Output values |
| provider.tf | Provider configuration |
| versions.tf | Terraform and provider versions |
| terraform.tfvars | Variable values (not committed) |
| terraform.lock.hcl | Provider dependency lock file |

---

## Best Practices

- Never commit terraform.tfstate
- Never commit .terraform folder
- Never commit terraform.tfvars containing secrets
- Use meaningful variable names
- Keep resources modular
- Validate before apply
- Use version control

---

##Info and Note to self
- terraform init downloads provider plugins.
- .terraform should never be committed.
- terraform.tfstate stores infrastructure state.
- .gitignore does not remove files already tracked by Git.
- terraform plan is safe because it only shows proposed changes.
## Interview Questions

### What is Terraform?

...

### What is Infrastructure as Code?

...

### Difference between terraform plan and terraform apply?

...

### Why is terraform.tfstate required?

...

### What is terraform init?

...

