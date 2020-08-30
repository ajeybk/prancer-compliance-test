package rule

# https://cloud.google.com/compute/docs/reference/rest/v1/firewalls

#
# Id: 269
#

default firewall_default = null


gc_attribute_absence["firewall_default"] {
    resource := input.json.resources[_]
    lower(resource.type) == "compute.v1.firewall"
    not resource.properties.name
}

gc_issue["firewall_default"] {
    resource := input.json.resources[_]
    lower(resource.type) == "compute.v1.firewall"
    lower(resource.properties.name) == "default-allow-ssh"
    resource.properties.sourceRanges[_] == "0.0.0.0/0"
}

gc_issue["firewall_default"] {
    resource := input.json.resources[_]
    lower(resource.type) == "compute.v1.firewall"
    lower(resource.properties.name) == "default-allow-icmp"
    resource.properties.sourceRanges[_] == "0.0.0.0/0"
}

gc_issue["firewall_default"] {
    resource := input.json.resources[_]
    lower(resource.type) == "compute.v1.firewall"
    lower(resource.properties.name) == "default-allow-internal"
    resource.properties.sourceRanges[_] == "0.0.0.0/0"
}

gc_issue["firewall_default"] {
    resource := input.json.resources[_]
    lower(resource.type) == "compute.v1.firewall"
    lower(resource.properties.name) == "default-allow-rdp"
    resource.properties.sourceRanges[_] == "0.0.0.0/0"
}

firewall_default {
    lower(input.json.resources[_].type) == "compute.v1.firewall"
    not gc_issue["firewall_default"]
    not gc_attribute_absence["firewall_default"]
}

firewall_default = false {
    gc_issue["firewall_default"]
}

firewall_default = false {
    gc_attribute_absence["firewall_default"]
}

firewall_default_err = "Default Firewall rule should not have any rules (except http and https)" {
    gc_issue["firewall_default"]
}

firewall_default_miss_err = "GCP vm firewall attribute name missing in the resource" {
    gc_attribute_absence["firewall_default"]
}

#
# Id: 276
#

default firewall_port_53 = null

gc_issue["firewall_port_53"] {
    resource := input.json.resources[_]
    lower(resource.type) == "compute.v1.firewall"
    resource.properties.sourceRanges[_] == "0.0.0.0/0"
    allow := resource.properties.allowed[_]
    allow.ports[_] == "53"
}

gc_issue["firewall_port_53"] {
    resource := input.json.resources[_]
    lower(resource.type) == "compute.v1.firewall"
    resource.properties.sourceRanges[_] == "0.0.0.0/0"
    allow := resource.properties.allowed[_]
    port := allow.ports[_]
    contains(port, "-")
    port_range := split(port, "-")
    to_number(port_range[0]) <= 53
    to_number(port_range[1]) >= 53
}

gc_issue["firewall_port_53"] {
    resource := input.json.resources[_]
    lower(resource.type) == "compute.v1.firewall"
    resource.properties.sourceRanges[_] == "0.0.0.0/0"
    allow := resource.properties.allowed[_]
    count(allow.ports[_]) < 1
    lower(allow.IPProtocol) == "tcp"
}

gc_issue["firewall_port_53"] {
    resource := input.json.resources[_]
    lower(resource.type) == "compute.v1.firewall"
    resource.properties.sourceRanges[_] == "0.0.0.0/0"
    allow := resource.properties.allowed[_]
    count(allow.ports[_]) < 1
    lower(allow.IPProtocol) == "udp"
}

firewall_port_53 {
    lower(input.json.resources[_].type) == "compute.v1.firewall"
    not gc_issue["firewall_port_53"]
}

firewall_port_53 = false {
    gc_issue["firewall_port_53"]
}

firewall_port_53_err = "GCP Firewall rule allows internet traffic to DNS port (53)" {
    gc_issue["firewall_port_53"]
}

#
# Id: 277
#

default firewall_port_21 = null

gc_issue["firewall_port_21"] {
    resource := input.json.resources[_]
    lower(resource.type) == "compute.v1.firewall"
    resource.properties.sourceRanges[_] == "0.0.0.0/0"
    allow := resource.properties.allowed[_]
    allow.ports[_] == "21"
}

