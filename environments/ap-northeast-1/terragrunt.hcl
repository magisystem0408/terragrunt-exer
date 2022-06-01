remote_state {
  backend  = "s3"
  generate = {
    path      = "backend.tf"
    if_exists = "overwrite_terragrunt"
  }

  config = {
    bucket  = "courses-terraform-terragrunt-states-bucket"
    key     = "ap-northeast-1/${path_relative_to_include()}/terraform.tfvars"
    region  = "ap-northeast-1"
    encrypt = false
    dynamodb_table = "courses-lock-table"
    profile ="stadleTerraform"
  }
}