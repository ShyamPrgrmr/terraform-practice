/*
terraform workspace new first
terraform workspace new second

terraform workspace list

terraform workspace select first
terraform workspace select second
*/


output "print_workspace" {
    value = "${terraform.workspace}"
}

/*
PS D:\Terraform_Practice\21-terraform-workspace> terraform workspace list      
  default
  first
* second
*/