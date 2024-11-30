terraform {
  required_providers {
    local = {  
        source="hashicorp/local"
        version="2.5.0"
    }
  }
}

/*
version = "> 2.5.0" -> Greater than this version
version = "< 2.5.0" -> Less than this version
version = "! 2.5.0" -> Not this
version = "~> 2.5.0" -> Anthing greater than 2.5.0, 2.5.1, 2.5.2,....
These contraints can also be used combined. like -> ">2.5.0, <2.5.4, !2.5.3"
*/

resource "local_file" "file" {
  filename = "./testfile"
  content = "test_content" 
}




