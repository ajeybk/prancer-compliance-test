package rule

# https://docs.microsoft.com/en-us/azure/templates/azurerm_network_security_rule

iports := [
    "21", "22", "23", "25", "53", "80", "135", "137", "138", "445", "1433", "1434", "1521", 
    "3306", "4333", "5000", "5432", "5500", "5900", "5984", "6379", "6380", "9042", "11211",
    "27017", "28015", "29015", "50000"
]

# allowed in all
nsg_inbound[port] {
    resource := input.json.resources[_]
    port := iports[_]
    lower(resource.type) == "azurerm_network_security_rule"
    lower(resource.properties.access) == "allow"
    lower(resource.properties.direction) == "inbound"
    resource.properties.destination_address_prefix == "*"
    resource.properties.destination_port_range == "*"
}

# allowed in port
nsg_inbound[port] {
    resource := input.json.resources[_]
    port := iports[_]
    lower(resource.type) == "azurerm_network_security_rule"
    lower(resource.properties.access) == "allow"
    lower(resource.properties.direction) == "inbound"
    resource.properties.destination_address_prefix == "*"
    resource.properties.destination_port_range == port
}

# allowed in range
nsg_inbound[port] {
    resource := input.json.resources[_]
    port := iports[_]
    lower(resource.type) == "azurerm_network_security_rule"
    lower(resource.properties.access) == "allow"
    lower(resource.properties.direction) == "inbound"
    resource.properties.destination_address_prefix == "*"
    contains(resource.properties.destination_port_range, "-")
    port_range := split(resource.properties.destination_port_range, "-")
    to_number(port_range[0]) <= to_number(port)
    to_number(port_range[1]) >= to_number(port)
}

# allowed in list
nsg_inbound[port] {
    resource := input.json.resources[_]
    port := iports[_]
    lower(resource.type) == "azurerm_network_security_rule"
    lower(resource.properties.access) == "allow"
    lower(resource.properties.direction) == "inbound"
    resource.properties.destination_address_prefix == "*"
    resource.properties.destination_port_ranges[_] == port
}

# allowed in list range
nsg_inbound[port] {
    resource := input.json.resources[_]
    port := iports[_]
    lower(resource.type) == "azurerm_network_security_rule"
    lower(resource.properties.access) == "allow"
    lower(resource.properties.direction) == "inbound"
    resource.properties.destination_address_prefix == "*"
    port_range := split(resource.properties.destination_port_ranges[_], "-")
    to_number(port_range[0]) <= to_number(port)
    to_number(port_range[1]) >= to_number(port)
}

#
# PR-AZR-0022-TRF
#

default nsg_in_tcp_all_src = null

azure_issue["nsg_in_tcp_all_src"] {
    resource := input.json.resources[_]
    lower(resource.type) == "azurerm_network_security_rule"
    lower(resource.properties.access) == "allow"
    lower(resource.properties.direction) == "inbound"
    lower(resource.properties.protocol) == "tcp"
    resource.properties.destination_address_prefix == "*"
    resource.properties.destination_port_range == "*"
}

nsg_in_tcp_all_src {
    lower(input.json.resources[_].type) == "azurerm_network_security_rule"
    not azure_issue["nsg_in_tcp_all_src"]
}

nsg_in_tcp_all_src = false {
    azure_issue["nsg_in_tcp_all_src"]
}

nsg_in_tcp_all_src_err = "Azure NSG having inbound rule overly permissive to all TCP traffic from any source" {
    azure_issue["nsg_in_tcp_all_src"]
}

#
# PR-AZR-0023-TRF
#

default nsg_in_udp_all_src = null

azure_issue["nsg_in_udp_all_src"] {
    resource := input.json.resources[_]
    lower(resource.type) == "azurerm_network_security_rule"
    lower(resource.properties.access) == "allow"
    lower(resource.properties.direction) == "inbound"
    lower(resource.properties.protocol) == "UDP"
    resource.properties.destination_address_prefix == "*"
    resource.properties.destination_port_range == "*"
}

