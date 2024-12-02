# Terraform Practice 

## Terraform basic commands
> terraform providers -> show providers

> terraform providers mirror "<target path>" -> copy providers to path

> terraform validate -> validate syntax. 

> terraform output -> print output variables.

> terraform graph -> visual diagram of depandacies.


## AWS CLI commands

### To configure
> aws configure

### To create users
> aws iam add-user --user-name <username>

### To create groups
> aws iam create-group --group-name <groupname>

### To attach group to user
> aws iam add-user-to-group --user-name <username> --group-name <group-name>

### To attach policy to group 
> aws iam attach-group-policy --policy-arn <ARN_of_policy> --group-name <group-name>

## Terraform state commands

> terraform state list                  : To list resources
> terraform state show <resource_name>  : To show state of resouce 
> terraform state mv <SOURCE> <TARGET>  : To move/rename the resource "need to update resource file as well"
> terraform state pull                  : Pull current state from remote
> terraform state rm <resource_name>    : To remove resource "need to remove resource from file as well"




