data "local_file" "file" {
  filename = "./already_created_file.txt"
}

output "file_content" {
  value = "Content of file : ${data.local_file.file.content}"
}