gc_issue["firewall_port_21"] {
    resource := input.json.resources[_]
    lower(resource.type) == "compute.v1.firewall"
    resource.properties.sourceRanges[_] == "0.0.0.0/0"
    allow := resource.properties.allowed[_]
    port := allow.ports[_]
    contains(port, "-")
    port_range := split(port, "-")
    to_number(port_range[0]) <= 21
    to_number(port_range[1]) >= 21
}

gc_issue["firewall_port_21"] {
    resource := input.json.resources[_]
    lower(resource.type) == "compute.v1.firewall"
    resource.properties.sourceRanges[_] == "0.0.0.0/0"
    allow := resource.properties.allowed[_]
    count(allow.ports[_]) < 1
    lower(allow.IPProtocol) == "tcp"
}

gc_issue["firewall_port_21"] {
    resource := input.json.resources[_]
    lower(resource.type) == "compute.v1.firewall"
    resource.properties.sourceRanges[_] == "0.0.0.0/0"
    allow := resource.properties.allowed[_]
    count(allow.ports[_]) < 1
    lower(allow.IPProtocol) == "udp"
}

firewall_port_21 {
    lower(input.json.resources[_].type) == "compute.v1.firewall"
    not gc_issue["firewall_port_21"]
}

firewall_port_21 = false {
    gc_issue["firewall_port_21"]
}

firewall_port_21_err = "GCP Firewall rule allows internet traffic to FTP port (21)" {
    gc_issue["firewall_port_21"]
}

#
# Id: 278
#

default firewall_port_80 = null

gc_issue["firewall_port_80"] {
    resource := input.json.resources[_]
    lower(resource.type) == "compute.v1.firewall"
    resource.properties.sourceRanges[_] == "0.0.0.0/0"
    allow := resource.properties.allowed[_]
    allow.ports[_] == "80"
}

gc_issue["firewall_port_80"] {
    resource := input.json.resources[_]
    lower(resource.type) == "compute.v1.firewall"
    resource.properties.sourceRanges[_] == "0.0.0.0/0"
    allow := resource.properties.allowed[_]
    port := allow.ports[_]
    contains(port, "-")
    port_range := split(port, "-")
    to_number(port_range[0]) <= 80
    to_number(port_range[1]) >= 80
}

gc_issue["firewall_port_80"] {
    resource := input.json.resources[_]
    lower(resource.type) == "compute.v1.firewall"
    resource.properties.sourceRanges[_] == "0.0.0.0/0"
    allow := resource.properties.allowed[_]
    count(allow.ports[_]) < 1
    lower(allow.IPProtocol) == "tcp"
}

gc_issue["firewall_port_80"] {
    resource := input.json.resources[_]
    lower(resource.type) == "compute.v1.firewall"
    resource.properties.sourceRanges[_] == "0.0.0.0/0"
    allow := resource.properties.allowed[_]
    count(allow.ports[_]) < 1
    lower(allow.IPProtocol) == "udp"
}

firewall_port_80 {
    lower(input.json.resources[_].type) == "compute.v1.firewall"
    not gc_issue["firewall_port_80"]
}

firewall_port_80 = false {
    gc_issue["firewall_port_80"]
}

firewall_port_80_err = "GCP Firewall rule allows internet traffic to HTTP port (80)" {
    gc_issue["firewall_port_80"]
}

#
# Id: 279
#

default firewall_port_445 = null

gc_issue["firewall_port_445"] {
    resource := input.json.resources[_]
    lower(resource.type) == "compute.v1.firewall"
    resource.properties.sourceRanges[_] == "0.0.0.0/0"
    allow := resource.properties.allowed[_]
    allow.ports[_] == "445"
}

gc_issue["firewall_port_445"] {
    resource := input.json.resources[_]
    lower(resource.type) == "compute.v1.firewall"
    resource.properties.sourceRanges[_] == "0.0.0.0/0"
    allow := resource.properties.allowed[_]
    port := allow.ports[_]
    contains(port, "-")
    port_range := split(port, "-")
    to_number(port_range[0]) <= 445
    to_number(port_range[1]) >= 445
}

