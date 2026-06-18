terraform {
  backend "s3" {
    bucket = "s3-demo-b-d"
    key    = "prod/terraform.tfstate"
    region = "ap-south-1"
  }
}
