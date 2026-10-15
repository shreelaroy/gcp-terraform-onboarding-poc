# __generated__ by Terraform
# Please review these resources and move them into your main configuration files.

# __generated__ by Terraform from "projects/dataprojectpoc-8288/datasets/poc_analytics/tables/deployment_events"
resource "google_bigquery_table" "events" {
  clustering                   = null
  dataset_id                   = "poc_analytics"
  deletion_policy              = "DELETE"
  deletion_protection          = true
  description                  = null
  friendly_name                = null
  ignore_auto_generated_schema = false
  ignore_schema_changes        = null
  labels                       = {}
  project                      = "dataprojectpoc-8288"
  require_partition_filter     = null
  resource_tags                = {}
  schema = jsonencode([{
    name = "deployment_id"
    type = "STRING"
    }, {
    name = "environment"
    type = "STRING"
    }, {
    name = "status"
    type = "STRING"
  }])
  table_id            = "deployment_events"
  table_metadata_view = null
}