gc_issue["firewall_port_445"] {
    resource := input.json.resources[_]
    lower(resource.type) == "compute.v1.firewall"
    resource.properties.sourceRanges[_] == "0.0.0.0/0"
    allow := resource.properties.allowed[_]
    count(allow.ports[_]) < 1
    lower(allow.IPProtocol) == "tcp"
}

gc_issue["firewall_port_445"] {
    resource := input.json.resources[_]
    lower(resource.type) == "compute.v1.firewall"
    resource.properties.sourceRanges[_] == "0.0.0.0/0"
    allow := resource.properties.allowed[_]
    count(allow.ports[_]) < 1
    lower(allow.IPProtocol) == "udp"
}

firewall_port_445 {
    lower(input.json.resources[_].type) == "compute.v1.firewall"
    not gc_issue["firewall_port_445"]
}

firewall_port_445 = false {
    gc_issue["firewall_port_445"]
}

firewall_port_445_err = "GCP Firewall rule allows internet traffic to Microsoft-DS port (445)" {
    gc_issue["firewall_port_445"]
}

#
# Id: 280
#

default firewall_port_27017 = null

gc_issue["firewall_port_27017"] {
    resource := input.json.resources[_]
    lower(resource.type) == "compute.v1.firewall"
    resource.properties.sourceRanges[_] == "0.0.0.0/0"
    allow := resource.properties.allowed[_]
    allow.ports[_] == "27017"
}

gc_issue["firewall_port_27017"] {
    resource := input.json.resources[_]
    lower(resource.type) == "compute.v1.firewall"
    resource.properties.sourceRanges[_] == "0.0.0.0/0"
    allow := resource.properties.allowed[_]
    port := allow.ports[_]
    contains(port, "-")
    port_range := split(port, "-")
    to_number(port_range[0]) <= 27017
    to_number(port_range[1]) >= 27017
}

gc_issue["firewall_port_27017"] {
    resource := input.json.resources[_]
    lower(resource.type) == "compute.v1.firewall"
    resource.properties.sourceRanges[_] == "0.0.0.0/0"
    allow := resource.properties.allowed[_]
    count(allow.ports[_]) < 1
    lower(allow.IPProtocol) == "tcp"
}

gc_issue["firewall_port_27017"] {
    resource := input.json.resources[_]
    lower(resource.type) == "compute.v1.firewall"
    resource.properties.sourceRanges[_] == "0.0.0.0/0"
    allow := resource.properties.allowed[_]
    count(allow.ports[_]) < 1
    lower(allow.IPProtocol) == "udp"
}

firewall_port_27017 {
    lower(input.json.resources[_].type) == "compute.v1.firewall"
    not gc_issue["firewall_port_27017"]
}

firewall_port_27017 = false {
    gc_issue["firewall_port_27017"]
}

firewall_port_27017_err = "GCP Firewall rule allows internet traffic to MongoDB port (27017)" {
    gc_issue["firewall_port_27017"]
}

#
# Id: 281
#

default firewall_port_3306 = null

gc_issue["firewall_port_3306"] {
    resource := input.json.resources[_]
    lower(resource.type) == "compute.v1.firewall"
    resource.properties.sourceRanges[_] == "0.0.0.0/0"
    allow := resource.properties.allowed[_]
    allow.ports[_] == "3306"
}

gc_issue["firewall_port_3306"] {
    resource := input.json.resources[_]
    lower(resource.type) == "compute.v1.firewall"
    resource.properties.sourceRanges[_] == "0.0.0.0/0"
    allow := resource.properties.allowed[_]
    port := allow.ports[_]
    contains(port, "-")
    port_range := split(port, "-")
    to_number(port_range[0]) <= 3306
    to_number(port_range[1]) >= 3306
}

gc_issue["firewall_port_3306"] {
    resource := input.json.resources[_]
    lower(resource.type) == "compute.v1.firewall"
    resource.properties.sourceRanges[_] == "0.0.0.0/0"
    allow := resource.properties.allowed[_]
    count(allow.ports[_]) < 1
    lower(allow.IPProtocol) == "tcp"
}

gc_issue["firewall_port_3306"] {
    resource := input.json.resources[_]
    lower(resource.type) == "compute.v1.firewall"
    resource.properties.sourceRanges[_] == "0.0.0.0/0"
    allow := resource.properties.allowed[_]
    count(allow.ports[_]) < 1
    lower(allow.IPProtocol) == "udp"
}

