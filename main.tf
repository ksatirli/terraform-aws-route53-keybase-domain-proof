// verify Domain ownership
resource "aws_route53_record" "verification" {
  zone_id = var.zone_id
  name    = "_keybase.${local.zone_name}"
  type    = "TXT"
  ttl     = var.record_ttl
  records = [local.verification_record]
}