variable "region_zone" {
  description = "GCP zone targeted"
}

variable "image" {
  description = "GCP Image to use"
}

variable "instance_type" {
  description = "GCP Machine Type to use"
}

variable "ssh_user" {
  description = "instance SSH user"
}

variable "ssh_pub_key" {
  description = "SSH public key to authorize"
}

variable "node_count" {
  description = "variable to set the wanted number of host"
}