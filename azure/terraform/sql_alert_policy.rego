package rule

# https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/mssql_server_security_alert_policy

# PR-AZR-0129-TRF

default sql_server_alert = null

azure_attribute_absence["sql_server_alert"] {
    resource := input.resources[_]
    lower(resource.type) == "azurerm_mssql_server_security_alert_policy"
    not resource.properties.state
}

azure_sql_security_alert_disabled["sql_server_alert"] {
    resource := input.resources[_]
    lower(resource.type) == "azurerm_mssql_server_security_alert_policy"
    lower(resource.properties.state) == "disabled"
}

sql_server_alert {
    lower(input.resources[_].type) == "azurerm_mssql_server_security_alert_policy"
    not azure_attribute_absence["sql_server_alert"]
    not azure_sql_security_alert_disabled["sql_server_alert"]
}

sql_server_alert = false {
    azure_attribute_absence["sql_server_alert"]
}

sql_server_alert = false {
    azure_sql_security_alert_disabled["sql_server_alert"]
}

sql_server_alert_err = "azurerm_mssql_server_security_alert_policy property 'state' need to be exist. Its missing from the resource. Please set the value to 'Enabled' after property addition." {
    azure_attribute_absence["sql_server_alert"]
} else = "Security alert is currently not enabled on SQL Server" {
    azure_sql_security_alert_disabled["sql_server_alert"]
}

sql_server_alert_metadata := {
    "Policy Code": "PR-AZR-0129-TRF",
    "Type": "IaC",
    "Product": "AZR",
    "Language": "Terraform",
    "Policy Title": "Ensure Security Alert is enabled on Azure SQL Server",
    "Policy Description": "Advanced data security should be enabled on your SQL servers.",
    "Resource Type": "azurerm_mssql_server_security_alert_policy",
    "Policy Help URL": "",
    "Resource Help URL": "https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/mssql_server_security_alert_policy"
}