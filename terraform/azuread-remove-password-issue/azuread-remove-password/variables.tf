variable "display_name" {
  type        = string
  description = "Display name of the service principal"
}
variable "owners" {
  type        = list(string)
  description = "Owners of the service principal"
  default     = ["PUT HERE ID OF AppID or UserID from Microsoft Extra ID"]
}
