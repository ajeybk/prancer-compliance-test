package rule

default rulepass = false

# https://docs.microsoft.com/en-us/azure/templates/microsoft.compute/virtualmachines/extensions

rulepass {
   input.properties.type == "IaaSAntimalware"
}