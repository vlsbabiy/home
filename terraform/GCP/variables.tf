variable "region" {
  default = "us-central1"
}

variable "region_zone" {
  default = "us-central1-f"
}

variable "project_id" {
  description = "Project ID to which you want plan or apply template"
}

variable "network" {
  default = "mynetwork"
}

variable "credentials_file_path" {
  description = "Location of the service account key"
  default     = "/home/credentials/gcp/key.json"
}

variable "subnetwork" {
  default = "my-public-subnetwork"
}

variable "subnetwork_ip_range" {
  default = "10.2.0.0/16"
}

variable "instance" {
  default = "my-instance"
}

variable "instance_type" {
  default = "n1-standard-1"
}

variable "instance_zone" {
  default = "us-central1-a"
}

variable "ssh_username" {
  default = "root"
}

variable "ssh_public_key_file" {
  default = "~/.ssh/id_rsa.pub"
}

variable "ssh_private_key_file" {
  description = "SSH private key file used to access instances"
  default     = ""
}
