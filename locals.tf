locals {
  zone_name           = data.aws_route53_zone.zone.name // NOTE: trailing period is added by data source
  verification_record = "keybase-site-verification=${var.verification_record}"
}
