



# Title: GCP Load balancer HTTPS target proxy is not configured with QUIC protocol


***<font color="white">Master Test Id:</font>*** PR-GCP-GDF-THP-002

***<font color="white">Master Snapshot Id:</font>*** ['GDF_TEMPLATE_SNAPSHOT']

***<font color="white">type:</font>*** rego

***<font color="white">rule:</font>*** file([compute.rego])  
  
  
  
  

|Title|Description|
| :---: | :---: |
|id|PR-GCP-GDF-THP-002|
|eval|data.rule.lbs_quic|
|message|data.rule.lbs_quic_err|
|remediationDescription|make sure you are following the deployment template format presented <a href='https://cloud.google.com/compute/docs/reference/rest/v1/targetHttpsProxies' target='_blank'>here</a>|
|remediationFunction|PR_GCP_GDF_THP_002.py|


***<font color="white">Severity:</font>*** Low

***<font color="white">Description:</font>*** This policy identifies Load Balancer HTTPS target proxies which are not configured with QUIC protocol. Enabling QUIC protocol in load balancer target https proxies adds advantage by establishing connections faster, stream-based multiplexing, improved loss recovery, and eliminates head-of-line blocking.  
  
  

|Title|Description|
| :---: | :---: |
|cloud|git|
|compliance|['ISO 27001', 'NIST 800', 'NIST CSF', 'PCI-DSS', 'CSA-CCM', 'HITRUST']|
|service|['deploymentmanager']|


***<font color="white">Resource Types:</font>*** ['compute.v1.targethttpsproxy']


[compute.rego]: https://github.com/prancer-io/prancer-compliance-test/tree/master/google/iac/compute.rego
