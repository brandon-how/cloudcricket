# Deploying infrastructure

You need to create Application Default Credentials (ADC) for the Google Terraform provider to work:

```sh
gcloud auth application-default login
```

## How to

Format and validate any changes:

```sh
terraform fmt
terraform validate
```

Plan

```sh
terraform plan -var-file="env-dev.tfvars" # Where -var-file can be any .tfvars file
```

Apply

```sh
terraform apply -var-file="env-dev.tfvars" # Where -var-file can be any .tfvars file
```

## Issues:

With no organisational resource, users cannot create folders at the root level. 

Thus, only Google projects can be created. 
