package rule

# https://docs.microsoft.com/en-us/azure/templates/microsoft.sql/2018-06-01-preview/servers/databases/securityalertpolicies

#
# PR-AZR-0054-TRF
#

default dbsec_threat_retention = null

azure_attribute_absence["dbsec_threat_retention"] {
    resource := input.json.resources[_]
    lower(resource.type) == "azurerm_mssql_server_security_alert_policy"
    not resource.properties.state
}

azure_issue["dbsec_threat_retention"] {
    resource := input.json.resources[_]
    lower(resource.type) == "azurerm_mssql_server_security_alert_policy"
    lower(resource.properties.state) != "enabled"
}

azure_issue["dbsec_threat_retention"] {
    resource := input.json.resources[_]
    lower(resource.type) == "azurerm_mssql_server_security_alert_policy"
    to_number(resource.properties.retention_days) <= 90
}

dbsec_threat_retention {
    lower(input.json.resources[_].type) == "azurerm_mssql_server_security_alert_policy"
    not azure_issue["dbsec_threat_retention"]
    not azure_attribute_absence["dbsec_threat_retention"]
}

dbsec_threat_retention = false {
    azure_issue["dbsec_threat_retention"]
}

dbsec_threat_retention = false {
    azure_attribute_absence["dbsec_threat_retention"]
}

dbsec_threat_retention_err = "Azure SQL DB with Threat Retention less than 91 days" {
    azure_issue["dbsec_threat_retention"]
}

dbsec_threat_retention_miss_err = "DB policy attribute state missing in the resource" {
    azure_attribute_absence["dbsec_threat_retention"]
}

#
# PR-AZR-0055-TRF
#

default dbsec_threat_email = null

azure_attribute_absence["dbsec_threat_email"] {
    resource := input.json.resources[_]
    lower(resource.type) == "azurerm_mssql_server_security_alert_policy"
    not resource.properties.state
}

azure_issue["dbsec_threat_email"] {
    resource := input.json.resources[_]
    lower(resource.type) == "azurerm_mssql_server_security_alert_policy"
    lower(resource.properties.state) != "enabled"
}

azure_issue["dbsec_threat_email"] {
    resource := input.json.resources[_]
    lower(resource.type) == "azurerm_mssql_server_security_alert_policy"
    resource.properties.email_account_admins != true
}

azure_issue["dbsec_threat_email"] {
    resource := input.json.resources[_]
    lower(resource.type) == "azurerm_mssql_server_security_alert_policy"
    count(resource.properties.email_addresses) == 0
}

dbsec_threat_email {
    lower(input.json.resources[_].type) == "azurerm_mssql_server_security_alert_policy"
    not azure_issue["dbsec_threat_email"]
    not azure_attribute_absence["dbsec_threat_email"]
}

dbsec_threat_email = false {
    azure_issue["dbsec_threat_email"]
}

dbsec_threat_email = false {
    azure_attribute_absence["dbsec_threat_email"]
}

dbsec_threat_email_err = "Azure SQL DB with disabled Email service and co-administrators for Threat Detection" {
    azure_issue["dbsec_threat_email"]
}

dbsec_threat_email_miss_err = "DB policy attribute state missing in the resource" {
    azure_attribute_absence["dbsec_threat_email"]
}

#
# PR-AZR-0061-TRF
# PR-AZR-0097-TRF
#

default dbsec_threat_alert = null

azure_attribute_absence["dbsec_threat_alert"] {
    resource := input.json.resources[_]
    lower(resource.type) == "azurerm_mssql_server_security_alert_policy"
    not resource.properties.state
}

azure_issue["dbsec_threat_alert"] {
    resource := input.json.resources[_]
    lower(resource.type) == "azurerm_mssql_server_security_alert_policy"
    lower(resource.properties.state) != "enabled"
}

azure_issue["dbsec_threat_alert"] {
    resource := input.json.resources[_]
    lower(resource.type) == "azurerm_mssql_server_security_alert_policy"
    count(resource.properties.disabledAlerts) > 0
}

dbsec_threat_alert {
    lower(input.json.resources[_].type) == "azurerm_mssql_server_security_alert_policy"
    not azure_issue["dbsec_threat_alert"]
    not azure_attribute_absence["dbsec_threat_alert"]
}

dbsec_threat_alert = false {
    azure_issue["dbsec_threat_alert"]
}

dbsec_threat_alert = false {
    azure_attribute_absence["dbsec_threat_alert"]
}

dbsec_threat_alert_err = "Azure SQL Server threat detection alerts not enabled for all threat types" {
    azure_issue["dbsec_threat_alert"]
}

dbsec_threat_alert_miss_err = "DB policy attribute state missing in the resource" {
    azure_attribute_absence["dbsec_threat_alert"]
}

#
# PR-AZR-0088-TRF
#

default sql_alert = null

azure_attribute_absence["sql_alert"] {
    resource := input.json.resources[_]
    lower(resource.type) == "azurerm_mssql_server_security_alert_policy"
    not resource.properties.state
}

azure_issue["sql_alert"] {
    resource := input.json.resources[_]
    lower(resource.type) == "azurerm_mssql_server_security_alert_policy"
    lower(resource.properties.state) != "enabled"
}

azure_issue["sql_alert"] {
    resource := input.json.resources[_]
    lower(resource.type) == "azurerm_mssql_server_security_alert_policy"
    not resource.properties.email_account_admins
}

azure_issue["sql_alert"] {
    resource := input.json.resources[_]
    lower(resource.type) == "azurerm_mssql_server_security_alert_policy"
    resource.properties.email_account_admins != true
}

sql_alert {
    lower(input.json.resources[_].type) == "azurerm_mssql_server_security_alert_policy"
    not azure_issue["sql_alert"]
    not azure_attribute_absence["sql_alert"]
}

sql_alert = false {
    azure_issue["sql_alert"]
}

sql_alert = false {
    azure_attribute_absence["sql_alert"]
}

sql_alert_err = "Send alerts on field value on SQL Databases is misconfigured" {
    azure_issue["sql_alert"]
}

sql_alert_miss_err = "DB policy attribute state missing in the resource" {
    azure_attribute_absence["sql_alert"]
}

#
# PR-AZR-0096-TRF
#

default dbsec_threat_off = null

azure_attribute_absence["dbsec_threat_off"] {
    resource := input.json.resources[_]
    lower(resource.type) == "azurerm_mssql_server_security_alert_policy"
    not resource.properties.state
}

azure_issue["dbsec_threat_off"] {
    resource := input.json.resources[_]
    lower(resource.type) == "azurerm_mssql_server_security_alert_policy"
    lower(resource.properties.state) != "enabled"
}

dbsec_threat_off {
    lower(input.json.resources[_].type) == "azurerm_mssql_server_security_alert_policy"
    not azure_issue["dbsec_threat_off"]
    not azure_attribute_absence["dbsec_threat_off"]
}

dbsec_threat_off = false {
    azure_issue["dbsec_threat_off"]
}

dbsec_threat_off = false {
    azure_attribute_absence["dbsec_threat_off"]
}

dbsec_threat_off_err = "Threat Detection on SQL databases is set to Off" {
    azure_issue["dbsec_threat_off"]
}

dbsec_threat_off_miss_err = "DB policy attribute state missing in the resource" {
    azure_attribute_absence["dbsec_threat_off"]
}