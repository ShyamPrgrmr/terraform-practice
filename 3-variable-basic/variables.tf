variable "myfile" {
    type=map(string)
    default={
        "filename"="./myfile.txt"
        "content"="Hello! my name is shyam"
    }
}

variable "pet_name"{
    type=object({
        prefix=list(string)
        separator=string
        length=number
    })
    default= {
        prefix=["Mr.","Mrs"]
        separator="."
        length=3
    }
}