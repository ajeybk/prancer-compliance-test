



# Title: GCP Firewall rule allows internet traffic to Microsoft-DS port (445)


***<font color="white">Master Test Id:</font>*** PR-GCP-TRF-FW-005

***<font color="white">Master Snapshot Id:</font>*** ['TRF_TEMPLATE_SNAPSHOT']

***<font color="white">type:</font>*** rego

***<font color="white">rule:</font>*** file([compute.v1.firewall.rego])  
  
  
  
  

|Title|Description|
| :---: | :---: |
|id|PR-GCP-TRF-FW-005|
|eval|data.rule.firewall_port_445|
|message|data.rule.firewall_port_445_err|
|remediationDescription||
|remediationFunction||


***<font color="white">Severity:</font>*** Medium

***<font color="white">Description:</font>*** This policy identifies GCP Firewall rules which allows inbound traffic on Microsoft-DS port (445) from public internet. Allowing access from arbitrary internet IP addresses to this port increases the attack surface of your network.  
  
  

|Title|Description|
| :---: | :---: |
|cloud|git|
|compliance|['GDPR', 'CSA-CCM', 'HIPAA', 'HITRUST', 'ISO 27001', 'NIST 800', 'NIST CSF', 'PCI-DSS', 'SOC 2']|
|service|['terraform']|


***<font color="white">Resource Types:</font>*** ['google_compute_firewall']


[compute.v1.firewall.rego]: https://github.com/prancer-io/prancer-compliance-test/tree/master/google/terraform/compute.v1.firewall.rego
