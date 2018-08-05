# MultiEnviromentsAutomation

For Dev
terraform init
terraform plan -var-file=env/dev/vpc.tfvars
terraform apply -var-file=env/dev/vpc.tfvars

For UAT
terraform plan -var-file=env/uat/vpc.tfvars
terraform apply -var-file=env/uat/vpc.tfvars

For Prod
terraform plan -var-file=env/prod/vpc.tfvars
terraform apply -var-file=env/prod/vpc.tfvars

