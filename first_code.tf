provider "aws" {
  profile = "default"
  region  = "eu-west-2"
}

resource "aws_s3_bucket" "tf_course" {
  bucket = "tf-course-edc"
}

resource "aws_s3_bucket_acl" "tf_course_acl" {
  bucket = aws_s3_bucket.tf_course.id
  acl    = "private"
}
