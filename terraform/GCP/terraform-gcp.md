Terraform GCP Setup

1) Edit permission for your account:
	1. Open [link](https://console.cloud.google.com/)
	2. Go to the IAM & Admin page
	3. Add role for your account:  Service Account Key Admin
	4. Save

2) Create Service Account Key for Terraform:
	1. Go to the IAM & Admin page
	2. Create key in JSON format for Compute Engine Service Account
	3. File will be downloaded

3) Upgrade Terraform to the latest version and install required plugins:
	1. Go to the Cloud Shell
	2. Upload terraform templates in Cloud Shell
	3. Upload your Service Account Key
	4. Go to the folder with templates and use command: `terraform init –upgrade`

4) Check all possible variables in **variables.tf**, define custom variables in **terraform.tfvars**, change if needed.
   Change path to the Service Account key (`credentials_file_path variable`) and SSH public key (optional).

5) Generate ssh-key pair using this command: `ssh-keygen`.

   You need following permissions in IAM to provision metadata with ssh keys:
   `compute.instances.setMetadata`, `compute.projects.setCommonInstanceMetadata`, `iam.serviceAccounts.actAs`.  

6) If you need provision more than 1 instance, go to the **ubuntu1804-create.tf** and uncomment line with count of instances and new names, comment field with old name for 1 instance.

7) To start provision resources, make sure what will be changed:
   Run command: `terraform plan` from folder with templates.

8) If everything is ok, start provisioning and type `terraform apply` from folder.

9) If you want to destroy provisioned resources, type `terraform destroy`.
