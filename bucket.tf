resource "aws_s3_bucket" "prodbucket" {
  bucket = "rasnei-mahinda-bucket"

  tags = {
    Name        = "rasnei-mahinda-bucket"
    Environment = "Prod"
  }


}