# SETUP
module "compute" {
  source  = "ptfe.this-demo.rocks/PNC/compute/vsphere"
  version = "1.0.1"
prefix = "${var.prefix}"

// VM Details
vmname_prefix = "${var.vmname_prefix}"
vmname = "${var.vmname}"
vmdomain = "${var.vmdomain}"
cpu_number = "${var.cpu_number}"
ram_size = "${var.ram_size}"

// Template
vmtemplate = "${var.vmtemplate}"

// Destination
dc = "${var.dc}"
cluster = "${var.cluster}"
vmfolder = "${var.vmfolder}"
datastore = "${var.datastore}"
// ds_cluster = "DatastoreCluster"

// Network
vnet = "${var.vnet}"
ipv4submask = "${var.ipv4submask}"
ipaddress = "${var.ipaddress}"
vmgateway = "${var.vmgateway}"
vmdns = "${var.vmdns}"

// OS Disk
os_disk_size_gb = "${var.os_disk_size_gb}"

// Data Disk 1
data_disk_size_gb = "${var.data_disk_size_gb}"
label = "${var.label}"

// Tags
//tagCategory = "Customer"
//tag = "HashiCorp

}