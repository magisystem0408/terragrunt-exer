include {
  path = find_in_parent_folders()
}

terraform {
  source = "../../../modules_kms"
}

inputs = {
  alias                   = "alias/ec2key"
  description             = "Ec2 instance encrypt key"
  deletion_window_in_days = 10
}