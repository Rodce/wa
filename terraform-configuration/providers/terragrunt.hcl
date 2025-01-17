remote_state {
  backend = "s3"

  config = {
    bucket = "terraform-state"
    key = "${path_relative_to_include()}/terraform.tfstate"
    encrypt = false
    region = "us-east-1"
    access_key = "minio"
    secret_key = "minio102030"
    endpoint = "https://minio.rodce-adm.pp.ua"
    // dynamodb_table = "terraform-lock"
    // endpoints {
    //   dynamodb = "http://dynamodb.rodce-adm.pp.ua:8000"
    // }

    skip_requesting_account_id = true
    skip_credentials_validation = true
    skip_get_ec2_platforms = true
    skip_metadata_api_check = true
    skip_region_validation = true
    force_path_style = true
  }
}


inputs = {
  aws_region = "eu-west-1"
  terraform_remote_state_s3_bucket = "terraform-state"
  terraform_remote_state_dynamodb_table = "wa-terraform-lock"
  terraform_remote_state_file_name = "terraform.tfstate"
  vault_address = "https://vault.rodce-adm.pp.ua"
}
