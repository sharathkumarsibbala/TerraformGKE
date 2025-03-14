# Terraform Remote State Datasource
data "terraform_remote_state" "ds_def_p1_gke_clusteinfo" {
  backend = "gcs"
  config = {
    bucket = "terraform_state_gke"
    prefix = "dev/gke-cluster-private"
  }
}

# output "get_p1_gke_cluster_name" {
#   description = "get gke cluster name from remote state data source"
#   value = data.terraform_remote_state.ds_def_p1_gke_clusteinfo.outputs.gke_cluster_name
# }

# output "get_p1_gke_cluster_location" {
#   value = data.terraform_remote_state.ds_def_p1_gke_clusteinfo.outputs.gke_cluster_location
# }