nsg_in_udp_all_src {
    lower(input.json.resources[_].type) == "azurerm_network_security_rule"
    not azure_issue["nsg_in_udp_all_src"]
}

nsg_in_udp_all_src = false {
    azure_issue["nsg_in_udp_all_src"]
}

nsg_in_udp_all_src_err = "Azure NSG having inbound rule overly permissive to all UDP traffic from any source" {
    azure_issue["nsg_in_udp_all_src"]
}

#
# PR-AZR-0024-TRF
#

default nsg_in_tcp_all = null

azure_issue["nsg_in_tcp_all"] {
    resource := input.json.resources[_]
    lower(resource.type) == "azurerm_network_security_rule"
    lower(resource.properties.access) == "allow"
    lower(resource.properties.direction) == "inbound"
    lower(resource.properties.protocol) == "tcp"
    resource.properties.source_address_prefix == "*"
    resource.properties.destination_address_prefix == "*"
    resource.properties.destination_port_range == "*"
}

nsg_in_tcp_all {
    lower(input.json.resources[_].type) == "azurerm_network_security_rule"
    not azure_issue["nsg_in_tcp_all"]
}

nsg_in_tcp_all = false {
    azure_issue["nsg_in_tcp_all"]
}

nsg_in_tcp_all_err = "Azure NSG having inbound rule overly permissive to all traffic from Internet on TCP protocol" {
    azure_issue["nsg_in_tcp_all"]
}

#
# PR-AZR-0025-TRF
#

default nsg_in_udp_all = null

azure_issue["nsg_in_udp_all"] {
    resource := input.json.resources[_]
    lower(resource.type) == "azurerm_network_security_rule"
    lower(resource.properties.access) == "allow"
    lower(resource.properties.direction) == "inbound"
    lower(resource.properties.protocol) == "UDP"
    resource.properties.source_address_prefix == "Internet"
    resource.properties.destination_address_prefix == "*"
    resource.properties.destination_port_range == "*"
}

nsg_in_udp_all {
    lower(input.json.resources[_].type) == "azurerm_network_security_rule"
    not azure_issue["nsg_in_udp_all"]
}

nsg_in_udp_all = false {
    azure_issue["nsg_in_udp_all"]
}

nsg_in_udp_all_err = "Azure NSG having inbound rule overly permissive to all UDP traffic from any source" {
    azure_issue["nsg_in_udp_all"]
}

#
# PR-AZR-0026-TRF
#

default nsg_in_all = null

azure_issue["nsg_in_all"] {
    resource := input.json.resources[_]
    lower(resource.type) == "azurerm_network_security_rule"
    lower(resource.properties.access) == "allow"
    lower(resource.properties.direction) == "inbound"
    lower(resource.properties.protocol) == "*"
    resource.properties.destination_address_prefix == "*"
    resource.properties.destination_port_range == "*"
}

nsg_in_all {
    lower(input.json.resources[_].type) == "azurerm_network_security_rule"
    not azure_issue["nsg_in_all"]
}

nsg_in_all = false {
    azure_issue["nsg_in_all"]
}

nsg_in_all_err = "Azure NSG having inbound rule overly permissive to all traffic from Internet on any protocol" {
    azure_issue["nsg_in_all"]
}

#
# PR-AZR-0027-TRF
#

default nsg_in_all_src = null

azure_issue["nsg_in_all_src"] {
    resource := input.json.resources[_]
    lower(resource.type) == "azurerm_network_security_rule"
    lower(resource.properties.access) == "allow"
    lower(resource.properties.direction) == "inbound"
    lower(resource.properties.protocol) == "*"
    resource.properties.source_address_prefix == "*"
    resource.properties.destination_address_prefix == "*"
    resource.properties.destination_port_range == "*"
}

