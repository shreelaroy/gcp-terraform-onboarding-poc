resource "google_folder" "poc" {
  display_name = "terraform-onboarding-poc"
  parent       = "organizations/828833900121"

  deletion_protection = true

  lifecycle {
    prevent_destroy = true
  }
}
