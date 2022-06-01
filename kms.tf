module "kms" {
  providers = {
    aws = aws.src
  }
  source = "./modules_kms"

  alias = "alias/ec2key"
  description = "Ec2 instance encrypt key"
  deletion_window_in_days = 10
}