# terraform_null_random

Content of this repo is a guideline on HOW to use **null** provider and **random_string** in terraform.

**Note that all this is tested on Ubuntu OS**

## PreRequirements
- You need to have Terraform tool installed

## Repo content
- `main.tf` - Terraform configuration file

## Instructions on how to install **Terraform**
- Download required package from [here](https://www.terraform.io/downloads.html)
- Change to directory where package is download. For example: `cd $HOME/Downloads/` 
- Type on your terminal: `unzip <Downloaded_TF_Package>`
- Type on your terminal: `sudo mv terraform /usr/local/bin/`
- Check whether Terraform is available with:  `terraform --version` command


## Instructions HOW to prepare your PC environment for this **Terraform project**
- Download the repo **berchev/terraform_null_random**: `git clone https://github.com/berchev/terraform_null_random.git`
- Change to terraform_null_random: `cd terraform_null_random`
- Type in your terminal `terraform init` in order to be downloaded required providers
- Type in your terminal `terraform plan` in order to see the changes which terraform is going to be made
- Type in your terminal `terraform apply` execute changes bases on our code(main.tf)

## Expected results
The terraform code will create null resource `georgiman` with build number `random_number` and will execute `hello random_string`

Example: 
```
gberchev@BerchevPC terraform_null_random (setup) $ terraform show
null_resource.georgiman:
  id = 5682338454357046633
  triggers.% = 1
  triggers.build_number = 5299469820345950
random_string.mixed:
  id = none
  length = 16
  lower = true
  min_lower = 0
  min_numeric = 0
  min_special = 0
  min_upper = 0
  number = true
  result = M3IdHYp5pnky4wQt
  special = false
  upper = true
random_string.numbers:
  id = none
  length = 16
  lower = false
  min_lower = 0
  min_numeric = 0
  min_special = 0
  min_upper = 0
  number = true
  result = 5299469820345950
  special = false
  upper = false

```
## Remove all created with Terraform
- Type in your terminal `terraform destroy` in order to delete the created resource **georgiman**
