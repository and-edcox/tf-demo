provider "aws" {
  profile = "default"
  region  = "eu-west-2"
}

resource "aws_s3_bucket" "tf_course" {
  bucket = "tf-course-edc"
  acl    = "private"
}
