



# Title: AWS EMR cluster is not configured with Kerberos Authentication


***<font color="white">Master Test Id:</font>*** PR-AWS-TRF-EMR-002

***<font color="white">Master Snapshot Id:</font>*** ['TRF_TEMPLATE_SNAPSHOT']

***<font color="white">type:</font>*** rego

***<font color="white">rule:</font>*** file([emr.rego])  
  
  
  
  

|Title|Description|
| :---: | :---: |
|id|PR-AWS-TRF-EMR-002|
|eval|data.rule.emr_kerberos|
|message|data.rule.emr_kerberos_err|
|remediationDescription|Make sure you are following the Terraform template format presented <a href='https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/emr_cluster' target='_blank'>here</a>|
|remediationFunction|PR_AWS_TRF_EMR_002.py|


***<font color="white">Severity:</font>*** Medium

***<font color="white">Description:</font>*** This policy identifies EMR clusters which are not configured with Kerberos Authentication. Kerberos uses secret-key cryptography to provide strong authentication so that passwords or other credentials aren't sent over the network in an unencrypted format.  
  
  

|Title|Description|
| :---: | :---: |
|cloud|git|
|compliance|['APRA', 'APRA (CPS 234) Information Security-CPS234-23', 'APRA (CPS 234) Information Security-CPS234-27', 'APRA (CPS 234) Information Security-CPS234-34', 'Brazilian Data Protection Law (LGPD)-Article 49', 'CMMC', 'CSA CCM', 'CSA CCM v.4.0.1-HRS-06', 'CSA CCM v.4.0.1-IAM-01', 'CSA CCM v.4.0.1-IAM-03', 'CSA CCM v.4.0.1-IAM-06', 'CSA CCM v.4.0.1-IAM-07', 'CSA CCM v.4.0.1-IAM-08', 'CSA CCM v.4.0.1-IAM-10', 'CSA CCM v.4.0.1-IAM-16', 'CSA CCM v.4.0.1-IVS-03', "CyberSecurity Law of the People's Republic of China", "CyberSecurity Law of the People's Republic of China-Article 24", 'Cybersecurity Maturity Model Certification (CMMC) v.1.02-IA.1.077', 'Cybersecurity Maturity Model Certification (CMMC) v.1.02-IA.3.083', 'HITRUST', 'HITRUST v.9.4.2-Control Reference:01.b', 'ISO/IEC 27002', 'ISO/IEC 27002:2013-13.1.1', 'ISO/IEC 27002:2013-13.1.2', 'ISO/IEC 27002:2013-13.1.3', 'ISO/IEC 27002:2013-5.1.2', 'ISO/IEC 27002:2013-8.1.1', 'ISO/IEC 27002:2013-9.1.1', 'ISO/IEC 27002:2013-9.2.3', 'ISO/IEC 27002:2013-9.2.5', 'ISO/IEC 27002:2013-9.4.1', 'ISO/IEC 27017', 'ISO/IEC 27017:2015-9.2.3', 'ISO/IEC 27017:2015-9.2.5', 'ISO/IEC 27017:2015-9.4.1', 'ISO/IEC 27018', 'ISO/IEC 27018:2019-9.2.3', 'ISO/IEC 27018:2019-9.2.5', 'LGPD', 'MAS TRM', 'MAS TRM 2021-7.2.1', 'MAS TRM 2021-7.2.2', 'MLPS', 'MLPS 2.0-8.1.5.2', 'MLPS 2.0-8.2.4.1', 'NIST 800', 'NIST 800-53 Rev 5-Service Identification and Authentication', 'NIST 800-53 Rev4-IA-9', 'NIST CSF', 'NIST CSF-PR.AC-1', 'NIST SP', 'NIST SP 800-171 Revision 2-3.5.2', 'NIST SP 800-172-3.5.2e', 'PCI DSS v3.2.1-8.2', 'PCI-DSS']|
|service|['terraform']|


***<font color="white">Resource Types:</font>*** ['aws_emr_cluster']


[emr.rego]: https://github.com/prancer-io/prancer-compliance-test/tree/master/aws/terraform/emr.rego
