variable "remote_host" {
  description = "Username of remote host"
  type        = string
}

variable "remote_username" {
  description = "Username of remote host"
  type        = string
  default     = "root"
}

variable "remote_password" {
  description = "Password of remote host"
  type        = string
  sensitive   = true
}

variable "rancher_version" {
  description = "Rancher version to use"
  type        = string
  default     = "v2.8.5"
}
