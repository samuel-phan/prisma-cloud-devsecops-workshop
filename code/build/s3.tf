provider "aws" {
  region = "us-west-2"
}

resource "aws_s3_bucket" "dev_s3" {
  bucket_prefix = "dev-"

  tags = {
    Environment          = "Dev"
    yor_name             = "dev_s3"
    yor_trace            = "5fb47cb3-e54c-43c2-97ab-e320bbf31604"
    git_commit           = "02bdea22e3cb6de96cc44d43b281fc902a9d5194"
    git_file             = "code/build/s3.tf"
    git_last_modified_at = "2024-08-15 10:28:28"
    git_last_modified_by = "samuel-phan@users.noreply.github.com"
    git_modifiers        = "samuel-phan"
    git_org              = "samuel-phan"
    git_repo             = "prisma-cloud-devsecops-workshop"
  }
}

resource "aws_s3_bucket_ownership_controls" "dev_s3" {
  bucket = aws_s3_bucket.dev_s3.id
  rule {
    object_ownership = "BucketOwnerPreferred"
  }
}
