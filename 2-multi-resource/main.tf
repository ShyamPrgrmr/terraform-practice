resource "local_file" "myfile" {
    filename="D://Terraform_Practice/2-multi-resource/myfile.txt"
    content="Hello! my name is shyam"
}

resource "random_pet" "pet_name"{
    prefix = "Mr."
    separator = "."
    length = 2
}