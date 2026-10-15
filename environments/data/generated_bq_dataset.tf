# __generated__ by Terraform
resource "google_bigquery_dataset" "analytics" {
  dataset_id                 = "poc_analytics"
  delete_contents_on_destroy = false
  deletion_policy            = "DELETE"
  is_case_insensitive        = false
  labels                     = {}
  location                   = "US"
  max_time_travel_hours      = "168"
  project                    = "dataprojectpoc-8288"
  resource_tags              = {}

  access {
    role          = "OWNER"
    special_group = "projectOwners"
  }

  access {
    role          = "OWNER"
    user_by_email = "shreelaroygcp@gmail.com"
  }

  access {
    role          = "READER"
    special_group = "projectReaders"
  }

  access {
    role          = "WRITER"
    special_group = "projectWriters"
  }
}
