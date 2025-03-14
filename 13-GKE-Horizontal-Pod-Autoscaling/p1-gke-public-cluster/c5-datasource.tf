data "google_compute_zones" "available" {
  status = "UP"
}

output "compute_zones" {
  description = "list of compute zones"
  value = data.google_compute_zones.available.names
}