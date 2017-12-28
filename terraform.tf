terraform {
  backend "s3" {
    bucket = "intent-terra-state"
    key    = "terraform.tfstate"
    region = "us-east-1"
  }
}
