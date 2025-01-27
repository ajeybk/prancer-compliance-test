



# Title: Storage Buckets with publicly accessible Stackdriver logs


***<font color="white">Master Test Id:</font>*** PR-GCP-CLD-BKT-005

***<font color="white">Master Snapshot Id:</font>*** ['GOOGLE_STORAGE']

***<font color="white">type:</font>*** rego

***<font color="white">rule:</font>*** file([storage.rego])  
  
  
  
  

|Title|Description|
| :---: | :---: |
|id|PR-GCP-CLD-BKT-005|
|eval|data.rule.storage_public_logs|
|message|data.rule.storage_public_logs_err|
|remediationDescription|make sure you are following the deployment template format presented <a href='https://cloud.google.com/storage/docs/json_api/v1/buckets' target='_blank'>here</a>|
|remediationFunction|PR_GCP_CLD_BKT_005.py|


***<font color="white">Severity:</font>*** Medium

***<font color="white">Description:</font>*** Checks to ensure that Stackdriver logs on Storage Buckets are not public. Giving public access to Stackdriver logs will enable anyone with a web association to retrieve sensitive information that is critical to business. Stackdriver Logging enables to store, search, investigate, monitor and alert on log information/events from Google Cloud Platform. The permission needs to be set only for authorized users.  
  
  

|Title|Description|
| :---: | :---: |
|cloud|cloud|
|compliance|['CIS', 'CSA-CCM', 'HITRUST', 'ISO 27001', 'NIST 800', 'NIST CSF', 'PCI-DSS', 'SOC 2']|
|service|['storage']|



[storage.rego]: https://github.com/prancer-io/prancer-compliance-test/tree/master/google/cloud/storage.rego
