output "zone_id" {
  description = "Route53 zone ID"
  value       = var.create_zone ? aws_route53_zone.main[0].zone_id : data.aws_route53_zone.existing[0].zone_id
}

output "zone_name_servers" {
  description = "Route53 zone name servers"
  value       = var.create_zone ? aws_route53_zone.main[0].name_servers : data.aws_route53_zone.existing[0].name_servers
}
