import {
  to = google_compute_instance.web
  id = "projects/devprojectpoc-8288/zones/us-central1-a/instances/poc-web-vm"
}
import {
  to = google_cloud_run_v2_service.app
  id = "projects/devprojectpoc-8288/locations/us-central1/services/poc-cloudrun"
}
import {
  to = google_container_cluster.poc
  id = "projects/devprojectpoc-8288/locations/us-central1-a/clusters/poc-gke"
}
