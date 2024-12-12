locals {
  dns_records = [
    {
      name  = "hubble.blackmoor.dev"
      value = "192.168.150.37"
    },
    {
      name  = "sonarr.blackmoor.dev"
      value = "192.168.150.37"
    }
  ]
}

resource "unifi_dns_record" "dns" {
  for_each = { for idx, record in local.dns_records : idx => record }

  name        = each.value.name
  value       = each.value.value
  enabled     = true
  port        = 0
  record_type = "A"
}
