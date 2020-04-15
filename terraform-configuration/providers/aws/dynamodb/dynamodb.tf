terraform {
  backend "local" {
    path = "state/terraform.init_tf_state"
  }
}

provider "aws" {
  region = "us-east-1"
  version = "2.41.0"
  skip_credentials_validation = true
  skip_metadata_api_check     = true
  skip_requesting_account_id  = true
  endpoints {
    dynamodb = "http://dynamodb.rodce-adm.pp.ua:8000"
  }
}

resource "aws_dynamodb_table" "terraform_statelock" {
  name           = "wa-terraform-lock"
  read_capacity  = 1
  write_capacity = 1
  hash_key       = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }
}