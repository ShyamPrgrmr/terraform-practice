resource "local_file" "remote-state" {
    filename = "./Shyam.txt"
    content = "storing state into s3!"
}

/*
Created object : 
{
    "Contents": [
        {
            "Key": "terraform-config/terraform.tfstate",
            "LastModified": "2024-12-02T04:27:33+00:00",
            "ETag": "\"**********\"",
            "ChecksumAlgorithm": [
                "SHA256"
            ],
            "Size": 1602,
            "StorageClass": "STANDARD",
            "Owner": {
                "DisplayName": "**********",
                "ID": "********************"
            }
        }
    ]
}

*/