firewall_port_3306 {
    lower(input.json.resources[_].type) == "compute.v1.firewall"
    not gc_issue["firewall_port_3306"]
}

firewall_port_3306 = false {
    gc_issue["firewall_port_3306"]
}

firewall_port_3306_err = "GCP Firewall rule allows internet traffic to MySQL DB port (3306)" {
    gc_issue["firewall_port_3306"]
}

#
# Id: 282
#

default firewall_port_139 = null

gc_issue["firewall_port_139"] {
    resource := input.json.resources[_]
    lower(resource.type) == "compute.v1.firewall"
    resource.properties.sourceRanges[_] == "0.0.0.0/0"
    allow := resource.properties.allowed[_]
    allow.ports[_] == "139"
}

gc_issue["firewall_port_139"] {
    resource := input.json.resources[_]
    lower(resource.type) == "compute.v1.firewall"
    resource.properties.sourceRanges[_] == "0.0.0.0/0"
    allow := resource.properties.allowed[_]
    port := allow.ports[_]
    contains(port, "-")
    port_range := split(port, "-")
    to_number(port_range[0]) <= 139
    to_number(port_range[1]) >= 139
}

gc_issue["firewall_port_139"] {
    resource := input.json.resources[_]
    lower(resource.type) == "compute.v1.firewall"
    resource.properties.sourceRanges[_] == "0.0.0.0/0"
    allow := resource.properties.allowed[_]
    count(allow.ports[_]) < 1
    lower(allow.IPProtocol) == "tcp"
}

gc_issue["firewall_port_139"] {
    resource := input.json.resources[_]
    lower(resource.type) == "compute.v1.firewall"
    resource.properties.sourceRanges[_] == "0.0.0.0/0"
    allow := resource.properties.allowed[_]
    count(allow.ports[_]) < 1
    lower(allow.IPProtocol) == "udp"
}

firewall_port_139 {
    lower(input.json.resources[_].type) == "compute.v1.firewall"
    not gc_issue["firewall_port_139"]
}

firewall_port_139 = false {
    gc_issue["firewall_port_139"]
}

firewall_port_139_err = "GCP Firewall rule allows internet traffic to NetBIOS-SSN port (139)" {
    gc_issue["firewall_port_139"]
}

#
# Id: 283
#

default firewall_port_1521 = null

gc_issue["firewall_port_1521"] {
    resource := input.json.resources[_]
    lower(resource.type) == "compute.v1.firewall"
    resource.properties.sourceRanges[_] == "0.0.0.0/0"
    allow := resource.properties.allowed[_]
    allow.ports[_] == "1521"
}

gc_issue["firewall_port_1521"] {
    resource := input.json.resources[_]
    lower(resource.type) == "compute.v1.firewall"
    resource.properties.sourceRanges[_] == "0.0.0.0/0"
    allow := resource.properties.allowed[_]
    port := allow.ports[_]
    contains(port, "-")
    port_range := split(port, "-")
    to_number(port_range[0]) <= 1521
    to_number(port_range[1]) >= 1521
}

gc_issue["firewall_port_1521"] {
    resource := input.json.resources[_]
    lower(resource.type) == "compute.v1.firewall"
    resource.properties.sourceRanges[_] == "0.0.0.0/0"
    allow := resource.properties.allowed[_]
    count(allow.ports[_]) < 1
    lower(allow.IPProtocol) == "tcp"
}

gc_issue["firewall_port_1521"] {
    resource := input.json.resources[_]
    lower(resource.type) == "compute.v1.firewall"
    resource.properties.sourceRanges[_] == "0.0.0.0/0"
    allow := resource.properties.allowed[_]
    count(allow.ports[_]) < 1
    lower(allow.IPProtocol) == "udp"
}

firewall_port_1521 {
    lower(input.json.resources[_].type) == "compute.v1.firewall"
    not gc_issue["firewall_port_1521"]
}

firewall_port_1521 = false {
    gc_issue["firewall_port_1521"]
}

firewall_port_1521_err = "GCP Firewall rule allows internet traffic to Oracle DB port (1521)" {
    gc_issue["firewall_port_1521"]
}

