provider "aws" {
  region = "ap-south-1"
}

terraform {
  backend "s3" {
    bucket         = "appstreamtest12344"
    key            = "path/to/my/key"
    region         = "ap-south-1"
}

resource "aws_instance" "test_instance" {
 ami           = "ami-04f8d7ed2f1a54b14"
 instance_type = "t2.micro"
 tags = {
   Name = "test_instance"
 }
}
