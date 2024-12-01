
/*
S3 Bucket :  
    1. Create a bucket
    2. Create a user
    3. Create policy for accessing s3 bucket
    4. Attach a policy to user
    5. Create a local file using local resource 
    6. Upload an Object in s3 ("test.text")
*/

//1. Create a bucket
resource "aws_s3_bucket" "test_bucket" {
    bucket = "shyam-pradhan-test-bucket-for-terraform"
    tags = {
        Description = "Test bucket for shyam"
        usedFor = "Terraform"
    }
}

//2. Create a user
resource "aws_iam_user" "user" {
    name = "shyam-s3-user"
    tags = {
        Description = "S3 user shyam"
        usedFor = "Terraform"
    }
}


//3. Create policy for accessing s3 bucket
//4. Attach a policy to bucket for user
// -> Created policy in AWS console to give access to this user

//5. Create a local file using local resource ("test.text")
resource "local_file" "test_file" {
    filename = "./test.txt"
    content = "Data to upload on s3!"
}

//6. Upload an Object in s3 ("test.text")
resource "aws_s3_object" "object" {
    bucket = aws_s3_bucket.test_bucket.id
    key = "test.txt"
    source = "./test.txt"

    depends_on = [
        local_file.test_file
    ]
}