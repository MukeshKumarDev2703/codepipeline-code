resource "aws_s3_bucket" "codepipeline_artifact" {
  bucket        = "bucket-for-codepipeline-aws-github-terraform"
  force_destroy = true



}