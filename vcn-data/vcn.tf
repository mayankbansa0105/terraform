variable "tenancy_ocid" {}
variable "user_ocid" {}
variable "fingerprint" {}
variable "compartment_ocid" {}
variable "region" {}

provider "oci" {
  tenancy_ocid         = "${var.tenancy_ocid}"
  user_ocid            = "${var.user_ocid}"
  region               = "${var.region}"
  disable_auto_retries = "true"
}

data "oci_core_virtual_network" "ExampleVCN" {
  
  compartment_id = "${var.compartment_ocid}"
  
  }


