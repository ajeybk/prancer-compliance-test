package rule
default rulepass = true

# SQL Encryption is set to OFF in Security Center
# If SQL Encryption is set to ON in Security Center test will pass
# Transparent Data Encryption on SQL databases should be enabled

# https://docs.microsoft.com/en-us/rest/api/resources/policyassignments/list#code-try-0

rulepass = false {                                      
   input.properties.parameters.sqlDbEncryptionMonitoringEffect.value == "Disabled"
}
