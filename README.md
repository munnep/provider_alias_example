# Provider Alias and modules

This repository is as an example how to work with providers aliases and how to use them with modules and child modules. 

The example shows the following where we want to create 2 VPC on different AWS regions. We accomplish this using modules and aliases for the providers. We also use child modules to show the details

- Under directory `main_code` we provide the providers. This is the only location to specify the providers
- This will use a module called `module1` and we give the alias provider with this module
- The `module1` will then call to `module2` and the resources to be created in the correct regions specified by the providers 

This repository is based on the official documentation for terraform providers found [here](https://developer.hashicorp.com/terraform/language/modules/develop/providers)

## AWS
We will be using AWS. Make sure you have the following
- AWS account  

## Install terraform  
See the following documentation [How to install Terraform](https://learn.hashicorp.com/tutorials/terraform/install-cli)

# How to

- Clone the repository to your local machine
```
git clone https://github.com/munnep/provider_alias_example.git
```
- Go to the directory
```
cd provider_alias_example/main_code
```
- Set your AWS credentials
```
export AWS_ACCESS_KEY_ID=
export AWS_SECRET_ACCESS_KEY=
export AWS_SESSION_TOKEN=
```
- Terraform init
```
terraform init
```
- Terraform apply
```
terraform apply
```
- it will create 2 resources and one in each region

