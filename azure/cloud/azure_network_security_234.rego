package rule
default rulepass = true

# Azure Network Security Group (NSG) having Inbound rule overly permissive to all traffic from Internet on UDP protocol
# If NSG dose not having Inbound rule overly permissive to all traffic from Internet on UDP protocol test will pass

# https://docs.microsoft.com/en-us/rest/api/virtualnetwork/networksecuritygroups/get
# https://resources.azure.com/subscriptions/db3667b7-cef9-4523-8e45-e2d9ed4518ab/resourceGroups/hardikResourceGroup/providers/Microsoft.Network/networkSecurityGroups/hardikVM-nsg

rulepass = false {                                      
   count(security_protocol_udp) > 0
}

# "securityRules[?(@.sourceAddressPrefix=='Internet' && @.protocol=='UDP' &&  @.access=='Allow' &&
# )].direction contains Inbound"

security_protocol_udp["security_protocol_udp"] {
    some security_rule
    get_protcol_rule[security_rule]    
    security_rule.properties.protocol = "UDP"
}

security_protocol_udp["security_protocol_any"] {
    some security_rule
    get_protcol_rule[security_rule]    
    security_rule.properties.protocol = "*"
}

get_protcol_rule[security_rule] {
    security_rule := input.properties.securityRules[_]
    security_rule.properties.sourceAddressPrefix = "Internet"
    security_rule.properties.access = "Allow"
    security_rule.properties.direction = "Inbound"
}