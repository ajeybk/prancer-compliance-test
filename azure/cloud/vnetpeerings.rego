package rule

# https://docs.microsoft.com/en-us/azure/templates/microsoft.network/virtualnetworks/virtualnetworkpeerings

#
# PR-AZR-CLD-NET-004
#

default vnet_peer = null

azure_attribute_absence["vnet_peer"] {
    resource := input.resources[_]
    lower(resource.type) == "microsoft.network/virtualnetworks/virtualnetworkpeerings"
    not resource.properties.peeringState
}


azure_issue["vnet_peer"] {
    resource := input.resources[_]
    lower(resource.type) == "microsoft.network/virtualnetworks/virtualnetworkpeerings"
    lower(resource.properties.peeringState) != "connected"
}


vnet_peer {
    lower(input.resources[_].type) == "microsoft.network/virtualnetworks/virtualnetworkpeerings"
    not azure_attribute_absence["vnet_peer"]
    not azure_issue["vnet_peer"]
}

vnet_peer = false {
    azure_issue["vnet_peer"]
}

vnet_peer = false {
    azure_attribute_absence["vnet_peer"]
}

vnet_peer_err = "Azure virtual network peering state is currently not connected" {
    azure_issue["vnet_peer"]
} else = "Azure virtual network peering state property 'peeringState' is missing from the resource" {
    azure_attribute_absence["vnet_peer"]
}

vnet_peer_metadata := {
    "Policy Code": "PR-AZR-CLD-NET-004",
    "Type": "Cloud",
    "Product": "AZR",
    "Language": "",
    "Policy Title": "Azure virtual network peering state should be connected",
    "Policy Description": "Virtual network peering enables you to connect two Azure virtual networks so that the resources in these networks are directly connected.<br><br>This policy identifies Azure virtual network peers that are disconnected. Typically, the disconnection happens when a peering configuration is deleted on one virtual network, and the other virtual network reports the peering status as disconnected.",
    "Resource Type": "microsoft.network/virtualnetworks/virtualnetworkpeerings",
    "Policy Help URL": "",
    "Resource Help URL": "https://docs.microsoft.com/en-us/azure/templates/microsoft.network/virtualnetworks/virtualnetworkpeerings"
}
