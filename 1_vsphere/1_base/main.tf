variable "prefix" { }
variable "dc" { }
variable "host" { }
variable "cluster" { }
variable "datastore" { }
variable "vmtemplate" { }
variable "vnet" { }
variable "attDemoValue" { }
variable "catEnvironment" { }


module "base" {
  source = "ptfe.this-demo.rocks/PNC/base/vsphere"
  version = "1.0.7"
    prefix = "${var.prefix}"
    dc = "${var.dc}"
    cluster = "${var.cluster}"
    host = "${var.host}"
    datastore = "${var.datastore}"
    vmtemplate = "${var.vmtemplate}"
    vnet = "${var.vnet}"
    attDemoValue = "${var.attDemoValue}"
    catEnvironment = "${var.catEnvironment}"
}