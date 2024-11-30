/*
 $ terraform fmt -> format
 $ terraform show -> show state
 $ terraform providers -> show providers
 $ terraform providers mirror "<target path>" -> copy providers to path
 $ terraform validate -> validate syntax. 
 $ terraform output -> print output variables.
 $ terraform graph -> visual diagram of depandacies. 
*/

resource "local_file" "newfile" {
    filepath = "D://Terraform_Practice/8-lifecycle-rules/text.txt"
    content = "TEST"
}
