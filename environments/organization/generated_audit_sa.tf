# __generated__ by Terraform
# Please review these resources and move them into your main configuration files.

# __generated__ by Terraform from "projects/newhostproject-508208/serviceAccounts/poc-audit-sa@newhostproject-508208.iam.gserviceaccount.com"
resource "google_service_account" "audit" {
  account_id                   = "poc-audit-sa"
  create_ignore_already_exists = null
  deletion_policy              = "DELETE"
  description                  = null
  disabled                     = false
  display_name                 = "POC Audit Service Account"
  project                      = "newhostproject-508208"
}
