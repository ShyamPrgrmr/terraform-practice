resource "aws_instance" "webserver" {
    instance_type = var.instance_type
    ami = var.ami   
    user_data = file("script.sh")
    tags = {
        createdFor = "terraform"
    }

    provisioner "local-exec" {
        command = "echo ${self.public_ip} >> public_ip.txt" 
    }

    key_name = aws_key_pair.webserver_key.id
    vpc_security_group_ids = [aws_security_group.ssh-agent.id]
}

resource "aws_key_pair" "webserver_key" {
    key_name = "terraform_webserver_key"
    public_key = file("C://Users/Asus/.ssh/id_rsa.pub")
}

resource "aws_security_group" "ssh-agent" {
    name = "terraform-ssh-access"
    ingress {
        from_port = 80
        to_port = 80
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }
}