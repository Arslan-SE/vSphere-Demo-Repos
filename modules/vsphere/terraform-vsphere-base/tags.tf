// vSphere Tag Category (SINGLE or MULTIPLE)
resource "vsphere_tag_category" "catEnvironment" {
  name        = "Environment"
  description = "Managed by Terraform"
  cardinality = "MULTIPLE"

  // The types of objects this tag can be associated with.
  associable_types = [
    "VirtualMachine",
    "Folder",
  ]
}

// vSphere Tags
resource "vsphere_tag" "tagProd" {
  name        = "Production"
  category_id = "${vsphere_tag_category.catEnvironment.id}"
  description = "This is for a production environment."
}

resource "vsphere_tag" "tagDev" {
  name        = "Development"
  category_id = "${vsphere_tag_category.catEnvironment.id}"
  description = "This is for a development environment."
}

resource "vsphere_tag" "tagStage" {
  name        = "Staging"
  category_id = "${vsphere_tag_category.catEnvironment.id}"
  description = "This is for a staging environment."
}
