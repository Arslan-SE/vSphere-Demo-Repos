# SETUP
variable "prefix" {}
variable "org" { }
variable "workspaceName" { }


# Networking
module "networking" {
  source  = "ptfe.this-demo.rocks/PNC/networking/vsphere"
  version = "1.0.2"
  org = "${var.org}"
  workspaceName = "${var.workspaceName}"

}