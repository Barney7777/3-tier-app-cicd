terraform {
  backend "s3" {
    # don't use variables here, just use values
    bucket         = "barney-terraform-remote-state"
    key            = "yelp/jumphost/terraform.tfstate"
    region         = "ap-southeast-2"
    dynamodb_table = "yelp-jumphost-terraform-state-lock"
  }
}