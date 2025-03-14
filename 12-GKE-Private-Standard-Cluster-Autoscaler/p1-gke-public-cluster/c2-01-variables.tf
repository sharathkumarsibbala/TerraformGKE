# Input Variables
# GCP Project
variable "gcp_project" {
  description = "Project in which GCP Resources to be created"
  type = string
  default = "sodium-sunup-452220-i9"
}
# GCP Region
variable "gcp_region1" {
  description = "Region in which GCP Resources to be created"
  type = string
  default = "us-east1"
}
# GCP Compute Engine Machine Type
variable "machine_type" {
  description = "Compute Engine Machine Type"
  type = string
  default = "e2-medium"
}
# Environment Variable
variable "environment" {
  description = "Environment Variable used as a prefix"
  type = string
  default = "dev"
}
# Business Division
variable "business_divsion" {
  description = "Business Division in the large organization this Infrastructure belongs"
  type = string
  default = "sap"
}
# IP CIDR range
variable "subnet_ip_range" {
  description = "subnet IP range"
  type = string
  default = "10.129.0.0/20"
}
variable "pods_ip_range" {
  description = "pod IP range"
  type = string
  default = "10.11.0.0/21"
}
variable "services_ip_range" {
  description = "services IP range"
  type = string
  default = "10.12.0.0/21"
}
variable "master_ip_range" {
  description = "k8s master IP range"
  type = string
  default = "10.13.0.0/28"
}