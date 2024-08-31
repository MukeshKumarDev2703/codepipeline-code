## This variable for stag Codebuild..
variable "stag_codebuild_project" {
  type = object({
    name          = string
    description   = string
    build_timeout = number
    artifacts = object({
      type = string
    }),
    source = object({
      type      = string
      location  = string
      buildspec = string
    }),
    environment = object({
      compute_type = string
      image        = string
      type         = string
    })
  })
}