#
# Id: 284
#

default firewall_port_110 = null

gc_issue["firewall_port_110"] {
    resource := input.json.resources[_]
    lower(resource.type) == "compute.v1.firewall"
    resource.properties.sourceRanges[_] == "0.0.0.0/0"
    allow := resource.properties.allowed[_]
    allow.ports[_] == "110"
}

gc_issue["firewall_port_110"] {
    resource := input.json.resources[_]
    lower(resource.type) == "compute.v1.firewall"
    resource.properties.sourceRanges[_] == "0.0.0.0/0"
    allow := resource.properties.allowed[_]
    port := allow.ports[_]
    contains(port, "-")
    port_range := split(port, "-")
    to_number(port_range[0]) <= 110
    to_number(port_range[1]) >= 110
}

gc_issue["firewall_port_110"] {
    resource := input.json.resources[_]
    lower(resource.type) == "compute.v1.firewall"
    resource.properties.sourceRanges[_] == "0.0.0.0/0"
    allow := resource.properties.allowed[_]
    count(allow.ports[_]) < 1
    lower(allow.IPProtocol) == "tcp"
}

gc_issue["firewall_port_110"] {
    resource := input.json.resources[_]
    lower(resource.type) == "compute.v1.firewall"
    resource.properties.sourceRanges[_] == "0.0.0.0/0"
    allow := resource.properties.allowed[_]
    count(allow.ports[_]) < 1
    lower(allow.IPProtocol) == "udp"
}

firewall_port_110 {
    lower(input.json.resources[_].type) == "compute.v1.firewall"
    not gc_issue["firewall_port_110"]
}

firewall_port_110 = false {
    gc_issue["firewall_port_110"]
}

firewall_port_110_err = "GCP Firewall rule allows internet traffic to POP3 port (110)" {
    gc_issue["firewall_port_110"]
}

#
# Id: 285
#

default firewall_port_5432 = null

gc_issue["firewall_port_5432"] {
    resource := input.json.resources[_]
    lower(resource.type) == "compute.v1.firewall"
    resource.properties.sourceRanges[_] == "0.0.0.0/0"
    allow := resource.properties.allowed[_]
    allow.ports[_] == "5432"
}

gc_issue["firewall_port_5432"] {
    resource := input.json.resources[_]
    lower(resource.type) == "compute.v1.firewall"
    resource.properties.sourceRanges[_] == "0.0.0.0/0"
    allow := resource.properties.allowed[_]
    port := allow.ports[_]
    contains(port, "-")
    port_range := split(port, "-")
    to_number(port_range[0]) <= 5432
    to_number(port_range[1]) >= 5432
}

gc_issue["firewall_port_5432"] {
    resource := input.json.resources[_]
    lower(resource.type) == "compute.v1.firewall"
    resource.properties.sourceRanges[_] == "0.0.0.0/0"
    allow := resource.properties.allowed[_]
    count(allow.ports[_]) < 1
    lower(allow.IPProtocol) == "tcp"
}

gc_issue["firewall_port_5432"] {
    resource := input.json.resources[_]
    lower(resource.type) == "compute.v1.firewall"
    resource.properties.sourceRanges[_] == "0.0.0.0/0"
    allow := resource.properties.allowed[_]
    count(allow.ports[_]) < 1
    lower(allow.IPProtocol) == "udp"
}

firewall_port_5432 {
    lower(input.json.resources[_].type) == "compute.v1.firewall"
    not gc_issue["firewall_port_5432"]
}

firewall_port_5432 = false {
    gc_issue["firewall_port_5432"]
}

firewall_port_5432_err = "GCP Firewall rule allows internet traffic to PostgreSQL port (5432)" {
    gc_issue["firewall_port_5432"]
}

#
# Id: 286
#

default firewall_port_3389 = null

gc_issue["firewall_port_3389"] {
    resource := input.json.resources[_]
    lower(resource.type) == "compute.v1.firewall"
    resource.properties.sourceRanges[_] == "0.0.0.0/0"
    allow := resource.properties.allowed[_]
    allow.ports[_] == "3389"
}

