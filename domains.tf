resource "aws_route53_record" "primary_host_domain_name" {
  zone_id = aws_route53_zone.primary.zone_id
  name    = var.domain
  type    = "A"
  ttl     = "300"
  records = [primary_host.web.public_ip]
}