// Prefix gets added to every resource
variable "prefix" {}

// Name of the Datacenter.
variable "dc" {
  description = "Name of the datacenter you want to deploy the VM to"
}

// Cluster
variable "cluster" {}

// Datastore
variable "datastore" {}

// Folder Name
variable "vmfolder" {}

// Name of VM Template
variable "vmtemplate" {
  description = "Name of the template available in the vSphere"
}


#### NETWORKING ####

variable "vnet" {
  description = "(Required)VLAN name where the VM should be deployed"
}

variable "ipv4submask" {
  description = "ipv4 Subnet mask"
  default     = 24
}

variable "ipaddress" {
  description = "host(VM) IP address in list format, support more than one IP. Should correspond to number of instances"
  type        = "list"
}

variable "vmgateway" {
  description = "VM gateway to set during provisioning"
}

variable "vmdns" {
  type = "list"
}

#### VM CONFIG ####
// Number of VMs
variable "instances" {
  description = "number of instances you want deploy from the template"
  #default     = 1
}

// VM Name
variable "vmname" {
  description = "The name of the virtual machine used to deploy the vms"
}

// VM Name prefix 
variable "vmname_prefix" {
  description = "The prefix of the name of the virtual machine used to deploy the vms"
}

// # of CPUS
variable "cpu_number" {
  description = "number of CPU (core per CPU) for the VM"
  default     = 1
}

// Ram (GB)
variable "ram_size" {
  description = "VM RAM size in megabytes"
  default     = 2048
}

// Add an additional data disk.
variable "os_disk_size_gb" {
  description = "OS data disk size size"
  default     = 16
}

// Add an additional data disk.
variable "data_disk_size_gb" {
  description = "Storage data disk size size"
  default     = 16
}

variable "vmdomain" {
  description = "default VM domain for linux guest customization or Windows when join_windomain is selected"
  default     = "vsphere.local"
}
