resource "aws_s3_bucket" "prodbucket" {
  bucket = "rasnei-mahinda-bucket"

  tags = {
    Name        = "rasnei-mahinda-bucket"
    Environment = "Prod"
    CostCenter = "HR"

  }
  #Dummy Change 

}


resource "aws_s3_bucket" "prodbucket" {
  bucket = "hukahan-mahinda-bucket"

  tags = {
    Name        = "hukahan-mahinda-bucket"
    Environment = "Prod"
    CostCenter = "Admin"

  }
  #Dummy Change 

}