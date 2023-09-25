# Terraform Beginner Bootcamp 2023 - Week 1

# Terraform Beginner Bootcamp 2023 - Week 1

## Root Module Structure

Our root module structure is as follows:

```
PROJECT_ROOT
│
├── main.tf                 # everything else.
├── variables.tf            # stores the structure of input variables
├── terraform.tfvars        # the data of variables we want to load into our terraform project
├── providers.tf            # defined required providers and their configuration
├── outputs.tf              # stores our outputs
└── README.md               # required for root modules
```

[Standard Module Structure](https://developer.hashicorp.com/terraform/language/modules/develop/structure)

## Terraform and Input Variables

### Terraform Cloud Variables

In terraform we can set two kind of variables:
- Environment Variables - those you would set in your bash terminal eg. AWS credentials
- Terraform Variables - those that you would normally set in your tfvars file

We can set Terraform Cloud variables to be sensitive so they are not shown visibly in the UI.

### Loading Terraform Input Variables

[Terraform Input Variables](https://developer.hashicorp.com/terraform/language/values/variables)

### var flag
We can use the `-var` flag to set an input variable or override a variable in the tfvars file eg. `terraform -var user_ud="my-user_id"`

### var-file flag

If you want to set lots of variables, it becomes more convenient to set the variables in a file with the filename ending in .tfvars or .tfvars.json and passing in the command in the bash.

variabel.tfvars
```
image_id = "ami-abc123"
instance_type = "t2.micro"

```

Command: `terraform apply -var-file="variables.tfvars"`


### terraform.tvfars

This is the default file to load in terraform variables in bulk

### auto.tfvars

Allows you can have multiple files that end with auto.tfvars and they will be loaded up automatically. If you have multiple files with auto.tfvars, they will be auto loaded in alphabetical order based on their filename.

### order of terraform variables

![order-of-variables](https://github.com/kem02/terraform-beginner-bootcamp-2023/assets/113561273/5ea01aca-5563-4184-a521-fbd2b3d49559)
