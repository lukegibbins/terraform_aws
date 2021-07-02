resource "aws_s3_bucket" "S3_Terraform_Code_Bucket" {
  bucket = "s3-terraform-code"
  acl = "public-read"
  tags = {
      Envrionment = "Dev"
  }
}