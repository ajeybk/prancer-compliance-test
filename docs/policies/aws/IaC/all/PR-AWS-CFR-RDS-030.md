



# Title: Ensure RDS DB instance has setup backup retention period of at least 30 days.


***<font color="white">Master Test Id:</font>*** PR-AWS-CFR-RDS-030

***<font color="white">Master Snapshot Id:</font>*** ['CFR_TEMPLATE_SNAPSHOT']

***<font color="white">type:</font>*** rego

***<font color="white">rule:</font>*** file([database.rego])  
  
  
  
  

|Title|Description|
| :---: | :---: |
|id|PR-AWS-CFR-RDS-030|
|eval|data.rule.rds_cluster_backup_retention|
|message|data.rule.rds_cluster_backup_retention_err|
|remediationDescription|Make sure you are following the Cloudformation template format presented <a href='https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-database-instance.html' target='_blank'>here</a>|
|remediationFunction|PR_AWS_CFR_RDS_030.py|


***<font color="white">Severity:</font>*** Low

***<font color="white">Description:</font>*** This is to check that backup retention period for RDS DB is firm approved.  
  
  

|Title|Description|
| :---: | :---: |
|cloud|git|
|compliance|['PCI DSS', 'GDPR', 'CIS', 'HITRUST', 'NIST 800', 'HIPAA', 'ISO 27001', 'SOC 2']|
|service|['cloudformation']|


***<font color="white">Resource Types:</font>*** ['aws::rds::dbcluster']


[database.rego]: https://github.com/prancer-io/prancer-compliance-test/tree/master/aws/iac/database.rego
