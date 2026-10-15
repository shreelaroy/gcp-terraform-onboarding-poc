# __generated__ by Terraform
# Please review these resources and move them into your main configuration files.

# __generated__ by Terraform from "projects/dataprojectpoc-8288/instances/poc-postgres/databases/poc_appdb"
resource "google_sql_database" "app" {
  charset         = "UTF8"
  collation       = "en_US.UTF8"
  deletion_policy = "DELETE"
  instance        = "poc-postgres"
  name            = "poc_appdb"
  project         = "dataprojectpoc-8288"
}
