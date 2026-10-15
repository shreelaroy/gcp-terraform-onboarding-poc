# __generated__ by Terraform
# Please review these resources and move them into your main configuration files.

# __generated__ by Terraform from "folders/1003137472973/policies/compute.disableSerialPortAccess"
resource "google_org_policy_policy" "serial_access" {
  deletion_policy = "DELETE"
  name            = "compute.disableSerialPortAccess"
  parent          = "folders/1003137472973"
  spec {
    inherit_from_parent = false
    reset               = false
    rules {
      allow_all  = null
      deny_all   = null
      enforce    = "TRUE"
      parameters = null
    }
  }
}
