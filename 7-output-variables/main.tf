
variable static_content {
  type        = string
  default     = "My pet's name is"
}

resource "random_pet" "pet" {
    prefix="PET"
    separator="_"
    length=1
}

resource "local_file" "file" {
    filename = "./file.txt"
    content = "${var.static_content} ${random_pet.pet.id}" 
}

output "output-var" {
    value = local_file.file.content
    description = "Example of output variable!"
}


/*
Output : 
$ terraform init
$ terraform plan
$ terraform apply
output-var = "My pet's name is PET_crab"

$ terraform output
output-var = "My pet's name is PET_crab"

*/
