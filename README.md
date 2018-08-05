# MultiEnviromentsAutomation

Use Terraform Workspace to seprate the Enviroment using re-useable Terraform script


Prerequisites
1. Amazon AWS: 
    Read introduction to AWS
    Get access to your AWS account
    Get your AWS access and secret keys
    
2. Terraform:
    Read introduction to Terraform
    Install latest version Terraform

#Configure AWS access and Secret key to connect with enviroment

@Add a admin user with admin access in aws and download the access and secret key
//command

aws configure

[profile adminuser]

    aws_access_key_id = "adminuser access key ID"
    aws_secret_access_key = "adminuser secret access key"
    region = "aws-region"


//initials commands to follow 
terraform init


//Steps to to build the DEV/UAT/PROD architectures using the same scripts to maintaint the intergreiy between the enviroment

Create the new workspaces for dev enviroment
1. terraform workspace new dev
2. terraform workspace select dev

Similarly create all the eviroments like (dev,sit,uat,preprod,prod)

//Show all the workspaces and check the status of the workspace 
  
terraform workspace list


//Use the below scripts for builing the same architetcture and infra across all enviroments 

terraform workspace select dev

//For Dev
terraform workspace select dev
terraform plan -var-file=env/dev/vpc.tfvars
terraform apply -var-file=env/dev/vpc.tfvars


//For UAT
terraform workspace select uat
terraform plan -var-file=env/uat/vpc.tfvars
terraform apply -var-file=env/uat/vpc.tfvars

//For Prod
terraform workspace select prod
terraform plan -var-file=env/prod/vpc.tfvars
terraform apply -var-file=env/prod/vpc.tfvars

