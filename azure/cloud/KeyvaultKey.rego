package rule

# https://docs.microsoft.com/en-us/azure/templates/microsoft.keyvault/vaults/secrets

#
# PR-AZR-KV-004
#

default kv_expire = null

azure_attribute_absence["kv_expire"] {
    not input.properties.attributes.exp
}


azure_issue["kv_expire"] {
    to_number(resource.properties.attributes.exp) < 0
}


kv_expire {
    not azure_attribute_absence["kv_expire"]
    not azure_issue["kv_expire"]
}

kv_expire = false {
    azure_issue["kv_expire"]
}

kv_expire = false {
    azure_attribute_absence["kv_expire"]
}

kv_expire_err = "Azure Key Vault attribute 'exp' or 'expiryTime' is missing from the resource" {
    azure_attribute_absence["kv_expire"]
} else = "Azure Key Vault keys currently dont have any expiration date" {
    azure_issue["kv_expire"]
}

kv_expire_metadata := {
    "Policy Code": "PR-AZR-KV-004",
    "Type": "Cloud",
    "Product": "AZR",
    "Language": "",
    "Policy Title": "Azure Key Vault keys should have an expiration date",
    "Policy Description": "This policy identifies Azure Key Vault keys that do not have an expiration date. As a best practice, set an expiration date for each secret and rotate the secret regularly.",
    "Resource Type": "microsoft.keyvault/vaults/keys",
    "Policy Help URL": "",
    "Resource Help URL": "https://docs.microsoft.com/en-us/azure/templates/microsoft.keyvault/vaults/secrets"
}