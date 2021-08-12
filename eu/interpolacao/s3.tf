resource "aws_s3_bucket" "thist" {
  bucket = "${random_pet.bucket.id}-${var.environment}"
  acl    = "private"

  tags = {
    Name        = "curso terraform"
    ManagedBy   = "terraform"
    Environment = var.environment
    owner       = "Alexandre"
  }
}