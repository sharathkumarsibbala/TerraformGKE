# GKE Datasource: GKE Cluster details
data "google_container_cluster" "ds_to_pull_p1_gke_clusteinfo" {
  name     = data.terraform_remote_state.ds_def_p1_gke_clusteinfo.outputs.gke_cluster_name
  location = data.terraform_remote_state.ds_def_p1_gke_clusteinfo.outputs.gke_cluster_location
}

# output "gke_cluster_details" {
#   value = {
#     gke_endpoint = data.google_container_cluster.ds_to_pull_p1_gke_clusteinfo.endpoint
#     gke_cluster_ca_certificate = data.google_container_cluster.ds_to_pull_p1_gke_clusteinfo.master_auth.0.cluster_ca_certificate
#   }
# }

# Resource: Access the configuration of the Google Cloud provider.
data "google_client_config" "default" {}

# Provider: google
provider "google" {
  project = var.gcp_project
  region = var.gcp_region1
}

# Provider: kubernetes
provider "kubernetes" {
  host  = "https://${data.google_container_cluster.ds_to_pull_p1_gke_clusteinfo.endpoint}"
  token = data.google_client_config.default.access_token
  cluster_ca_certificate = base64decode(data.google_container_cluster.ds_to_pull_p1_gke_clusteinfo.master_auth.0.cluster_ca_certificate)
  # Additional Reference: https://registry.terraform.io/providers/hashicorp/google/latest/docs/guides/using_gke_with_terraform#using-the-kubernetes-and-helm-providers
  exec {
    api_version = "client.authentication.k8s.io/v1beta1"
    command     = "gke-gcloud-auth-plugin"
  }
}