nsg_in_all_src {
    lower(input.json.resources[_].type) == "azurerm_network_security_rule"
    not azure_issue["nsg_in_all_src"]
}

nsg_in_all_src = false {
    azure_issue["nsg_in_all_src"]
}

nsg_in_all_src_err = "Azure NSG having inbound rule overly permissive to allow all traffic from any source on any protocol" {
    azure_issue["nsg_in_all_src"]
}

#
# PR-AZR-0028-TRF
#

default nsg_in_all_dst = null

azure_issue["nsg_in_all_dst"] {
    resource := input.json.resources[_]
    lower(resource.type) == "azurerm_network_security_rule"
    lower(resource.properties.access) == "allow"
    lower(resource.properties.direction) == "inbound"
    lower(resource.properties.protocol) == "*"
    resource.properties.source_address_prefix == "*"
    resource.properties.destination_address_prefix == "*"
    resource.properties.destination_port_range == "*"
}

nsg_in_all_dst {
    lower(input.json.resources[_].type) == "azurerm_network_security_rule"
    not azure_issue["nsg_in_all_dst"]
}

nsg_in_all_dst = false {
    azure_issue["nsg_in_all_dst"]
}

nsg_in_all_dst_err = "Azure NSG having inbound rule overly permissive to allow all traffic from any source to any destination" {
    azure_issue["nsg_in_all_dst"]
}

#
# PR-AZR-0034-TRF
#

default nsg_allow_icmp = null

azure_issue["nsg_allow_icmp"] {
    resource := input.json.resources[_]
    lower(resource.type) == "azurerm_network_security_rule"
    lower(resource.properties.access) == "allow"
    lower(resource.properties.direction) == "inbound"
    lower(resource.properties.protocol) == "ICMP"
    resource.properties.source_address_prefix == "*"
}

nsg_allow_icmp {
    lower(input.json.resources[_].type) == "azurerm_network_security_rule"
    not azure_issue["nsg_allow_icmp"]
}

nsg_allow_icmp = false {
    azure_issue["nsg_allow_icmp"]
}

nsg_allow_icmp_err = "Azure NSG having inbound rule overly permissive to allow all traffic from any source to any destination" {
    azure_issue["nsg_allow_icmp"]
}

#
# PR-AZR-0032-TRF
#

default inbound_port_21 = null

azure_issue["inbound_port_21"] {
    to_number(nsg_inbound[_]) == 21
}

inbound_port_21 {
    lower(input.json.resources[_].type) == "azurerm_network_security_rule"
    not azure_issue["inbound_port_21"]
}

inbound_port_21 = false {
    azure_issue["inbound_port_21"]
}

inbound_port_21_err = "Azure Network Security Group allows FTP" {
    azure_issue["inbound_port_21"]
}

#
# gID3
#

default inbound_insecure_port = null

azure_issue["inbound_insecure_port"] {
    to_number(nsg_inbound[_]) == 21
}

azure_issue["inbound_insecure_port"] {
    to_number(nsg_inbound[_]) == 23
}

azure_issue["inbound_insecure_port"] {
    to_number(nsg_inbound[_]) == 80
}

inbound_insecure_port {
    lower(input.json.resources[_].type) == "azurerm_network_security_rule"
    not azure_issue["inbound_insecure_port"]
}

inbound_insecure_port = false {
    azure_issue["inbound_insecure_port"]
}

inbound_insecure_port_err = "Internet connectivity via tcp over insecure port" {
    azure_issue["inbound_insecure_port"]
}

#
# gID5
#

default inbound_port_11211 = null

azure_issue["inbound_port_11211"] {
    to_number(nsg_inbound[_]) == 11211
}

inbound_port_11211 {
    lower(input.json.resources[_].type) == "azurerm_network_security_rule"
    not azure_issue["inbound_port_11211"]
}

inbound_port_11211 = false {
    azure_issue["inbound_port_11211"]
}

