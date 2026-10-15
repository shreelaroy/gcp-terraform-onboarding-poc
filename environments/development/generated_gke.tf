# 1. Main GKE Cluster Resource
resource "google_container_cluster" "poc" {
  name     = "poc-gke"
  location = "us-central1-a"
  project  = "devprojectpoc-8288"

  enable_autopilot = false
  networking_mode  = "VPC_NATIVE"

  network    = "projects/hostprojectpoc-8288/global/networks/poc-shared-vpc"
  subnetwork = "projects/hostprojectpoc-8288/regions/us-central1/subnetworks/poc-app-subnet"

  ip_allocation_policy {
    cluster_secondary_range_name  = "poc-pods"
    services_secondary_range_name = "poc-services"
  }

  release_channel {
    channel = "REGULAR"
  }

  logging_service    = "logging.googleapis.com/kubernetes"
  monitoring_service = "monitoring.googleapis.com/kubernetes"
}

# 2. Separate Node Pool Resource
resource "google_container_node_pool" "poc_nodes" {
  name       = "default-pool"
  location   = "us-central1-a"
  cluster    = google_container_cluster.poc.name
  project    = "devprojectpoc-8288"
  node_count = 1

  management {
    auto_repair  = true
    auto_upgrade = true
  }

  node_config {
    machine_type = "e2-medium"
    disk_size_gb = 30
    disk_type    = "pd-balanced"
    image_type   = "COS_CONTAINERD"

    oauth_scopes = [
      "https://www.googleapis.com/auth/devstorage.read_only",
      "https://www.googleapis.com/auth/logging.write",
      "https://www.googleapis.com/auth/monitoring",
      "https://www.googleapis.com/auth/service.management.readonly",
      "https://www.googleapis.com/auth/servicecontrol",
      "https://www.googleapis.com/auth/trace.append"
    ]

    metadata = {
      disable-legacy-endpoints = "true"
    }
  }
}
