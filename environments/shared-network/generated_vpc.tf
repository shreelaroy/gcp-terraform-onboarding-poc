# __generated__ by Terraform
# Please review these resources and move them into your main configuration files.

# __generated__ by Terraform from "projects/hostprojectpoc-8288/global/networks/poc-shared-vpc"
resource "google_compute_network" "shared" {
  auto_create_subnetworks                   = false
  bgp_always_compare_med                    = false
  bgp_best_path_selection_mode              = "LEGACY"
  delete_bgp_always_compare_med             = false
  delete_default_routes_on_create           = false
  deletion_policy                           = "DELETE"
  description                               = null
  enable_ula_internal_ipv6                  = false
  mtu                                       = 0
  name                                      = "poc-shared-vpc"
  network_firewall_policy_enforcement_order = "AFTER_CLASSIC_FIREWALL"
  network_profile                           = null
  project                                   = "hostprojectpoc-8288"
  routing_mode                              = "REGIONAL"
}
