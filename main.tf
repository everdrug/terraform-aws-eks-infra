provider "aws" {
  profile = "terraform"
  region  = "eu-west-1"
}

terraform {
  backend "s3" {
    bucket  = "cbkt1-terraform-state"
    key     = "default.tfstate"
    region  = "eu-west-1"
    profile = "terraform"
  }
}

module "k8s" {
  source                  = "./k8s"
  vpc_cidr_block          = "10.0.0.0/16"
  vpc_name                = "main"
  public_subnet01_netnum  = "1"
  private_subnet01_netnum = "2"
  cluster_name            = "test-cluster"
  node_desired_size       = 1
  node_max_size           = 1
  node_min_size           = 1
  ami_type                = "AL2_x86_64"
  capacity_type           = "ON_DEMAND"
  disk_size               = 20
  instance_types          = ["t3.small"]
}

module "ecr" {
  source = "./ecr"
}
