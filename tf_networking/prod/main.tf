locals {
  prod_availability_zones = ["us-east-1a", "us-east-1b"]
  region                  = "us-east-1"
  environment             = "prod"
  app_name                = "myapp"
}

provider "aws" {
  region  = local.region
  profile = "default"
}

module "networking" {
  source               = "../modules/networking"
  environment          = local.environment
  vpc_cidr             = "10.0.1.0/24"
  public_subnets_cidr  = ["10.0.1.0/26", "10.0.1.64/26"]
  private_subnets_cidr = ["10.0.1.128/26", "10.0.1.192/26"]
  region               = local.region
  availability_zones   = local.prod_availability_zones
}
