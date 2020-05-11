variable "zone_id" {
  description = "Zone ID (if null - filter will be used)"
  type        = string
  default     = null
}

variable "domain" {
  description = "Your Domain name"
  type        = string
}

variable "name" {
  description = "Record fot the service (name)"
  type        = string
}

variable "environment" {
  description = "Your environment (for production can be empty)"
  type        = string
  default     = null
}

variable "ips" {
  description = "List of IPs to create a record for"
  type        = list(string)
}
