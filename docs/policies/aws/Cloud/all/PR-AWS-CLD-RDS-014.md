



# Title: Ensure PGAudit is enabled on RDS Postgres instances


***<font color="white">Master Test Id:</font>*** PR-AWS-CLD-RDS-014

***<font color="white">Master Snapshot Id:</font>*** ['TEST_RDS_03']

***<font color="white">type:</font>*** rego

***<font color="white">rule:</font>*** file([database.rego])  
  
  
  
  

|Title|Description|
| :---: | :---: |
|id|PR-AWS-CLD-RDS-014|
|eval|data.rule.rds_pgaudit_enable|
|message|data.rule.rds_pgaudit_enable_err|
|remediationDescription|Make sure you are following the Cloudformation template format presented <a href='https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-dbparametergroup.html#cfn-rds-dbparametergroup-parameters' target='_blank'>here</a>|
|remediationFunction|PR_AWS_CLD_RDS_014.py|


***<font color="white">Severity:</font>*** Medium

***<font color="white">Description:</font>*** Postgres database instances can be enabled for auditing with PGAudit, the PostgresSQL Audit Extension. With PGAudit enabled you will be able to audit any database, its roles, relations, or columns.  
  
  

|Title|Description|
| :---: | :---: |
|cloud|AWS|
|compliance|[]|
|service|['rds']|



[database.rego]: https://github.com/prancer-io/prancer-compliance-test/tree/master/aws/cloud/database.rego
