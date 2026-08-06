## Learning Roadmap

### Week 02 – Azure Networking with Terraform



## Directory Structure

```text
terraform-azure-labs
│
└── Week02
    │
    ├── Lab01-VirtualNetwork
    ├── Lab02-Subnet
    ├── Lab03-NetworkSecurityGroup
    ├── Lab04-NSGRules
    ├── Lab05-NSGAssociation
    ├── Lab06-PublicIP
    ├── Lab07-NetworkInterface
    ├── Lab08-VirtualMachine
    ├── Lab09-Bastion
    └── Lab10-LoadBalancer
    └── README.md    

```

## Learning Objective
```text
By the end of this lab, you'll understand:

Virtual Networks
CIDR notation
Address Spaces
Why every Azure resource needs networking
Terraform resource dependencies

```
## Week 02 – Progress- Azure Networking
```text
✅ Lab01 – Virtual Network
⏳ Lab02 – Subnet (Tomorrow)
⏳ Lab03 – NSG
⏳ Lab04 – NSG Association
⏳ Lab05 – Route Tables
⏳ Lab06 – Peering
⏳ Lab07 – Private Endpoint
⏳ Lab08 – Bastion
⏳ Lab09 – DNS
⏳ Lab10 – Network Watcher

```
## Environment 

```text
Azure Subscription
        │
        ▼
Resource Group
        │
        ▼
Virtual Network
        │
 ┌───────────────┐
 ▼               ▼
Frontend      Backend
Subnet         Subnet
 │               │
 ▼               ▼
NIC            NSG
 │
 ▼
Virtual Machine
 │
 ▼
Bastion
```