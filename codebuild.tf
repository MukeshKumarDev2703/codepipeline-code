resource "aws_codebuild_project" "dev_project" {
  name          = "my-dev-build"
  description   = "CodeBuild project for the development environment"
  build_timeout = "30"

  artifacts {
    type = "NO_ARTIFACTS"
  }


  source {
    type      = "GITHUB"
    location  = "https://github.com/mukesh0327/terraform-iac-devops-aws-codepipeline.git"
    buildspec = "buildspec-dev.yml"
  }

  environment {
    compute_type = "BUILD_GENERAL1_SMALL"
    image        = "aws/codebuild/standard:7.0"
    type         = "LINUX_CONTAINER"
  }

  service_role = aws_iam_role.codebuild_role.arn
}

resource "aws_codebuild_project" "staging_project" {
  name          = "my-stag-build"
  description   = "CodeBuild project for the staging environment"
  build_timeout = "30"
  artifacts {
    type = "NO_ARTIFACTS"
  }

  source {
    type      = "GITHUB"
    location  = "https://github.com/mukesh0327/terraform-iac-devops-aws-codepipeline.git"
    buildspec = "buildspec-stag.yml"
  }

  environment {
    compute_type = "BUILD_GENERAL1_SMALL"
    image        = "aws/codebuild/standard:7.0"
    type         = "LINUX_CONTAINER"

  }

  service_role = aws_iam_role.codebuild_role.arn
}


