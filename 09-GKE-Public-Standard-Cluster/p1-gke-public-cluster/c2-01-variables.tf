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