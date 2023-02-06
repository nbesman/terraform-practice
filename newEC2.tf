provider "aws" {
region     = "us-west-2"
}

resource "aws_instance" "nimiEC2" {
   ami = "ami-082b5a644766e0e6f"
   instance_type = "t2.micro"
}

resource "aws_s3_bucket" "nimis3" {
  bucket = "nimi-s3"
}

resource "aws_s3_bucket_object" "image" {
  bucket = aws_s3_bucket.nimis3.bucket
  key    = "nimi-image.jpg"
  source = "C:\\Users\\nbesm\\Downloads\\nimi-image.jpg"
  }