module "base" {
  source = "ptfe.this-demo.rocks/PNC/base/vsphere"
  version = "1.0.2"
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