terraform {
  backend "s3" {
    bucket = "terraform-statefile123"
    key = "main"
    region = "us-east-2"
    dynamodb_table = "my-dynamodb-table1"
  }
}
