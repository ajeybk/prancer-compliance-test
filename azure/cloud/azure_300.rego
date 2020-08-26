package rule

default rulepass = false

# https://docs.microsoft.com/en-us/azure/templates/microsoft.security/pricings

rulepass {                                      
   lower(input.properties.pricingTier) == "standard"
}