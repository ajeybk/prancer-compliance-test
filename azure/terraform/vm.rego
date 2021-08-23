package rule

# https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/virtual_machine

#
# PR-AZR-0065-TRF
#

default vm_aset = null

azure_attribute_absence["vm_aset"] {
    resource := input.resources[_]
    lower(resource.type) == "azurerm_virtual_machine"
    not resource.properties.availability_set_id
}

azure_issue["vm_aset"] {
    resource := input.resources[_]
    lower(resource.type) == "azurerm_virtual_machine"
    count(resource.properties.availability_set_id) == 0
}

vm_aset {
    lower(input.resources[_].type) == "azurerm_virtual_machine"
    not azure_attribute_absence["vm_aset"]
    not azure_issue["vm_aset"]
}

vm_aset = false {
    azure_attribute_absence["vm_aset"]
}

vm_aset = false {
    azure_issue["vm_aset"]
}

vm_aset_err = "azurerm_virtual_machine property 'availability_set_id' need to be exist. Its missing from the resource." {
    azure_attribute_absence["vm_aset"]
} else = "Azure Virtual Machine is not assigned to an availability set" {
    azure_issue["vm_aset"]
}

vm_aset_metadata := {
    "Policy Code": "PR-AZR-0065-TRF",
    "Type": "IaC",
    "Product": "AZR",
    "Language": "Terraform",
    "Policy Title": "Azure Virtual Machine should be assigned to an availability set",
    "Policy Description": "To provide application redundancy during planned or unplanned maintenance events, you can group two or more virtual machines (VMs) in an availability set. An availability set ensures that the VMs are distributed across multiple isolated hardware nodes in a cluster so that only a subset of your VMs are impacted should a hardware or software failure occur on Azure._x005F_x000D_ _x005F_x000D_ This policy identifies Azure VMs that are not deployed in an availability set. As a high availability (HA) best practice, deploy your VMs in an availability set.",
    "Resource Type": "azurerm_virtual_machine",
    "Policy Help URL": "",
    "Resource Help URL": "https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/virtual_machine"
}


# https://github.com/Azure/azure-quickstart-templates/blob/master/quickstarts/microsoft.compute/vm-new-or-existing-conditions/azuredeploy.json
# https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/virtual_machine
# PR-AZR-0136-TRF
#

default vm_linux_disabled_password_auth = null

azure_attribute_absence["vm_linux_disabled_password_auth"] {
    resource := input.resources[_]
    lower(resource.type) == "azurerm_virtual_machine"
    os_profile_linux_config := resource.properties.os_profile_linux_config[_]
    not os_profile_linux_config.disable_password_authentication
}

azure_issue["vm_linux_disabled_password_auth"] {
    resource := input.resources[_]
    lower(resource.type) == "azurerm_virtual_machine"
    os_profile_linux_config := resource.properties.os_profile_linux_config[_]
    os_profile_linux_config.disable_password_authentication == false
}

vm_linux_disabled_password_auth {
    lower(input.resources[_].type) == "azurerm_virtual_machine"
    not azure_attribute_absence["vm_linux_disabled_password_auth"]
    not azure_issue["vm_linux_disabled_password_auth"]
}

vm_linux_disabled_password_auth = false {
    azure_attribute_absence["vm_linux_disabled_password_auth"]
}

vm_linux_disabled_password_auth = false {
    azure_issue["vm_linux_disabled_password_auth"]
}

vm_linux_disabled_password_auth_err = "azurerm_virtual_machine property 'os_profile_linux_config.disable_password_authentication' is missing from the resource" {
    azure_attribute_absence["vm_linux_disabled_password_auth"]
} else = "Azure Linux Instance currently does not have basic authentication disabled" {
    azure_issue["vm_linux_disabled_password_auth"]
}

vm_linux_disabled_password_auth_metadata := {
    "Policy Code": "PR-AZR-0136-TRF",
    "Type": "IaC",
    "Product": "AZR",
    "Language": "Terraform",
    "Policy Title": "Azure Linux Instance should not use basic authentication(Use SSH Key Instead)",
    "Policy Description": "For security purpose, linux vm password authentication should be disabled. Use SSH Key Instead.",
    "Resource Type": "azurerm_virtual_machine",
    "Policy Help URL": "",
    "Resource Help URL": "https://docs.microsoft.com/en-us/azure/templates/microsoft.compute/virtualmachines"
}


