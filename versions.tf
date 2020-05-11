provider "cloudflare" {
  version = "~> 2.0"
}

provider "aws" {
  version = "~> 2.50"
  region  = var.aws_region
}
