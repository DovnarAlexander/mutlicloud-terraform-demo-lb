data "cloudflare_zones" "demo" {
  count = var.zone_id == null ? 1 : 0
  filter {
    name   = var.domain
    status = "active"
    paused = false
  }
}

resource "cloudflare_record" "demo" {
  zone_id = coalesce(var.zone_id, join("", data.cloudflare_zones.demo.zones.*.id))
  name = format(
    "%s%s.%s", var.name,
    var.environment != null ? format(".%s", var.environment) : "",
    var.domain
  )
  value = var.ips
  type  = "A"
  ttl   = 120
}