gc_issue["firewall_port_3389"] {
    resource := input.json.resources[_]
    lower(resource.type) == "compute.v1.firewall"
    resource.properties.sourceRanges[_] == "0.0.0.0/0"
    allow := resource.properties.allowed[_]
    port := allow.ports[_]
    contains(port, "-")
    port_range := split(port, "-")
    to_number(port_range[0]) <= 3389
    to_number(port_range[1]) >= 3389
}

gc_issue["firewall_port_3389"] {
    resource := input.json.resources[_]
    lower(resource.type) == "compute.v1.firewall"
    resource.properties.sourceRanges[_] == "0.0.0.0/0"
    allow := resource.properties.allowed[_]
    count(allow.ports[_]) < 1
    lower(allow.IPProtocol) == "tcp"
}

gc_issue["firewall_port_3389"] {
    resource := input.json.resources[_]
    lower(resource.type) == "compute.v1.firewall"
    resource.properties.sourceRanges[_] == "0.0.0.0/0"
    allow := resource.properties.allowed[_]
    count(allow.ports[_]) < 1
    lower(allow.IPProtocol) == "udp"
}

firewall_port_3389 {
    lower(input.json.resources[_].type) == "compute.v1.firewall"
    not gc_issue["firewall_port_3389"]
}

firewall_port_3389 = false {
    gc_issue["firewall_port_3389"]
}

firewall_port_3389_err = "GCP Firewall rule allows internet traffic to RDP port (3389)" {
    gc_issue["firewall_port_3389"]
}

#
# Id: 287
#

default firewall_port_25 = null

gc_issue["firewall_port_25"] {
    resource := input.json.resources[_]
    lower(resource.type) == "compute.v1.firewall"
    resource.properties.sourceRanges[_] == "0.0.0.0/0"
    allow := resource.properties.allowed[_]
    allow.ports[_] == "25"
}

gc_issue["firewall_port_25"] {
    resource := input.json.resources[_]
    lower(resource.type) == "compute.v1.firewall"
    resource.properties.sourceRanges[_] == "0.0.0.0/0"
    allow := resource.properties.allowed[_]
    port := allow.ports[_]
    contains(port, "-")
    port_range := split(port, "-")
    to_number(port_range[0]) <= 25
    to_number(port_range[1]) >= 25
}

gc_issue["firewall_port_25"] {
    resource := input.json.resources[_]
    lower(resource.type) == "compute.v1.firewall"
    resource.properties.sourceRanges[_] == "0.0.0.0/0"
    allow := resource.properties.allowed[_]
    count(allow.ports[_]) < 1
    lower(allow.IPProtocol) == "tcp"
}

gc_issue["firewall_port_25"] {
    resource := input.json.resources[_]
    lower(resource.type) == "compute.v1.firewall"
    resource.properties.sourceRanges[_] == "0.0.0.0/0"
    allow := resource.properties.allowed[_]
    count(allow.ports[_]) < 1
    lower(allow.IPProtocol) == "udp"
}

firewall_port_25 {
    lower(input.json.resources[_].type) == "compute.v1.firewall"
    not gc_issue["firewall_port_25"]
}

firewall_port_25 = false {
    gc_issue["firewall_port_25"]
}

firewall_port_25_err = "GCP Firewall rule allows internet traffic to SMTP port (25)" {
    gc_issue["firewall_port_25"]
}

#
# Id: 288
#

default firewall_port_22 = null

gc_issue["firewall_port_22"] {
    resource := input.json.resources[_]
    lower(resource.type) == "compute.v1.firewall"
    resource.properties.sourceRanges[_] == "0.0.0.0/0"
    allow := resource.properties.allowed[_]
    allow.ports[_] == "22"
}

gc_issue["firewall_port_22"] {
    resource := input.json.resources[_]
    lower(resource.type) == "compute.v1.firewall"
    resource.properties.sourceRanges[_] == "0.0.0.0/0"
    allow := resource.properties.allowed[_]
    port := allow.ports[_]
    contains(port, "-")
    port_range := split(port, "-")
    to_number(port_range[0]) <= 22
    to_number(port_range[1]) >= 22
}

gc_issue["firewall_port_22"] {
    resource := input.json.resources[_]
    lower(resource.type) == "compute.v1.firewall"
    resource.properties.sourceRanges[_] == "0.0.0.0/0"
    allow := resource.properties.allowed[_]
    count(allow.ports[_]) < 1
    lower(allow.IPProtocol) == "tcp"
}

