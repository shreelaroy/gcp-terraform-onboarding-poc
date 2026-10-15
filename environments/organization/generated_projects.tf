resource "google_project" "data" {
  auto_create_network = true
  billing_account     = "01C1CA-ACB52A-4AD908"
  deletion_policy     = "PREVENT"
  folder_id           = "1003137472973"
  labels              = {}
  name                = "POC Data"
  project_id          = "dataprojectpoc-8288"

  lifecycle {
    prevent_destroy = true
  }
}

resource "google_project" "host" {
  auto_create_network = true
  billing_account     = "01C1CA-ACB52A-4AD908"
  deletion_policy     = "PREVENT"
  folder_id           = "1003137472973"
  labels              = {}
  name                = "POC Shared Network"
  project_id          = "hostprojectpoc-8288"

  lifecycle {
    prevent_destroy = true
  }
}

resource "google_project" "development" {
  auto_create_network = true
  billing_account     = "01C1CA-ACB52A-4AD908"
  deletion_policy     = "PREVENT"
  folder_id           = "1003137472973"
  labels              = {}
  name                = "POC Development"
  project_id          = "devprojectpoc-8288"

  lifecycle {
    prevent_destroy = true
  }
}
