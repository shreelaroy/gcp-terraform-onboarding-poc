# __generated__ by Terraform
# Please review these resources and move them into your main configuration files.

# __generated__ by Terraform from "projects/hostprojectpoc-8288/regions/us-central1/subnetworks/poc-app-subnet"
resource "google_compute_subnetwork" "app" {
  allow_subnet_cidr_routes_overlap = false
  deletion_policy                  = "DELETE"
  description                      = null
  ip_cidr_range                    = "10.10.0.0/24"
  ip_collection                    = null
  ipv6_access_type                 = null
  name                             = "poc-app-subnet"
  network                          = "https://www.googleapis.com/compute/v1/projects/hostprojectpoc-8288/global/networks/poc-shared-vpc"
  private_ip_google_access         = true
  private_ipv6_google_access       = "DISABLE_GOOGLE_ACCESS"
  project                          = "hostprojectpoc-8288"
  purpose                          = "PRIVATE"
  region                           = "us-central1"
  reserved_internal_range          = null
  resolve_subnet_mask              = null
  role                             = null
  send_secondary_ip_range_if_empty = null
  stack_type                       = "IPV4_ONLY"
  secondary_ip_range {
    ip_cidr_range           = "10.20.0.0/16"
    range_name              = "poc-pods"
    reserved_internal_range = null
  }
  secondary_ip_range {
    ip_cidr_range           = "10.30.0.0/20"
    range_name              = "poc-services"
    reserved_internal_range = null
  }
}
