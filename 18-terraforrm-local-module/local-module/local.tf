resource "local_file" "greet" {
    filename = "./greet.txt"
    content = "${var.first_name} ${ var.last_name} ${var.greeting}"
}

output "print" {
    value = local_file.greet
}