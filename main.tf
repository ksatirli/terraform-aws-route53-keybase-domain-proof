// verify Domain ownership
resource "aws_route53_record" "domain_proof" {
  zone_id = var.zone_id
  name    = "_keybase.${local.zone_name}"
  type    = "TXT"
  ttl     = var.record_ttl
  records = [local.domain_proof]
}
