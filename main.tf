module "vpc" {
  source = "./modules/vpc"

  vpc_cidr = "192.168.0.0/16"
  vpc_name = "prod-vpc"
}

module "ec2" {
  source = "./modules/ec2"

  ami           = "ami-01a00762f46d584a1"
  instance_type = "t3.micro"
  instance_name = "prod-server"
}

module "s3" {
  source = "./modules/s3"

  bucket_name = "manoj-prod-bucket-1234578"
}
