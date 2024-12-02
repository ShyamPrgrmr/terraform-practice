terraform {
    backend "s3" {
        bucket = "shyam-pradhan-terraform-state-bucket"
        key = "terraform-config/terraform.tfstate"
        region = "us-east-1"
    }
}