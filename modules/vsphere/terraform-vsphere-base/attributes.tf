// Apply attribute to the folder
// https://www.terraform.io/docs/providers/vsphere/r/custom_attribute.html

resource "vsphere_custom_attribute" "att_demo" {
  name                = "Demo"
  managed_object_type = "VirtualMachine"
}


# Use like this: 
# custom_attributes = "${map(vsphere_custom_attribute.att_demo.id, "${var.attDemoValue}")}"