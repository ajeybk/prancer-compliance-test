



# Title: Ensure GCP VM instance not configured with default service account


***<font color="white">Master Test Id:</font>*** PR-GCP-TRF-INST-011

***<font color="white">Master Snapshot Id:</font>*** ['TRF_TEMPLATE_SNAPSHOT']

***<font color="white">type:</font>*** rego

***<font color="white">rule:</font>*** file([compute.v1.instance.rego])  
  
  
  
  

|Title|Description|
| :---: | :---: |
|id|PR-GCP-TRF-INST-011|
|eval|data.rule.compute_configure_default_service|
|message|data.rule.compute_configure_default_service_err|
|remediationDescription|make sure you are following the deployment template format presented <a href='https://cloud.google.com/compute/docs/reference/rest/v1/instances' target='_blank'>here</a>|
|remediationFunction|PR_GCP_INST_INST_011.py|


***<font color="white">Severity:</font>*** Medium

***<font color="white">Description:</font>*** This policy identifies GCP VM instances configured with the default service account. To defend against privilege escalations if your VM is compromised and prevent an attacker from gaining access to all of your project, it is recommended to not use the default Compute Engine service account because it has the Editor role on the project.  
  
  

|Title|Description|
| :---: | :---: |
|cloud|git|
|compliance|['CIS', 'CSA-CCM', 'HITRUST', 'ISO 27001', 'NIST 800', 'NIST CSF', 'PCI-DSS']|
|service|['terraform']|


***<font color="white">Resource Types:</font>*** ['google_compute_instance']


[compute.v1.instance.rego]: https://github.com/prancer-io/prancer-compliance-test/tree/master/google/terraform/compute.v1.instance.rego
