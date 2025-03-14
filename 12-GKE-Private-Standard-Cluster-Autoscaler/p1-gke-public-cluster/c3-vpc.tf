# Resource: VPC
resource "google_compute_network" "myvpc" {
  name = "${local.name}-vpc"
  auto_create_subnetworks = false
}

# Resource: Subnet
resource "google_compute_subnetwork" "mysubnet" {
  name = "${local.name}-${var.gcp_region1}-subnet"
  region = var.gcp_region1
  ip_cidr_range = var.subnet_ip_range
  network = google_compute_network.myvpc.id
  private_ip_google_access = true
  secondary_ip_range {
    range_name  = "kubernetes-pods-ip-range"
    ip_cidr_range = var.pods_ip_range
  }
  secondary_ip_range {
    range_name = "kubernetes-services-ip-range"
    ip_cidr_range = var.services_ip_range
  }
}