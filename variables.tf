variable "zone_id" {
  type        = string
  description = "ID of the DNS Zone to store DNS Record in."
}

variable "record_ttl" {
  type        = string
  description = "TTL for the DNS record."
  default     = 300
}

variable "domain_proof" {
  type        = string
  description = "Domain Proof TXT Record (without `keybase-site-verification=` prefix)."
}

data "aws_route53_zone" "zone" {
  zone_id = var.zone_id
}
