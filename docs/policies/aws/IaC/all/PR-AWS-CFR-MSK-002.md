



# Title: Ensure data is Encrypted in transit (TLS)


***<font color="white">Master Test Id:</font>*** PR-AWS-CFR-MSK-002

***<font color="white">Master Snapshot Id:</font>*** ['CFR_TEMPLATE_SNAPSHOT']

***<font color="white">type:</font>*** rego

***<font color="white">rule:</font>*** file([msk.rego])  
  
  
  
  

|Title|Description|
| :---: | :---: |
|id|PR-AWS-CFR-MSK-002|
|eval|data.rule.msk_in_transit_encryption|
|message|data.rule.msk_in_transit_encryption_err|
|remediationDescription|Make sure you are following the Cloudformation template format presented <a href='https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-msk-cluster.html#cfn-msk-cluster-encryptioninfo' target='_blank'>here</a>|
|remediationFunction|PR_AWS_CFR_MSK_002.py|


***<font color="white">Severity:</font>*** High

***<font color="white">Description:</font>*** Ensure data is Encrypted in transit (TLS)  
  
  

|Title|Description|
| :---: | :---: |
|cloud|git|
|compliance|['GDPR', 'NIST 800']|
|service|['cloudformation']|


***<font color="white">Resource Types:</font>*** ['aws::msk::cluster']


[msk.rego]: https://github.com/prancer-io/prancer-compliance-test/tree/master/aws/iac/msk.rego
