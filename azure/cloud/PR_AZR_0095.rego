#
# PR-AZR-0095
#

package rule
default rulepass = false

# System updates is set to OFF in Security Center
# If System updates is set to ON in Security Center test will pass
# System updates on virtual machine scale sets should be installed

# https://docs.microsoft.com/en-us/rest/api/resources/policyassignments/list#code-try-0

rulepass {
    lower(input.type) == "microsoft.authorization/policyassignments"
    contains(input.id, "systemUpdatesMonitoring")
}
