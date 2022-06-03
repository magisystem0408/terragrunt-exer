remote_state {
  backend  = "s3"
  generate = {
    path      = "backend.tf"
    if_exists = "overwrite_terragrunt"
  }

  config = {
    # Please Give it a unique BUCKET NAME!!.
    bucket  = "courses-terraform-terragrunt-states-bucket-mamushi"
    key     = "ap-northeast-1/${path_relative_to_include()}/terraform.tfvars"
    region  = "ap-northeast-1"
    encrypt = false
    dynamodb_table = "courses-lock-table"
    profile ="stadleTerraform"
  }
}
