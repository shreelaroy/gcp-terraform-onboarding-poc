import {
  to = google_compute_network.shared
  id = "projects/hostprojectpoc-8288/global/networks/poc-shared-vpc"
}

import {
  to = google_compute_global_address.psa_range
  id = "projects/hostprojectpoc-8288/global/addresses/poc-google-services-range"
}

import {
  to = google_compute_subnetwork.app
  id = "projects/hostprojectpoc-8288/regions/us-central1/subnetworks/poc-app-subnet"
}
