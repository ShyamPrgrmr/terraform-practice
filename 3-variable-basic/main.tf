resource "local_file" "myfile" {
    filename=var.myfile["filename"]
    content=var.myfile["content"]
}

resource "random_pet" "pet_name"{
    prefix = var.pet_name.prefix[1]
    separator = var.pet_name.separator
    length = var.pet_name.length
}