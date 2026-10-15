resource "google_folder_iam_member" "audit_browser" {
  folder = "folders/1003137472973"
  role   = "roles/browser"
  member = "serviceAccount:poc-audit-sa@newhostproject-508208.iam.gserviceaccount.com"
}
resource "google_project_iam_member" "app_logging" {
  project = "devprojectpoc-8288"
  role    = "roles/logging.logWriter"
  member  = "serviceAccount:poc-app-sa@devprojectpoc-8288.iam.gserviceaccount.com"
}
