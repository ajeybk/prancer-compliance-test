



# Title: AWS KMS Customer Managed Key not in use


***<font color="white">Master Test Id:</font>*** PR-AWS-TRF-KMS-002

***<font color="white">Master Snapshot Id:</font>*** ['TRF_TEMPLATE_SNAPSHOT']

***<font color="white">type:</font>*** rego

***<font color="white">rule:</font>*** file([kms.rego])  
  
  
  
  

|Title|Description|
| :---: | :---: |
|id|PR-AWS-TRF-KMS-002|
|eval|data.rule.kms_key_state|
|message|data.rule.kms_key_state_err|
|remediationDescription|Make sure you are following the Terraform template format presented <a href='https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/kms_key' target='_blank'>here</a>|
|remediationFunction|PR_AWS_TRF_KMS_002.py|


***<font color="white">Severity:</font>*** Medium

***<font color="white">Description:</font>*** This policy identifies KMS Customer Managed Keys(CMKs) which are not usable. When you create a CMK, it is enabled by default. If you disable a CMK or schedule it for deletion makes it unusable, it cannot be used to encrypt or decrypt data and AWS KMS does not rotate the backing keys until you re-enable it.  
  
  

|Title|Description|
| :---: | :---: |
|cloud|git|
|compliance|['Best Practice']|
|service|['terraform']|


***<font color="white">Resource Types:</font>*** ['aws_kms_key']


[kms.rego]: https://github.com/prancer-io/prancer-compliance-test/tree/master/aws/terraform/kms.rego
