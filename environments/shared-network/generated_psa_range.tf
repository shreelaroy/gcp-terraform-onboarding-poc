resource "google_compute_global_address" "psa_range" {
  project       = "hostprojectpoc-8288"
  name          = "poc-google-services-range"
  address_type  = "INTERNAL"
  purpose       = "VPC_PEERING"
  address       = "10.4.0.0"
  prefix_length = 16

  network = "projects/hostprojectpoc-8288/global/networks/poc-shared-vpc"

  lifecycle {
    prevent_destroy = true
  }
}
