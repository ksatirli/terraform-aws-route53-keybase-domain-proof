variable "zone_id" {
  type        = string
  description = "ID of the DNS Zone to store Records in"
}

variable "record_ttl" {
  type        = string
  description = "TTL for all DNS records"
  default     = 300
}

variable "verification_record" {
  type        = string
  description = "Verification TXT Record"
}

data "aws_route53_zone" "zone" {
  zone_id = var.zone_id
}
