
//Creating a table
resource "aws_dynamodb_table" "test_table" {
    name = "test_table"
    hash_key = "Name"
    billing_mode = "PAY_PER_REQUEST"
    attribute{
        name = "Name"
        type = "S"
    }
}

//Adding a data into table
resource "aws_dynamodb_table_item" "test_table_item" {
    table_name =  aws_dynamodb_table.test_table.name
    hash_key = aws_dynamodb_table.test_table.hash_key
    item = file("data.json")
}