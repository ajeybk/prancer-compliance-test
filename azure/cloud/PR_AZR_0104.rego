package rule

# https://docs.microsoft.com/en-us/rest/api/containerregistry/registries/get
# PR_AZR_0104.rego

default adminUserEnabled = null
azure_issue ["adminUserEnabled"] {
    resource := input.resources[_]
    lower(resource.type) == "microsoft.containerregistry/registries"
    resource.properties.adminUserEnabled != false
}

adminUserEnabled {
    lower(input.resources[_].type) == "microsoft.containerregistry/registries"
    not azure_issue["adminUserEnabled"]
}

adminUserEnabled = false {
    azure_issue["adminUserEnabled"]
}


adminUserEnabled_err = "" {
    azure_issue["adminUserEnabled"]
}