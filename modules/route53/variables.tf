variable "environment" {
  description = "Environment name"
  type        = string
}

variable "zone_name" {
  description = "Route53 zone name"
  type        = string
}

variable "create_zone" {
  description = "Whether to create a new Route53 zone"
  type        = bool
  default     = true
}

variable "private_zone" {
  description = "Whether the zone is private"
  type        = bool
  default     = false
}

variable "records" {
  description = "List of DNS records"
  type = list(object({
    name    = string
    type    = string
    ttl     = number
    records = list(string)
    alias = object({
      name                   = string
      zone_id                = string
      evaluate_target_health = bool
    })
  }))
  default = []
}

variable "tags" {
  description = "Additional tags"
  type        = map(string)
  default     = {}
}
