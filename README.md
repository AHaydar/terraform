# VM instance infrastrcuture
This project contains Terraform files that build infrastructure on google cloud.

## Create VM instance infrastructure using Terraform
* In order to make requests against the GCP API, you need to authenticate to prove that it's you making the request. The preferred method of provisioning resources with Terraform is to use a GCP service account.
    * In [Google Console](https://console.cloud.google.com/), navigate to IAM & admin -> Service accounts
    * Create a new service account, and give it a role (Could be on the project level - project editor, or on the compute engine level - compute admin)
    * Create key in the last step, and select JSON
* Add the following line to a startup file such as bash_profile or bashrc: `export GOOGLE_CLOUD_KEYFILE_JSON={{path}}`
* To build the infrastructure, run the following commands
    * `terraform init` to initialize your working directory
    * `terraform plan` to generate the execution plan, which describes what will Terraform do to reach the desired state (creating a VM instance)
    * `terraform apply` to execute the generated plan