inbound_port_11211_err = "Memcached DDoS attack attempted" {
    azure_issue["inbound_port_11211"]
}

#
# gID7
#

default inbound_port_6379 = null

azure_issue["inbound_port_6379"] {
    to_number(nsg_inbound[_]) == 6379
}

inbound_port_6379 {
    lower(input.json.resources[_].type) == "azurerm_network_security_rule"
    not azure_issue["inbound_port_6379"]
}

inbound_port_6379 = false {
    azure_issue["inbound_port_6379"]
}

inbound_port_6379_err = "RedisWannaMine vulnerable instances with active network traffic" {
    azure_issue["inbound_port_6379"]
}

#
# gID6
#

default inbound_port_dbs = null

azure_issue["inbound_port_dbs"] {
    to_number(nsg_inbound[_]) == 1433
}

azure_issue["inbound_port_dbs"] {
    to_number(nsg_inbound[_]) == 1521
}

azure_issue["inbound_port_dbs"] {
    to_number(nsg_inbound[_]) == 3306
}

azure_issue["inbound_port_dbs"] {
    to_number(nsg_inbound[_]) == 5000
}

azure_issue["inbound_port_dbs"] {
    to_number(nsg_inbound[_]) == 5432
}

azure_issue["inbound_port_dbs"] {
    to_number(nsg_inbound[_]) == 5984
}

azure_issue["inbound_port_dbs"] {
    to_number(nsg_inbound[_]) == 6379
}

azure_issue["inbound_port_dbs"] {
    to_number(nsg_inbound[_]) == 6380
}

azure_issue["inbound_port_dbs"] {
    to_number(nsg_inbound[_]) == 9042
}

azure_issue["inbound_port_dbs"] {
    to_number(nsg_inbound[_]) == 11211
}

azure_issue["inbound_port_dbs"] {
    to_number(nsg_inbound[_]) == 27017
}

azure_issue["inbound_port_dbs"] {
    to_number(nsg_inbound[_]) == 28015
}

azure_issue["inbound_port_dbs"] {
    to_number(nsg_inbound[_]) == 29015
}

azure_issue["inbound_port_dbs"] {
    to_number(nsg_inbound[_]) == 50000
}

inbound_port_dbs {
    lower(input.json.resources[_].type) == "azurerm_network_security_rule"
    not azure_issue["inbound_port_dbs"]
}

inbound_port_dbs = false {
    azure_issue["inbound_port_dbs"]
}

inbound_port_dbs_err = "Publicly exposed DB Ports" {
    azure_issue["inbound_port_dbs"]
}

#
# PR-AZR-0020-TRF
#

default inbound_port_22 = null

azure_issue["inbound_port_22"] {
    to_number(nsg_inbound[_]) == 22
}

inbound_port_22 {
    lower(input.json.resources[_].type) == "azurerm_network_security_rule"
    not azure_issue["inbound_port_22"]
}

inbound_port_22 = false {
    azure_issue["inbound_port_22"]
}

inbound_port_22_err = "Azure NSG allows SSH traffic from internet on port 22" {
    azure_issue["inbound_port_22"]
}

#
# PR-AZR-0021-TRF
#

default inbound_port_3389 = null

azure_issue["inbound_port_3389"] {
    to_number(nsg_inbound[_]) == 3389
}

inbound_port_3389 {
    lower(input.json.resources[_].type) == "azurerm_network_security_rule"
    not azure_issue["inbound_port_3389"]
}

inbound_port_3389 = false {
    azure_issue["inbound_port_3389"]
}

inbound_port_3389_err = "Azure NSG allows traffic from internet on port 3389" {
    azure_issue["inbound_port_3389"]
}

#
# PR-AZR-0029-TRF
# PR-AZR-0047-TRF
#

default inbound_port_445 = null

azure_issue["inbound_port_445"] {
    to_number(nsg_inbound[_]) == 445
}

