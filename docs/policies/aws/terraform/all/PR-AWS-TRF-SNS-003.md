



# Title: AWS SNS topic with server-side encryption disabled


***<font color="white">Master Test Id:</font>*** PR-AWS-TRF-SNS-003

***<font color="white">Master Snapshot Id:</font>*** ['TRF_TEMPLATE_SNAPSHOT']

***<font color="white">type:</font>*** rego

***<font color="white">rule:</font>*** file([sns.rego])  
  
  
  
  

|Title|Description|
| :---: | :---: |
|id|PR-AWS-TRF-SNS-003|
|eval|data.rule.sns_encrypt|
|message|data.rule.sns_encrypt_err|
|remediationDescription|Make sure you are following the Terraform template format presented <a href='https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/sns_topic' target='_blank'>here</a>|
|remediationFunction|PR_AWS_TRF_SNS_003.py|


***<font color="white">Severity:</font>*** High

***<font color="white">Description:</font>*** This policy identifies Amazon Simple Notification Service (SNS) topics that have server-side encryption disabled. As a best practice, enable server-side encryption for at-rest encryption of message content published to SNS topics. When you publish a message, the SNS encrypts your message as soon as it receives it, and decrypts it just prior to delivery.  
  
  

|Title|Description|
| :---: | :---: |
|cloud|git|
|compliance|['PCI-DSS', 'HIPAA', 'GDPR', 'NIST 800']|
|service|['terraform']|


***<font color="white">Resource Types:</font>*** ['aws_sns_topic']


[sns.rego]: https://github.com/prancer-io/prancer-compliance-test/tree/master/aws/terraform/sns.rego
