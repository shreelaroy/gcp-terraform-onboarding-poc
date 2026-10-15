# __generated__ by Terraform
# Please review these resources and move them into your main configuration files.

# __generated__ by Terraform from "projects/devprojectpoc-8288/locations/us-central1/services/poc-cloudrun"
resource "google_cloud_run_v2_service" "app" {
  annotations          = {}
  client               = "gcloud"
  client_version       = "587.0.0"
  custom_audiences     = []
  default_uri_disabled = false
  deletion_policy      = "DELETE"
  deletion_protection  = true
  description          = null
  iap_enabled          = false
  ingress              = "INGRESS_TRAFFIC_ALL"
  invoker_iam_disabled = false
  labels               = {}
  launch_stage         = "GA"
  location             = "us-central1"
  name                 = "poc-cloudrun"
  project              = "devprojectpoc-8288"
  tags                 = null
  scaling {
    manual_instance_count = 0
    max_instance_count    = 20
    min_instance_count    = 0
    scaling_mode          = null
  }
  template {
    annotations                      = {}
    encryption_key                   = null
    execution_environment            = null
    gpu_zonal_redundancy_disabled    = false
    health_check_disabled            = false
    labels                           = {}
    max_instance_request_concurrency = 80
    revision                         = null
    service_account                  = "poc-app-sa@devprojectpoc-8288.iam.gserviceaccount.com"
    session_affinity                 = false
    timeout                          = "300s"
    containers {
      args             = []
      base_image_uri   = null
      command          = []
      depends_on       = []
      image            = "us-docker.pkg.dev/cloudrun/container/hello:latest"
      name             = null
      sandbox_launcher = false
      working_dir      = null
      ports {
        container_port = 8080
        name           = "http1"
      }
      resources {
        cpu_idle = true
        limits = {
          cpu    = "1000m"
          memory = "512Mi"
        }
        startup_cpu_boost = true
      }
      startup_probe {
        failure_threshold     = 1
        initial_delay_seconds = 0
        period_seconds        = 240
        timeout_seconds       = 240
        tcp_socket {
          port = 8080
        }
      }
    }
    scaling {
      max_instance_count = 1
      min_instance_count = 0
    }
    vpc_access {
      connector = null
      egress    = "PRIVATE_RANGES_ONLY"
      network_interfaces {
        network    = "projects/hostprojectpoc-8288/global/networks/poc-shared-vpc"
        subnetwork = "projects/hostprojectpoc-8288/regions/us-central1/subnetworks/poc-app-subnet"
        tags       = []
      }
    }
  }
  traffic {
    percent  = 100
    revision = null
    tag      = null
    type     = "TRAFFIC_TARGET_ALLOCATION_TYPE_LATEST"
  }
}