inbound_port_445 {
    lower(input.json.resources[_].type) == "azurerm_network_security_rule"
    not azure_issue["inbound_port_445"]
}

inbound_port_445 = false {
    azure_issue["inbound_port_445"]
}

inbound_port_445_err = "Azure Network Security Group allows CIFS" {
    azure_issue["inbound_port_445"]
}

inbound_port_smb_err = "Azure Network Security Group allows Windows SMB" {
    azure_issue["inbound_port_445"]
}

#
# PR-AZR-0030-TRF
# PR-AZR-0031-TRF
#

default inbound_port_53 = null

azure_issue["inbound_port_53"] {
    to_number(nsg_inbound[_]) == 53
}

inbound_port_53 {
    lower(input.json.resources[_].type) == "azurerm_network_security_rule"
    not azure_issue["inbound_port_53"]
}

inbound_port_53 = false {
    azure_issue["inbound_port_53"]
}

inbound_port_53_err = "Azure Network Security Group allows CIFS" {
    azure_issue["inbound_port_53"]
}

#
# PR-AZR-0033-TRF
#

default inbound_port_20 = null

azure_issue["inbound_port_20"] {
    to_number(nsg_inbound[_]) == 20
}

inbound_port_20 {
    lower(input.json.resources[_].type) == "azurerm_network_security_rule"
    not azure_issue["inbound_port_20"]
}

inbound_port_20 = false {
    azure_issue["inbound_port_20"]
}

inbound_port_20_err = "Azure Network Security Group allows FTP-Data" {
    azure_issue["inbound_port_20"]
}

#
# PR-AZR-0035-TRF
#

default inbound_port_4333 = null

azure_issue["inbound_port_4333"] {
    to_number(nsg_inbound[_]) == 4333
}

inbound_port_4333 {
    lower(input.json.resources[_].type) == "azurerm_network_security_rule"
    not azure_issue["inbound_port_4333"]
}

inbound_port_4333 = false {
    azure_issue["inbound_port_4333"]
}

inbound_port_4333_err = "Azure Network Security Group allows MSQL" {
    azure_issue["inbound_port_4333"]
}

#
# PR-AZR-0036-TRF
#

default inbound_port_3306 = null

azure_issue["inbound_port_3306"] {
    to_number(nsg_inbound[_]) == 3306
}

inbound_port_3306 {
    lower(input.json.resources[_].type) == "azurerm_network_security_rule"
    not azure_issue["inbound_port_3306"]
}

inbound_port_3306 = false {
    azure_issue["inbound_port_3306"]
}

inbound_port_3306_err = "Azure Network Security Group allows MySQL" {
    azure_issue["inbound_port_3306"]
}

#
# PR-AZR-0037-TRF
# PR-AZR-0038-TRF
#

default inbound_port_netbios = null

azure_issue["inbound_port_netbios"] {
    to_number(nsg_inbound[_]) == 137
}

azure_issue["inbound_port_netbios"] {
    to_number(nsg_inbound[_]) == 138
}

inbound_port_netbios {
    lower(input.json.resources[_].type) == "azurerm_network_security_rule"
    not azure_issue["inbound_port_netbios"]
}

inbound_port_netbios = false {
    azure_issue["inbound_port_netbios"]
}

inbound_port_netbios_err = "Azure Network Security Group allows NetBIOS" {
    azure_issue["inbound_port_netbios"]
}

#
# PR-AZR-0039-TRF
#

default inbound_port_5432 = null

azure_issue["inbound_port_5432"] {
    to_number(nsg_inbound[_]) == 5432
}

inbound_port_5432 {
    lower(input.json.resources[_].type) == "azurerm_network_security_rule"
    not azure_issue["inbound_port_5432"]
}

inbound_port_5432 = false {
    azure_issue["inbound_port_5432"]
}

inbound_port_5432_err = "Azure Network Security Group allows PostgreSQL" {
    azure_issue["inbound_port_5432"]
}

#
# PR-AZR-0040-TRF
#

