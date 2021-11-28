package rule

# https://docs.microsoft.com/en-us/azure/templates/microsoft.sql/2015-05-01-preview/servers/firewallrules
# https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/sql_firewall_rule
#
# PR-AZR-TRF-SQL-011
#

default db_firewall = null


azure_attribute_absence ["db_firewall"] {
    count([c | input.resources[_].type == "azurerm_sql_firewall_rule"; c := 1]) == 0
}

azure_attribute_absence["db_firewall"] {
    resource := input.resources[_]
    lower(resource.type) == "azurerm_sql_firewall_rule"
    not resource.properties.start_ip_address
}

azure_attribute_absence["db_firewall"] {
    resource := input.resources[_]
    lower(resource.type) == "azurerm_sql_firewall_rule"
    not resource.properties.end_ip_address
}

azure_issue["db_firewall"] {
    resource := input.resources[_]
    lower(resource.type) == "azurerm_sql_firewall_rule"
    contains(resource.properties.start_ip_address, "0.0.0.0")
}

azure_issue["db_firewall"] {
    resource := input.resources[_]
    lower(resource.type) == "azurerm_sql_firewall_rule"
    contains(resource.properties.end_ip_address, "0.0.0.0")
}

db_firewall {
    lower(input.resources[_].type) == "azurerm_sql_server"
    not azure_attribute_absence["db_firewall"]
    not azure_issue["db_firewall"]
}

db_firewall = false {
    lower(input.resources[_].type) == "azurerm_sql_server"
    azure_attribute_absence["db_firewall"]
}

db_firewall = false {
    lower(input.resources[_].type) == "azurerm_sql_server"
    azure_issue["db_firewall"]
}

db_firewall_err = "azurerm_sql_firewall_rule property 'start_ip_address' or 'end_ip_address' is missing from the resource" {
    lower(input.resources[_].type) == "azurerm_sql_server"
    azure_attribute_absence["db_firewall"]
} else = "SQL Server firewall rule configuration currently allowing full inbound access to everyone" {
    lower(input.resources[_].type) == "azurerm_sql_server"
    azure_issue["db_firewall"]
}

db_firewall_metadata := {
    "Policy Code": "PR-AZR-TRF-SQL-011",
    "Type": "IaC",
    "Product": "AZR",
    "Language": "Terraform",
    "Policy Title": "SQL Server Firewall rules should not configure to allow full inbound access to everyone",
    "Policy Description": "Firewalls grant access to databases based on the originating IP address of each request and should be within the range of START IP and END IP. Firewall settings with START IP and END IP both with 0.0.0.0 represents access to all Azure internal network. This setting needs to be turned-off to remove blanket access.",
    "Resource Type": "azurerm_sql_firewall_rule",
    "Policy Help URL": "",
    "Resource Help URL": "https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/sql_firewall_rule"
}
