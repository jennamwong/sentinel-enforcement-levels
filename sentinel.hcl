module "tfplan-functions" {
  source = "./tfplan-functions.sentinel"
}

module "tfstate-functions" {
  source = "./tfstate-functions.sentinel"
}

module "tfconfig-functions" {
  source = "./tfconfig-functions.sentinel"
}

module "aws-functions" {
  source = "./aws-functions.sentinel"
}

policy "enforce-mandatory-tags" {
  //source = "./enforce-mandatory-tags.sentinel"
  enforcement_level = "hard-mandatory"
}

policy "restrict-cost-and-percentage-increase" {
    //source = "./restrict-cost-and-percentage-increase"
    enforcement_level = "soft-mandatory"
}