output "verification" {
  value       = aws_route53_record.verification.name
  description = "interpolated value of `aws_route53_record.verification.name`"
}

output "zone_name" {
  value       = local.zone_name
  description = "interpolated value of `local.zone_name`"
}
