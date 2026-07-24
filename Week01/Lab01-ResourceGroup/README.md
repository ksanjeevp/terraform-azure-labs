## Lab Reflection

### What I learned
- Terraform workflow (init → plan → apply)
- Provider configuration
- Variables and tfvars
- State file purpose
- Azure authentication with Azure CLI

### Problems I faced
- Wrong Azure subscription selected
- AuthorizationFailed due to RBAC
- Incorrect terraform.tfvars syntax
- Git tracked generated files before .gitignore

### How I solved them
- Switched to the correct subscription
- Verified Owner role
- Corrected variable declarations
- Removed tracked files with git rm --cached

### Next Improvement
- Learn Terraform modules
- Configure remote state

1.What is Terraform?

Tearraform is an Infrastructure as Code (Iac tool) developed by HashiCorp. It lets you define resources in human-readable,declarative configuration files and manages you Infrastructure lifecycle.

Using Terraform There are many advantages compared to managing Infrastructure manually.

.Terraform can manage infrastructure in MultiCloud environment.
.It supports and lets you define in human-readable language, it helps to do quick. 
.Terrform's state allows you to track resource changes throughout deployments.
.You may commit you changes to version control and safely collaborate on Infrastructure management.


What is a provider?

Provider is Plugin that acts like a translation bridge for Terraform's configuration language and API's of External platforms and services.

Providers define individual units of infrastructure, for example compute instances or private networks, as resources. You can compose resources from different providers into reusable Terraform configurations called modules, and manage them with a consistent language and workflow.

What is a state file?

Terraform state is a required JSON file that acts as a single source of truth, mapping your real-world infrastructure to your configuration code. Whenever you run Terraform, it saves metadata about your deployed resources into a file named 
terraform.tfstate.

Core Responsibilities:-
.Resource Mapping: Tracks which real-world cloud resources belong to which specific blocks of code.
.Metadata Storage: Records critical details like resource IDs, dependencies, and private configuration data.
.Performance Boosting: Caches resource properties so Terraform doesn't have to query cloud APIs for every single resource during a planning phase.
.Drift Detection: Compares your current actual infrastructure against your code to find out if someone manually changed something outside of Terraform.

What is Variable and Why do we use variables?

A Terraform variable is a customizable placeholder that allows you to pass values into your configuration without hardcoding them. 

We use variables for:-

.Code Reusability: Write one infrastructure template and reuse it across multiple projects.
.Environment Separation: Deploy identical architecture to dev, staging, and prod simply by changing the variable values.
.Security Control: Prevent sensitive data like database passwords or API keys from being written directly in your code files.
.Centralized Updates: Change a value in one central location instead of searching and replacing text across dozens of files.

What is terraform plan?

Tearrform plan helps Preview the changes Terraform will make to match your configuration.

Why do we need terraform import?

Terraform Import is a tool/command to incorporate resources created manually or by another tool and brings under terrform's management.
By Default Terraform will know only resouces created by Terraform apply. Terraform import helps bridging the gap with real world cloud resource mapping with config.

Without Import command adopting Terraform in a established environment is difficult. 

It helps solving critical problems:-

.Eliminate Manual Configuration: If an administrator built a critical server or database using a web console (like AWS Console or Azure Portal), you use import to manage it via code moving forward.
.Prevent Resource Recreation: If you just write code for an existing resource and run apply, Terraform will try to build a brand-new copy. Importing tells Terraform, "This already exists, just map it."
.Standardize Legacy Infrastructure: It helps teams migrate older, unmanaged setups into clean, version-controlled Infrastructure as Code (IaC) without downtime.
.Recover from State Loss: If your local state file is accidentally deleted or corrupted, but the cloud resources are still running perfectly, you can use import to rebuild your state file piece by piece.