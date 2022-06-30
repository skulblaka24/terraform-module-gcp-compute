terraform-module-gcp-compute
============================

Module to provision a vm on GCP with an external IP.

Note:

It does not hold a provider configuration inside.

This can be used:
```
provider "google" {
  region  = var.region
  project = var.project_name
}
```

# Exemple main.tf:
------------------

```
module "vm_compute_instance" {
  source  = "./modules/terraform-module-gcp-provisioning"

  region_zone = var.region_zone
  node_count = var.node_count
  ssh_pub_key = var.ssh_pub_key
  ssh_user = var.ssh_user
  image = var.image
  instance_type = var.instance_type
}
```

# Exemple terraform.auto.tfvars:
------------------------------

```
region = "europe-west1"
region_zone = "europe-west1-c"
project_name = "starfly-lab-290613"
node_count = "1"
image = "debian-cloud/debian-9"
ssh_user = "gauth"
ssh_pub_key = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAILBd8AerMuCVlT1ERPifxLdJ4ctQATQX6XMrzpQLK1kf master@starfly.fr"
instance_type = "n1-standard-2"
GOOGLE_CREDENTIALS = "fhdskjfs"
```

Modify variables to use it.
For example, add "GOOGLE_CREDENTIALS" to be able to connect to GCP on TFC.



