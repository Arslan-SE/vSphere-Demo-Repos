// Prefix gets added to every resource
prefix = "CBS_Demo_"

// VM Details
vmname_prefix = "CBS"
vmname = "testVm"
vmdomain = "vsphere.local"
cpu_number = "2"
ram_size = "2048"

// Template
vmtemplate = "UbuntuTemplate"

// Destination
dc = "PacketDatacenter"
cluster = "MainCluster"
vmfolder = "CBS_Demo"
datastore = "datastore1"
// ds_cluster = "DatastoreCluster"

// Network
vnet = "VM Network"
ipv4submask = "24"
ipaddress = ["10.100.0.207"] 
vmgateway = "10.100.0.1"
vmdns = ["8.8.8.8","1.1.1.1"]

// OS Disk
os_disk_size_gb = "16"

// Data Disk 1
data_disk_size_gb = "16"
label = "disk1"

// Tags
tagCategory = "Customer"
tag = "CBS"

// Attributes
attribute = "fromTerraform"
attributeValue = "Yes"