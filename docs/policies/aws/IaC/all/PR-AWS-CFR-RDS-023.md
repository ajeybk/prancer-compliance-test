



# Title: Ensure RDS instances do not use a deprecated version of PostgreSQL.


***<font color="white">Master Test Id:</font>*** PR-AWS-CFR-RDS-023

***<font color="white">Master Snapshot Id:</font>*** ['CFR_TEMPLATE_SNAPSHOT']

***<font color="white">type:</font>*** rego

***<font color="white">rule:</font>*** file([database.rego])  
  
  
  
  

|Title|Description|
| :---: | :---: |
|id|PR-AWS-CFR-RDS-023|
|eval|data.rule.db_instance_approved_postgres_version|
|message|data.rule.db_instance_approved_postgres_version_err|
|remediationDescription|Make sure you are following the Cloudformation template format presented <a href='https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-database-instance.html#aws-properties-rds-database-instance--examples' target='_blank'>here</a>|
|remediationFunction|PR_AWS_CFR_RDS_023.py|


***<font color="white">Severity:</font>*** Medium

***<font color="white">Description:</font>*** AWS RDS PostgreSQL which is exposed to local file read vulnerability. It is highly recommended to upgrade AWS RDS PostgreSQL to the latest version.  
  
  

|Title|Description|
| :---: | :---: |
|cloud|git|
|compliance|['PCI-DSS', 'GDPR', 'CIS', 'HITRUST', 'NIST 800', 'HIPAA', 'ISO 27001', 'SOC 2']|
|service|['cloudformation']|


***<font color="white">Resource Types:</font>*** ['aws::rds::dbinstance']


[database.rego]: https://github.com/prancer-io/prancer-compliance-test/tree/master/aws/iac/database.rego
