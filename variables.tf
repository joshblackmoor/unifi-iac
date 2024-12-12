variable "username" {
  type = string
}

variable "password" {
  type      = string
  sensitive = true
}

variable "api_url" {
  type = string
}
