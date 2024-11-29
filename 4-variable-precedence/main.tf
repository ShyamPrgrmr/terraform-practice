resource "local_file" "favorite_show" {
    filename=var.favorite_show
    content=var.content

}

/*
Variable follow below precedences : 

(Lowest)    1. default
            2. environment (export TF_VAR_<filename>)
            3. variables.tfvars
            4. *auto.tfvars and *.auto.tfvars.json (Alphabetical order)
(Highest)   5. -var and -var-file (use -> terraform apply -var-file variables.tfvars)
*/

variable favorite_show {
    type=string
}

variable content {
    type=string
}