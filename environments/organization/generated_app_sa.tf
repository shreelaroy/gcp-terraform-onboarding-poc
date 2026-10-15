# __generated__ by Terraform
# Please review these resources and move them into your main configuration files.

# __generated__ by Terraform from "projects/devprojectpoc-8288/serviceAccounts/poc-app-sa@devprojectpoc-8288.iam.gserviceaccount.com"
resource "google_service_account" "app" {
  account_id                   = "poc-app-sa"
  create_ignore_already_exists = null
  deletion_policy              = "DELETE"
  description                  = null
  disabled                     = false
  display_name                 = "POC Application Service Account"
  project                      = "devprojectpoc-8288"
  lifecycle {
    prevent_destroy = true
  }
}
