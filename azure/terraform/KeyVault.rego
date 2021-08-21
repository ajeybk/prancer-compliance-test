package rule

# https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/key_vault
# It's possible to define Key Vault Access Policies both within the azurerm_key_vault resource via the access_policy block and by using the azurerm_key_vault_access_policy resource. 
# However it's not possible to use both methods to manage Access Policies within a KeyVault, since there'll be conflicts.

# PR-AZR-0107-TRF

default KeyVault = null

azure_attribute_absence["KeyVault"] {
    resource := input.resources[_]
    lower(resource.type) == "azurerm_key_vault"
    access_policy := resource.properties.access_policy[_]
    not access_policy.key_permissions
    not access_policy.secret_permissions
    not access_policy.certificate_permissions
    not access_policy.storage_permissions
}

azure_issue["KeyVault"] {
    resource := input.resources[_]
    lower(resource.type) == "azurerm_key_vault"
    access_policy := resource.properties.access_policy[_]
    count(access_policy.key_permissions) == 0
    count(access_policy.secret_permissions) == 0
    count(access_policy.certificate_permissions) == 0
    count(access_policy.storage_permissions) == 0
}

KeyVault = false {
    azure_attribute_absence["KeyVault"]
}

KeyVault {
    lower(input.resources[_].type) == "azurerm_key_vault"
    not azure_attribute_absence["KeyVault"]
    not azure_issue["KeyVault"]
}

KeyVault = false {
    azure_issue["KeyVault"]
}

KeyVault_err = "access_policy block property 'key_permissions' or 'secret_permissions' or 'certificate_permissions' or 'storage_permissions' is missing from the azurerm_key_vault resource." {
    azure_attribute_absence["KeyVault"]
} else = "Currently no principal has access to Keyvault" {
    azure_issue["KeyVault"]
}

KeyVault_metadata := {
    "Policy Code": "PR-AZR-0107-TRF",
    "Type": "IaC",
    "Product": "AZR",
    "Language": "Terraform",
    "Policy Title": "Ensure at least one principal has access to Keyvault",
    "Policy Description": "Use the Azure Key Vault to store secrets within the Microsoft Azure environment. Secrets in Azure Key Vault are octet sequences with a maximum size of 25k bytes each.",
    "Resource Type": "azurerm_key_vault",
    "Policy Help URL": "",
    "Resource Help URL": "https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/key_vault"
}



# PR-AZR-0108-TRF
# As of 2020-12-15 Azure now requires that Soft Delete is enabled on Key Vaults and this can no longer be disabled. 
# Version v2.42 of the Azure Provider and later ignore the value of the soft_delete_enabled field and force this value to be true - 
# as such this field can be safely removed from your Terraform Configuration. This field will be removed in version 3.0 of the Azure Provider.
default enableSoftDelete = null
azure_attribute_absence ["enableSoftDelete"] {
    resource := input.resources[_]
    lower(resource.type) == "azurerm_key_vault"
    not resource.properties.soft_delete_enabled
}

azure_issue ["enableSoftDelete"] {
    resource := input.resources[_]
    lower(resource.type) == "azurerm_key_vault"
    resource.properties.soft_delete_enabled != true
}

enableSoftDelete {
    lower(input.resources[_].type) == "azurerm_key_vault"
    not azure_attribute_absence["enableSoftDelete"]
    not azure_issue["enableSoftDelete"]
}

enableSoftDelete = false {
    azure_issue["enableSoftDelete"]
}

enableSoftDelete {
    azure_attribute_absence["enableSoftDelete"]
    not azure_issue["enableSoftDelete"]
}

enableSoftDelete_err = "'Soft Delete' setting is currently not enabled for Key Vault" {
    azure_issue["enableSoftDelete"]
}

enableSoftDelete_metadata := {
    "Policy Code": "PR-AZR-0108-TRF",
    "Type": "IaC",
    "Product": "AZR",
    "Language": "Terraform",
    "Policy Title": "Ensure the key vault is recoverable - enable 'Soft Delete' setting for a Key Vault",
    "Policy Description": "The key vault contains object keys, secrets and certificates. Accidental unavailability of a key vault can cause immediate data loss or loss of security functions (authentication, validation, verification, non-repudiation, etc.) supported by the key vault objects. It is recommended the key vault be made recoverable by enabling the 'Do Not Purge' and 'Soft Delete' functions. This is in order to prevent loss of encrypted data including storage accounts, SQL databases, and/or dependent services provided by key vault objects (Keys, Secrets, Certificates) etc., as may happen in the case of accidental deletion by a user or from disruptive activity by a malicious user.",
    "Resource Type": "azurerm_key_vault",
    "Policy Help URL": "",
    "Resource Help URL": "https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/key_vault"
}


# PR-AZR-0109-TRF

default enablePurgeProtection = null

azure_attribute_absence ["enablePurgeProtection"] {
    resource := input.resources[_]
    lower(resource.type) == "azurerm_key_vault"
    not resource.properties.purge_protection_enabled
}

azure_issue ["enablePurgeProtection"] {
    resource := input.resources[_]
    lower(resource.type) == "azurerm_key_vault"
    resource.properties.purge_protection_enabled != true
}

enablePurgeProtection {
    lower(input.resources[_].type) == "azurerm_key_vault"
    not azure_attribute_absence["enablePurgeProtection"]
    not azure_issue["enablePurgeProtection"]
}

enablePurgeProtection = false {
    azure_issue["enablePurgeProtection"]
}

enablePurgeProtection = false {
    azure_attribute_absence["enablePurgeProtection"]
}

enablePurgeProtection_err = "azurerm_key_vault property 'purge_protection_enabled' is missing from the resource." {
    azure_attribute_absence["enableSoftDelete"]
} else = "Purge protection is currently not enabled on Key vault" {
    azure_issue["enableSoftDelete"]
}

enablePurgeProtection_metadata := {
    "Policy Code": "PR-AZR-0109-TRF",
    "Type": "IaC",
    "Product": "AZR",
    "Language": "Terraform",
    "Policy Title": "Key vault should have purge protection enabled",
    "Policy Description": "The key vault contains object keys, secrets and certificates. Accidental unavailability of a key vault can cause immediate data loss or loss of security functions (authentication, validation, verification, non-repudiation",
    "Resource Type": "azurerm_key_vault",
    "Policy Help URL": "",
    "Resource Help URL": "https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/key_vault"
}