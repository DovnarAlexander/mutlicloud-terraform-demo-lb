provider "cloudflare" {
  version = "~> 2.0"
  email   = var.cloudflare_email
}

provider "aws" {
  version = "~> 2.50"
  region  = var.aws_region
}