gc_issue["firewall_port_22"] {
    resource := input.json.resources[_]
    lower(resource.type) == "compute.v1.firewall"
    resource.properties.sourceRanges[_] == "0.0.0.0/0"
    allow := resource.properties.allowed[_]
    count(allow.ports[_]) < 1
    lower(allow.IPProtocol) == "udp"
}

firewall_port_22 {
    lower(input.json.resources[_].type) == "compute.v1.firewall"
    not gc_issue["firewall_port_22"]
}

firewall_port_22 = false {
    gc_issue["firewall_port_22"]
}

firewall_port_22_err = "GCP Firewall rule allows internet traffic to SSH port (22)" {
    gc_issue["firewall_port_22"]
}

#
# Id: 289
#

default firewall_port_23 = null

gc_issue["firewall_port_23"] {
    resource := input.json.resources[_]
    lower(resource.type) == "compute.v1.firewall"
    resource.properties.sourceRanges[_] == "0.0.0.0/0"
    allow := resource.properties.allowed[_]
    allow.ports[_] == "23"
}

gc_issue["firewall_port_23"] {
    resource := input.json.resources[_]
    lower(resource.type) == "compute.v1.firewall"
    resource.properties.sourceRanges[_] == "0.0.0.0/0"
    allow := resource.properties.allowed[_]
    port := allow.ports[_]
    contains(port, "-")
    port_range := split(port, "-")
    to_number(port_range[0]) <= 23
    to_number(port_range[1]) >= 23
}

gc_issue["firewall_port_23"] {
    resource := input.json.resources[_]
    lower(resource.type) == "compute.v1.firewall"
    resource.properties.sourceRanges[_] == "0.0.0.0/0"
    allow := resource.properties.allowed[_]
    count(allow.ports[_]) < 1
    lower(allow.IPProtocol) == "tcp"
}

gc_issue["firewall_port_23"] {
    resource := input.json.resources[_]
    lower(resource.type) == "compute.v1.firewall"
    resource.properties.sourceRanges[_] == "0.0.0.0/0"
    allow := resource.properties.allowed[_]
    count(allow.ports[_]) < 1
    lower(allow.IPProtocol) == "udp"
}

firewall_port_23 {
    lower(input.json.resources[_].type) == "compute.v1.firewall"
    not gc_issue["firewall_port_23"]
}

firewall_port_23 = false {
    gc_issue["firewall_port_23"]
}

firewall_port_23_err = "GCP Firewall rule allows internet traffic to Telnet port (23)" {
    gc_issue["firewall_port_23"]
}

#
# Id: 290
#

default firewall_inbound = null

gc_issue["firewall_inbound"] {
    resource := input.json.resources[_]
    lower(resource.type) == "compute.v1.firewall"
    resource.properties.sourceRanges[_] == "0.0.0.0/0"
    lower(resource.properties.direction) == "ingress"
    not resource.properties.targetTags
    not resource.properties.targetServiceAccounts
}

firewall_inbound {
    lower(input.json.resources[_].type) == "compute.v1.firewall"
    not gc_issue["firewall_inbound"]
}

firewall_inbound = false {
    gc_issue["firewall_inbound"]
}

firewall_inbound_err = "GCP Firewall rules allow inbound traffic from anywhere with no target tags set" {
    gc_issue["firewall_inbound"]
}

#
# Id: 291
#

default firewall_inbound_all = null

gc_issue["firewall_inbound_all"] {
    resource := input.json.resources[_]
    lower(resource.type) == "compute.v1.firewall"
    resource.properties.sourceRanges[_] == "0.0.0.0/0"
    lower(resource.properties.allowed[_].IPProtocol) == "all"
}

firewall_inbound_all {
    lower(input.json.resources[_].type) == "compute.v1.firewall"
    not gc_issue["firewall_inbound_all"]
}

firewall_inbound_all = false {
    gc_issue["firewall_inbound_all"]
}

firewall_inbound_all_err = "GCP Firewall with Inbound rule overly permissive to All Traffic" {
    gc_issue["firewall_inbound_all"]
}