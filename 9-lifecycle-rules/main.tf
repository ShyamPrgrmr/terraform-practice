//Resource that will not be destroyed
//This will create a test.txt file but it will delete it in next runs. 
//as the file is being created before removing it, we cannot have two files with same name that's why no file will be created.  
resource "local_file" "file" {
    filename = "D://Terraform_Practice/8-lifecycle-rules/test.txt"
    content = "Test data-1!"
    lifecycle {
        create_before_destroy = true 
    }
}

//Resource will not be delete in apply, destroy
//apply -> destroy -> show
resource "random_pet" "pet" {
    prefix = "PET_"
    separator = "."
    length = 1
    lifecycle {
        prevent_destroy = true
    } 
}


/*
| $ terraform destroy

│ Error: Instance cannot be destroyed
│
│   on main.tf line 14:
│   14: resource "random_pet" "pet" {
│
│ Resource random_pet.pet has lifecycle.prevent_destroy set, but the plan calls for this resource to be destroyed. To avoid this error and continue with the plan, 
│ either disable lifecycle.prevent_destroy or reduce the scope of the plan using the -target option
*/



