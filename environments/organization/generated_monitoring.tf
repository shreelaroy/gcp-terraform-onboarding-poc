# __generated__ by Terraform
# Please review these resources and move them into your main configuration files.

# __generated__ by Terraform from "projects/devprojectpoc-8288/alertPolicies/9598989921225712735"
resource "google_monitoring_alert_policy" "vm_cpu" {
  combiner              = "OR"
  deletion_policy       = "DELETE"
  display_name          = "POC VM CPU High"
  enabled               = true
  notification_channels = []
  project               = "devprojectpoc-8288"
  severity              = null
  user_labels           = {}
  conditions {
    display_name = "VM CPU Above 80 Percent"
    condition_threshold {
      comparison              = "COMPARISON_GT"
      denominator_filter      = null
      duration                = "300s"
      evaluation_missing_data = null
      filter                  = "resource.type=\"gce_instance\" AND metric.type=\"compute.googleapis.com/instance/cpu/utilization\""
      threshold_value         = 0.8
    }
  }
}
