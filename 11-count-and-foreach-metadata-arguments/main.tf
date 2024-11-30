//Count to create file
resource "local_file" "countfile" {
  filename = var.filename1[count.index]
  content  = var.content
  count    = length(var.filename1)
}

//for_each to create content for set 
resource "local_file" "foreachfile" {
  filename = each.value
  content  = var.content
  for_each = toset(var.filename)
}

variable "filename1" {
  type    = list(string)
  default = ["./file-1-1", "./file-1-2", "./file-1-3", "./file-1-1"]
}

variable "filename" {
  type    = list(string)
  default = ["./file-1", "./file-2", "./file-3", "./file-1"]
}

variable "content" {
  type    = string
  default = "THIS IS TEST FILE"
}




