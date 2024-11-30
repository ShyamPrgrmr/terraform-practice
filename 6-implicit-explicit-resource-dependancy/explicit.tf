//file2 will not be create unless file1 is created. file2 is not using referance of file1, still they are linked using explicit dependancy. 

resource "local_file" "file2" {
    filename="./explicit_file2.txt"
    content="file2 will be created after file1"
    depends_on = [
        local_file.file1
    ]
}

resource "local_file" "file1" {
    filename="D://Terraform_Practice/6-implicit-explicit-resource-dependancy/explicit_file1.txt"
    content="file1 will be created first"
}


