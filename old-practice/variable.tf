variable "environment" {
  description = "Environement name"
  type        = string
  default     = "dev"
}
variable "server_count" {
  description = "Number of servers to create"
  type        = number
  default     = 2
}
