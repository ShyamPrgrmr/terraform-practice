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

## Logging and Debugging

### Apply Logs
> export TF_lOG=<LOG_LAVEL> 

> LOG LEVELS = TRACE -> (Whole logs), INFO, ERROR, WARNING, DEBUG 


## Taints and Untaints
> terraform taint <resource_name> -> Will force to recrete the instance in next phase. 

> terraform untaint <resource_name>


## Terraform import

### We use them to create resources for exixting infrastructure

> terraform export <provider_name.resource_name> attributes : we will need to initialize (not declare it's body) a resource in configuration. after we do export we can use "terraform state show" command to see attributes and same we copy in resource file.  

## Terraform Modules

### Any directory which has set of configuration file is called modules. 

```python
module "logical_name" {
    source = "<module source directory>"
}
``` 
