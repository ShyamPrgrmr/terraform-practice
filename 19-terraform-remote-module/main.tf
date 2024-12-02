//Create a user "test" using iam-user module
module "iam_iam-user" {
  source  = "terraform-aws-modules/iam/aws//modules/iam-user"
  version = "5.48.0"
  name = "test" //user_name
  create_iam_access_key = false //stop from creating acceess key
  create_iam_user_login_profile = false //stop from creating login profile
}