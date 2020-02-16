output "zone_name" {
  value       = local.zone_name
  description = "interpolated value of `local.zone_name`"
}

output "domain_proof" {
  value       = aws_route53_record.domain_proof.name
  description = "interpolated value of `aws_route53_record.domain_proof.name`"
}
