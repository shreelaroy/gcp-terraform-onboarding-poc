import {
  to = google_sql_database_instance.postgres
  id = "dataprojectpoc-8288/poc-postgres"
}
import {
  to = google_sql_database.app
  id = "projects/dataprojectpoc-8288/instances/poc-postgres/databases/poc_appdb"
}
import {
  to = google_bigquery_dataset.analytics
  id = "projects/dataprojectpoc-8288/datasets/poc_analytics"
}
import {
  to = google_bigquery_table.events
  id = "projects/dataprojectpoc-8288/datasets/poc_analytics/tables/deployment_events"
}
