resource "tls_private_key" "private_key" {
    algorithm = "RSA"
    rsa_bits  = 4096
}

//Referancing with ${} will do implicit dependancy injection
resource "local_file" "keyfile" {
    filename="D://Terraform_Practice/6-implicit-explicit-resource-dependancy/implicit_key.txt"
    content="${tls_private_key.private_key.private_key_pem}"
}
