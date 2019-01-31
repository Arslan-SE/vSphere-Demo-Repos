module "test" {
  source = "../modules/vsphere/terraform-vsphere-base"
    prefix = "AAR"
    dc = "PacketDatacenter"
    cluster = "MainCluster"
    host = ""
    datastore = "datastore1"
    vmtemplate = "UbuntuTemplate"
    vnet = "VM Network"
    attDemoValue = true
    catEnvironment = "Production"
}