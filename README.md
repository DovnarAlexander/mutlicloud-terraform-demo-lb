## Requirements

| Name | Version |
|------|---------|
| aws | ~> 2.50 |
| cloudflare | ~> 2.0 |

## Providers

| Name | Version |
|------|---------|
| cloudflare | ~> 2.0 |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| domain | Your Domain name | `string` | n/a | yes |
| environment | Your environment (for production can be empty) | `string` | `null` | no |
| ips | List of IPs to create a record for | `list(string)` | n/a | yes |
| name | Record fot the service (name) | `string` | n/a | yes |
| zone\_id | Zone ID (if null - filter will be used) | `string` | `null` | no |

## Outputs

| Name | Description |
|------|-------------|
| hostname | Created record |