default inbound_port_25 = null

azure_issue["inbound_port_25"] {
    to_number(nsg_inbound[_]) == 25
}

inbound_port_25 {
    lower(input.json.resources[_].type) == "azurerm_network_security_rule"
    not azure_issue["inbound_port_25"]
}

inbound_port_25 = false {
    azure_issue["inbound_port_25"]
}

inbound_port_25_err = "Azure Network Security Group allows SMTP" {
    azure_issue["inbound_port_25"]
}

#
# PR-AZR-0041-TRF
# PR-AZR-0042-TRF
#

default inbound_port_sqlserver = null

azure_issue["inbound_port_sqlserver"] {
    to_number(nsg_inbound[_]) == 1433
}

azure_issue["inbound_port_sqlserver"] {
    to_number(nsg_inbound[_]) == 1434
}

inbound_port_sqlserver {
    lower(input.json.resources[_].type) == "azurerm_network_security_rule"
    not azure_issue["inbound_port_sqlserver"]
}

inbound_port_sqlserver = false {
    azure_issue["inbound_port_sqlserver"]
}

inbound_port_sqlserver_err = "Azure Network Security Group allows SQLServer" {
    azure_issue["inbound_port_sqlserver"]
}

#
# PR-AZR-0043-TRF
#

default inbound_port_23 = null

azure_issue["inbound_port_23"] {
    to_number(nsg_inbound[_]) == 23
}

inbound_port_23 {
    lower(input.json.resources[_].type) == "azurerm_network_security_rule"
    not azure_issue["inbound_port_23"]
}

inbound_port_23 = false {
    azure_issue["inbound_port_23"]
}

inbound_port_23_err = "Azure Network Security Group allows Telnet" {
    azure_issue["inbound_port_23"]
}

#
# PR-AZR-0044-TRF
#

default inbound_port_5500 = null

azure_issue["inbound_port_5500"] {
    to_number(nsg_inbound[_]) == 5500
}

inbound_port_5500 {
    lower(input.json.resources[_].type) == "azurerm_network_security_rule"
    not azure_issue["inbound_port_5500"]
}

inbound_port_5500 = false {
    azure_issue["inbound_port_5500"]
}

inbound_port_5500_err = "Azure Network Security Group allows VNC Listener" {
    azure_issue["inbound_port_5500"]
}

#
# PR-AZR-0045-TRF
#

default inbound_port_5900 = null

azure_issue["inbound_port_5900"] {
    to_number(nsg_inbound[_]) == 5900
}

inbound_port_5900 {
    lower(input.json.resources[_].type) == "azurerm_network_security_rule"
    not azure_issue["inbound_port_5900"]
}

inbound_port_5900 = false {
    azure_issue["inbound_port_5900"]
}

inbound_port_5900_err = "Azure Network Security Group allows VNC Server" {
    azure_issue["inbound_port_5900"]
}

#
# PR-AZR-0046-TRF
#

default inbound_port_135 = null

azure_issue["inbound_port_135"] {
    to_number(nsg_inbound[_]) == 135
}

inbound_port_135 {
    lower(input.json.resources[_].type) == "azurerm_network_security_rule"
    not azure_issue["inbound_port_135"]
}

inbound_port_135 = false {
    azure_issue["inbound_port_135"]
}

inbound_port_135_err = "Azure Network Security Group allows Windows RPC" {
    azure_issue["inbound_port_135"]
}



oports := ["8332", "8333", "8545", "30303"]

# allowed in all
nsg_outbound[port] {
    port := oports[_]
    resource := input.json.resources[_]
    lower(resource.type) == "azurerm_network_security_rule"
    lower(resource.properties.access) == "allow"
    lower(resource.properties.direction) == "Outbound"
    resource.properties.destination_address_prefix == "*"
    resource.properties.destination_port_range == "*"
}

