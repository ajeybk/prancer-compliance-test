package rule
default rulepass = false

# Firewall rule allows internet traffic to FTP port (21)
# If Firewall rule not allows internet traffic to FTP port (21)
# API and Response Reference : https://cloud.google.com/compute/docs/reference/rest/v1/firewalls/list

rulepass = true {                                      
   count(allowport) > 0
}

get_access[security_rule] {
   security_rule := input
   security_rule.disabled= false 
}

# (sourceRanges[*] contains 0.0.0.0/0 and allowed[*].ports[21] )
allowport["ALLOW_PORT"] {
   get_access[security_rule]
   input.sourceRanges[_]="0.0.0.0/0"
   input.allowed[_].ports[_]="21"
}

# (sourceRanges[*] contains 0.0.0.0/0 and allowed[*].IPProtocol[*])
allowport["IPProtocol_TCP"] {
   get_access[security_rule]
   input.sourceRanges[_]="0.0.0.0/0"
   input.allowed[_].IPProtocol="all"
}