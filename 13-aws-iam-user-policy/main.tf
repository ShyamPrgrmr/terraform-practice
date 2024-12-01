/*
Setup AWS command by setting below access key and secret key. In this way we don't need to create variable, providers will directly access the key. 
linux : 
export AWS_ACCESS_KEY_ID="your-access-key-id"
export AWS_SECRET_ACCESS_KEY="your-secret-access-key"
export AWS_REGION="region"
Also, setting aws profile via "aws configure" can automatically apply creadentials. 
*/

//below configuration create user shyam and attach policy defined in ./policy.json

resource "aws_iam_user" "iam_read_only_user" {
    name="shyam"
    tags={
        Description = "This is new user created from terraform"
    }
} 

resource "aws_iam_user_policy" "iam_read_only_policy" {
    name="iam_read_only_policy"
    user = aws_iam_user.iam_read_only_user.name
    //file is in build function
    policy = file("policy.json")
}







