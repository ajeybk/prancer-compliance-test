



# Title: Azure Web Service PHP version should be latest


***<font color="white">Master Test Id:</font>*** PR-AZR-ARM-WEB-014

***<font color="white">Master Snapshot Id:</font>*** ['ARM_TEMPLATE_SNAPSHOT']

***<font color="white">type:</font>*** rego

***<font color="white">rule:</font>*** file([web.rego])  
  
  
  
  

|Title|Description|
| :---: | :---: |
|id|PR-AZR-ARM-WEB-014|
|eval|data.rule.web_service_php_version_latest|
|message|data.rule.web_service_php_version_latest_err|
|remediationDescription|In 'microsoft.web/sites' resource, set phpVersion = '7.4' under 'siteConfig' block to fix the issue.<br>Please Visit <a href='https://docs.microsoft.com/en-us/azure/templates/microsoft.web/sites' target='_blank'>here</a> for details.|
|remediationFunction|PR_AZR_ARM_WEB_014.py|


***<font color="white">Severity:</font>*** Medium

***<font color="white">Description:</font>*** This policy will identify the Azure web service which doesn't have the latest version of PHP and give the alert  
  
  

|Title|Description|
| :---: | :---: |
|cloud|git|
|compliance|['APRA', 'APRA (CPS 234) Information Security-CPS234-23', 'APRA (CPS 234) Information Security-CPS234-27', 'APRA (CPS 234) Information Security-CPS234-34', 'Azure Security Benchmark', 'Azure Security Benchmark (v2)-PV-3', 'Azure Security Benchmark (v2)-PV-7', 'Azure Security Benchmark (v3)-AM-2', 'Azure Security Benchmark (v3)-AM-5', 'Brazilian Data Protection Law (LGPD)-Article 49', 'CCPA', 'CCPA 2018-1798.150(a)(1)', 'CIS', 'CIS v1.1 (Azure)-9.9', 'CIS v1.2.0 (Azure)-9.9', 'CIS v1.3.0 (Azure)-9.8', 'CIS v1.3.1 (Azure)-9.8', 'CIS v1.4.0 (Azure)-9.8', "CyberSecurity Law of the People's Republic of China-Article 25", 'CMMC', 'Cybersecurity Maturity Model Certification (CMMC) v.1.02-RM.4.148', 'HITRUST', 'HITRUST v.9.4.2-Control Reference:10.a', 'MITRE ATT&CK', 'MITRE ATT&CK v10.0-T1190 - Exploit Public-Facing Application', 'MITRE ATT&CK v6.3-T1190', 'MITRE ATT&CK v8.2-T1190', 'NIST 800', 'NIST 800-53 Rev 5-Flaw Remediation \| Removal of Previous Versions of Software and Firmware', 'NIST 800-53 Rev4-SI-2 (6)', 'NIST CSF', 'NIST CSF-DE.CM-3', 'NIST SP', 'NIST SP 800-171 Revision 2-3.4.9', 'NIST SP 800-172-3.4.1e', 'NIST SP 800-172-3.4.2e', 'PCI DSS', 'PCI DSS v3.2.1-6.3', 'PIPEDA', 'PIPEDA-4.7.3']|
|service|['arm']|


***<font color="white">Resource Types:</font>*** ['microsoft.web/sites']


[web.rego]: https://github.com/prancer-io/prancer-compliance-test/tree/master/azure/iac/web.rego
