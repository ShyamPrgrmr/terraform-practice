resource "local_file" "random_file" {
    filename="D://Terraform_Practice/5-resource-attribute/random_file"
    content="Random pet ${random_pet.random_pet_name.id} is creater at ${time_static.time.id} "
}

//This does not have any attribute in it
resource "time_static" "time" {}

resource "random_pet" "random_pet_name" {
    prefix="PET"
    separator="_"
    length=1
}


