package rule

# https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/virtual_network_peering

#
# PR-AZR-0075-TRF
#

default vnet_peer = null
# this checking is not necessary here as azurerm_virtual_network can be created without azurerm_virtual_network_peering
#azure_attribute_absence["vnet_peer"] {
#    count([c | input.resources[_].type == "azurerm_virtual_network"; c := 1]) != count([c | input.resources[_].type == "azurerm_virtual_network_peering"; c := 1])
#}

# Defaults to true.
azure_attribute_absence["vnet_peer"] {
    resource := input.resources[_]
    lower(resource.type) == "azurerm_virtual_network_peering"
    not resource.properties.allow_virtual_network_access
}

azure_issue["vnet_peer"] {
    resource := input.resources[_]
    lower(resource.type) == "azurerm_virtual_network_peering"
    resource.properties.allow_virtual_network_access != true
}

vnet_peer {
    azure_attribute_absence["vnet_peer"]
    not azure_issue["vnet_peer"]
}

vnet_peer {
    lower(input.resources[_].type) == "azurerm_virtual_network_peering"
    not azure_attribute_absence["vnet_peer"]
    not azure_issue["vnet_peer"]
}

vnet_peer = false {
    azure_issue["vnet_peer"]
}

#vnet_peer_err = "Resource azurerm_virtual_network and azurerm_virtual_network_peering need to be exist. one or both are missing from the resource." {
#    azure_attribute_absence["vnet_peer"]
#} else = "Azure virtual network peering state is currently not connected"  {
#    azure_issue["vnet_peer"]
#}

vnet_peer_err = "Azure virtual network peering state is currently not connected" {
    azure_issue["vnet_peer"]
}

vnet_peer_metadata := {
    "Policy Code": "PR-AZR-0075-TRF",
    "Type": "IaC",
    "Product": "AZR",
    "Language": "Terraform",
    "Policy Title": "Azure virtual network peering state should be connected",
    "Policy Description": "Virtual network peering enables you to connect two Azure virtual networks so that the resources in these networks are directly connected._x005F_x000D_ _x005F_x000D_ This policy identifies Azure virtual network peers that are disconnected. Typically, the disconnection happens when a peering configuration is deleted on one virtual network, and the other virtual network reports the peering status as disconnected.",
    "Resource Type": "azurerm_virtual_network_peering",
    "Policy Help URL": "",
    "Resource Help URL": "https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/virtual_network_peering"
}
