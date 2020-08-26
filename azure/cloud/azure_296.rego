package rule
default rulepass = false

# https://docs.microsoft.com/en-us/azure/templates/microsoft.security/securitycontacts

rulepass {                                      
    re_match("^[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+\\.[a-zA-Z0-9-.]+$", input.properties.email)
}