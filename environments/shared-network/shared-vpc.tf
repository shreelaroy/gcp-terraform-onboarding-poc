resource "google_compute_shared_vpc_host_project" "host" {
  project = "hostprojectpoc-8288"

  lifecycle {
    prevent_destroy = true
  }
}
