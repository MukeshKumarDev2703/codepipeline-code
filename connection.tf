## This resource for Build the Connection between AWS and GitHub.
resource "aws_codestarconnections_connection" "connections" {

  name = "aws-github-coonection"

  provider_type = "GitHub"

}