variable "secrets" {
  description = "A map of secrets to create"
  type        = map(object({
    length    = number
    special   = bool
    min_upper = number
  }))
}

variable "secret_names" {
  description = "A map of secret names"
  type        = map(string)
}
