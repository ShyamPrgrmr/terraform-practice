variable instance_type {
    default = "t2.micro"
    type = string
}


//created keys using ssh-keygen
variable public_key_path {
    default = "C://Users/Asus/.ssh/id_rsa.pub"
    type = string
}

//created keys using ssh-keygen
variable private_key_path {
    default = "C://Users/Asus/.ssh/id_rsa"
    type = string
}

variable ec2username {
    default = "ec2-user"
    type = string
}

variable ami {
    default = "ami-0453ec754f44f9a4a"
    type = string
}