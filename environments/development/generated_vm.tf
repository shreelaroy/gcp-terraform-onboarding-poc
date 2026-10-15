# __generated__ by Terraform
# Please review these resources and move them into your main configuration files.

# __generated__ by Terraform
resource "google_compute_instance" "web" {
  allow_stopping_for_update  = null
  can_ip_forward             = false
  deletion_policy            = "DELETE"
  deletion_protection        = false
  description                = null
  desired_status             = null
  enable_display             = false
  hostname                   = null
  key_revocation_action_type = null
  labels = {
    managed_by = "terraform"
  }
  machine_type            = "e2-micro"
  metadata                = {}
  metadata_startup_script = null
  name                    = "poc-web-vm"
  project                 = "devprojectpoc-8288"
  resource_policies       = []
  tags                    = []
  zone                    = "us-central1-a"
  boot_disk {
    auto_delete                     = true
    device_name                     = "persistent-disk-0"
    disk_encryption_key_raw         = null # sensitive
    disk_encryption_key_rsa         = null # sensitive
    disk_encryption_service_account = null
    force_attach                    = false
    guest_os_features               = ["UEFI_COMPATIBLE", "VIRTIO_SCSI_MULTIQUEUE", "GVNIC", "SEV_CAPABLE", "SEV_LIVE_MIGRATABLE_V2", "SUSPEND_SAFE_FPR"]
    interface                       = null
    mode                            = "READ_WRITE"
    source                          = "https://www.googleapis.com/compute/v1/projects/devprojectpoc-8288/zones/us-central1-a/disks/poc-web-vm"
    initialize_params {
      architecture                = "X86_64"
      enable_confidential_compute = false
      image                       = "https://www.googleapis.com/compute/v1/projects/debian-cloud/global/images/debian-12-bookworm-v20261006"
      labels                      = {}
      provisioned_iops            = 0
      provisioned_throughput      = 0
      replica_zones               = []
      resource_manager_tags       = {}
      resource_policies           = []
      size                        = 10
      storage_pool                = null
      type                        = "pd-standard"
    }
  }
  network_interface {
    network            = "https://www.googleapis.com/compute/v1/projects/hostprojectpoc-8288/global/networks/poc-shared-vpc"
    network_ip         = "10.10.0.2"
    nic_type           = null
    queue_count        = 0
    stack_type         = "IPV4_ONLY"
    subnetwork         = "https://www.googleapis.com/compute/v1/projects/hostprojectpoc-8288/regions/us-central1/subnetworks/poc-app-subnet"
    subnetwork_project = "hostprojectpoc-8288"
  }
  scheduling {
    automatic_restart           = true
    availability_domain         = 0
    host_error_timeout_seconds  = 0
    instance_termination_action = null
    min_node_cpus               = 0
    on_host_maintenance         = "MIGRATE"
    preemptible                 = false
    provisioning_model          = "STANDARD"
    termination_time            = null
  }
  service_account {
    email  = "poc-app-sa@devprojectpoc-8288.iam.gserviceaccount.com"
    scopes = ["https://www.googleapis.com/auth/cloud-platform"]
  }
  shielded_instance_config {
    enable_integrity_monitoring = true
    enable_secure_boot          = false
    enable_vtpm                 = true
  }
}
