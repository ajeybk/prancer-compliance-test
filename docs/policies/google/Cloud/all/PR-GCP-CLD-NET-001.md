



# Title: GCP project is configured with legacy network


***<font color="white">Master Test Id:</font>*** PR-GCP-CLD-NET-001

***<font color="white">Master Snapshot Id:</font>*** ['GOOGLE_NETWORK']

***<font color="white">type:</font>*** rego

***<font color="white">rule:</font>*** file([compute.rego])  
  
  
  
  

|Title|Description|
| :---: | :---: |
|id|PR-GCP-CLD-NET-001|
|eval|data.rule.net_legacy|
|message|data.rule.net_legacy_err|
|remediationDescription|make sure you are following the deployment template format presented <a href='https://cloud.google.com/compute/docs/reference/rest/v1/networks' target='_blank'>here</a>|
|remediationFunction|PR_GCP_CLD_NET_001.py|


***<font color="white">Severity:</font>*** Medium

***<font color="white">Description:</font>*** This policy identifies the projects which have configured with legacy networks. Legacy networks have a single network IPv4 prefix range and a single gateway IP address for the whole network. Subnetworks cannot be created in a legacy network. Legacy networks can have an impact on high network traffic projects and subject to the single point of failure.  
  
  

|Title|Description|
| :---: | :---: |
|cloud|GCP|
|compliance|['ISO 27001', 'NIST 800', 'NIST CSF', 'PCI-DSS', 'CSA-CCM', 'CIS', 'HITRUST']|
|service|['compute']|



[compute.rego]: https://github.com/prancer-io/prancer-compliance-test/tree/master/google/cloud/compute.rego
