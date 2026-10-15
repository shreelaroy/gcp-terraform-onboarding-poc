resource "google_service_networking_connection" "private" {
  network = "projects/hostprojectpoc-8288/global/networks/poc-shared-vpc"
  service = "servicenetworking.googleapis.com"
  reserved_peering_ranges = ["poc-google-services-range"]
  deletion_policy = "ABANDON"

  lifecycle {
    prevent_destroy = true
  }
}
