package rule

default rulepass = false

# https://docs.microsoft.com/en-us/azure/templates/microsoft.insights/2017-04-01/activitylogalerts

rulepass {
	input.properties.enabled == true
}
