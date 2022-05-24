module "tfplan-functions" {
  source = "./modules/common-functions/tfplan-functions/tfplan-functions.sentinel"
}

module "tfstate-functions" {
  source = "./modules/common-functions/tfstate-functions/tfstate-functions.sentinel"
}

module "tfconfig-functions" {
  source = "./modules/common-functions/tfconfig-functions/tfconfig-functions.sentinel"
}

module "aws-functions" {
  source = "./modules/aws-functions/aws-functions.sentinel"
}

policy "enforce-mandatory-tags" {
  source = "./policies/enforce-mandatory-tags.sentinel"
  enforcement_level = "advisory"
}

policy "protect-against-rds-instance-deletion" {
  source = "./policies/protect-against-rds-instance-deletion.sentinel"
  enforcement_level = "advisory"
}

policy "require-dns-support-for-vpcs" {
  source = "./policies/require-dns-support-for-vpcs.sentinel"
  enforcement_level = "advisory"
}

