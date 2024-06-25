variable "codecommit_repositories" {
  description = "Map of repositories to their email addresses"
  type        = map(list(string))
}

