



# Title: Ensure AWS S3 bucket policy is not overly permissive to any principal.


***<font color="white">Master Test Id:</font>*** PR-AWS-TRF-S3-023

***<font color="white">Master Snapshot Id:</font>*** ['TRF_TEMPLATE_SNAPSHOT']

***<font color="white">type:</font>*** rego

***<font color="white">rule:</font>*** file([storage.rego])  
  
  
  
  

|Title|Description|
| :---: | :---: |
|id|PR-AWS-TRF-S3-023|
|eval|data.rule.s3_overly_permissive_to_any_principal|
|message|data.rule.s3_overly_permissive_to_any_principal_err|
|remediationDescription|Make sure you are following the Terraform template format presented <a href='https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_policy' target='_blank'>here</a>|
|remediationFunction|PR_AWS_TRF_S3_023.py|


***<font color="white">Severity:</font>*** Medium

***<font color="white">Description:</font>*** It identifies the S3 buckets that have a bucket policy overly permissive to any principal. It is recommended to follow the principle of least privileges ensuring that the only restricted entities have permission on S3 operations instead of any anonymous. For more details: https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-bucket-user-policy-specifying-principal-intro.html  
  
  

|Title|Description|
| :---: | :---: |
|cloud|git|
|compliance|['AWS Well-Architected Framework', 'AWS Well-Architected Framework-Data Protection']|
|service|['terraform']|


***<font color="white">Resource Types:</font>*** ['aws_s3_bucket_policy']


[storage.rego]: https://github.com/prancer-io/prancer-compliance-test/tree/master/aws/terraform/storage.rego