# allowed in port
nsg_outbound[port] {
    port := oports[_]
    resource := input.json.resources[_]
    lower(resource.type) == "azurerm_network_security_rule"
    lower(resource.properties.access) == "allow"
    lower(resource.properties.direction) == "Outbound"
    resource.properties.destination_address_prefix == "*"
    resource.properties.destination_port_range == port
}

# allowed in range
nsg_outbound[port] {
    port := oports[_]
    resource := input.json.resources[_]
    lower(resource.type) == "azurerm_network_security_rule"
    lower(resource.properties.access) == "allow"
    lower(resource.properties.direction) == "Outbound"
    resource.properties.destination_address_prefix == "*"
    contains(resource.properties.destination_port_range, "-")
    port_range := split(resource.properties.destination_port_range, "-")
    to_number(port_range[0]) <= to_number(port)
    to_number(port_range[1]) >= to_number(port)
}

# allowed in list
nsg_outbound[port] {
    port := oports[_]
    resource := input.json.resources[_]
    lower(resource.type) == "azurerm_network_security_rule"
    rules := input.properties.securityRules[_]
    lower(resource.properties.access) == "allow"
    lower(resource.properties.direction) == "Outbound"
    resource.properties.destination_address_prefix == "*"
    resource.properties.destination_port_ranges[_] == port
}

# allowed in list range
nsg_outbound[port] {
    port := oports[_]
    resource := input.json.resources[_]
    lower(resource.type) == "azurerm_network_security_rule"
    lower(resource.properties.access) == "allow"
    lower(resource.properties.direction) == "Outbound"
    resource.properties.destination_address_prefix == "*"
    port_range := split(resource.properties.destination_port_ranges[_], "-")
    to_number(port_range[0]) <= to_number(port)
    to_number(port_range[1]) >= to_number(port)
}

#
# PR-AZR-0048-TRF
#

default nsg_out_all = null

azure_issue["nsg_out_all"] {
    resource := input.json.resources[_]
    lower(resource.type) == "azurerm_network_security_rule"
    lower(resource.properties.access) == "allow"
    lower(resource.properties.direction) == "Outbound"
    resource.properties.destination_address_prefix == "*"
    resource.properties.destination_port_range == "*"
}

nsg_out_all {
    lower(input.json.resources[_].type) == "azurerm_network_security_rule"
    not azure_issue["nsg_out_all"]
}

nsg_out_all = false {
    azure_issue["nsg_out_all"]
}

nsg_out_all_err = "Azure NSG with Outbound rule to allow all traffic to any source" {
    azure_issue["nsg_out_all"]
}

#
# gID1
#

default outbound_port_bitcoin = null

azure_issue["outbound_port_bitcoin"] {
    to_number(nsg_outbound[_]) == 8332
}

azure_issue["outbound_port_bitcoin"] {
    to_number(nsg_outbound[_]) == 8333
}

outbound_port_bitcoin {
    lower(input.json.resources[_].type) == "azurerm_network_security_rule"
    not azure_issue["outbound_port_bitcoin"]
}

outbound_port_bitcoin = false {
    azure_issue["outbound_port_bitcoin"]
}

outbound_port_bitcoin_err = "Instance is communicating with ports known to mine Bitcoin" {
    azure_issue["outbound_port_bitcoin"]
}

#
# gID2
#

default outbound_port_ethereum = null

azure_issue["outbound_port_ethereum"] {
    to_number(nsg_outbound[_]) == 8545
}

azure_issue["outbound_port_ethereum"] {
    to_number(nsg_outbound[_]) == 30303
}

outbound_port_ethereum {
    lower(input.json.resources[_].type) == "azurerm_network_security_rule"
    not azure_issue["outbound_port_ethereum"]
}

outbound_port_ethereum = false {
    azure_issue["outbound_port_ethereum"]
}

outbound_port_ethereum_err = "Instance is communicating with ports known to mine Ethereum" {
    azure_issue["outbound_port_ethereum"]
}