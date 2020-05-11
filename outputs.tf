output "hostname" {
  description = "Created record"
  value       = cloudflare_record.demo.hostname
}