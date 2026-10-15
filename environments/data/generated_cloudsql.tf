# __generated__ by Terraform
resource "google_sql_database_instance" "postgres" {
  name             = "poc-postgres"
  project          = "dataprojectpoc-8288"
  region           = "us-central1"
  database_version = "POSTGRES_16"

  deletion_policy     = "DELETE"
  deletion_protection = true

  settings {
    tier              = "db-f1-micro"
    edition           = "ENTERPRISE"
    activation_policy = "ALWAYS"
    availability_type = "ZONAL"
    disk_size         = 10
    disk_type         = "PD_SSD"
    disk_autoresize   = true

    ip_configuration {
      ipv4_enabled    = false
      private_network = "projects/hostprojectpoc-8288/global/networks/poc-shared-vpc"
      ssl_mode        = "ALLOW_UNENCRYPTED_AND_ENCRYPTED"
      server_ca_mode  = "GOOGLE_MANAGED_INTERNAL_CA"
    }

    location_preference {
      zone = "us-central1-a"
    }

    backup_configuration {
      enabled                        = false
      start_time                     = "10:00"
      point_in_time_recovery_enabled = false

      backup_retention_settings {
        retained_backups = 7
        retention_unit   = "COUNT"
      }
    }
  }
}
