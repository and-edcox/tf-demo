provider "aws" {
  profile = "default"
  region  = "eu-west-2"
}

resource "aws_s3_bucket" "prod_tf_course" {
  bucket = "prod-tf-course-edc"
}

resource "aws_s3_bucket_acl" "prod_tf_course_acl" {
  bucket = aws_s3_bucket.prod_tf_course.id
  acl    = "private"
}

resource "aws_default_vpc" "default" {}
