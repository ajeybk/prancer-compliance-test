



# Title: Web App should use the latest version of TLS encryption


***<font color="white">Master Test Id:</font>*** PR-AZR-ARM-WEB-002

***<font color="white">Master Snapshot Id:</font>*** ['ARM_TEMPLATE_SNAPSHOT']

***<font color="white">type:</font>*** rego

***<font color="white">rule:</font>*** file([web.rego])  
  
  
  
  

|Title|Description|
| :---: | :---: |
|id|PR-AZR-ARM-WEB-002|
|eval|data.rule.min_tls_version|
|message|data.rule.min_tls_version_err|
|remediationDescription|For Resource type 'microsoft.web/sites' make sure siteConfig.minTlsVersion exists and the value is set to '1.2'.<br>Please visit <a href='https://docs.microsoft.com/en-us/azure/templates/microsoft.web/sites' target='_blank'>here</a> for more details.|
|remediationFunction|PR_AZR_ARM_WEB_002.py|


***<font color="white">Severity:</font>*** High

***<font color="white">Description:</font>*** App service currently allows the web app to set TLS versions 1.0, 1.1, and 1.2. For secure web app connections, it is highly recommended to only use the latest TLS 1.2 version.  
  
  

|Title|Description|
| :---: | :---: |
|cloud|git|
|compliance|['APRA', 'APRA (CPS 234) Information Security-CPS234-15', 'APRA (CPS 234) Information Security-CPS234-16', 'APRA (CPS 234) Information Security-CPS234-17', 'APRA (CPS 234) Information Security-CPS234-21', 'APRA (CPS 234) Information Security-CPS234-23', 'APRA (CPS 234) Information Security-CPS234-27', 'APRA (CPS 234) Information Security-CPS234-34', 'Azure Security Benchmark', 'Azure Security Benchmark (v2)-DP-4', 'Azure Security Benchmark (v2)-NS-1', 'Azure Security Benchmark (v3)-DP-3', 'Brazilian Data Protection Law (LGPD)-Article 49', 'CCPA', 'CCPA 2018-1798.150(a)(1)', 'CIS', 'CIS v1.1 (Azure)-9.3', 'CIS v1.2.0 (Azure)-9.3', 'CIS v1.3.0 (Azure)-9.3', 'CIS v1.3.1 (Azure)-9.3', 'CIS v1.4.0 (Azure)-9.3', 'CSA CCM', 'CSA CCM v.4.0.1-CEK-03', 'CSA CCM v.4.0.1-DSP-10', 'CSA CCM v.4.0.1-IVS-03', 'CSA CCM v.4.0.1-UEM-11', "CyberSecurity Law of the People's Republic of China-Article 21", "CyberSecurity Law of the People's Republic of China-Article 40", 'CMMC', 'Cybersecurity Maturity Model Certification (CMMC) v.1.02-SC.3.185', 'HITRUST', 'HITRUST v.9.4.2-Control Reference:09.s', 'ISO/IEC 27002:2013', 'ISO/IEC 27002:2013-10.1.1', 'ISO/IEC 27002:2013-12.2.1', 'ISO/IEC 27002:2013-12.3.1', 'ISO/IEC 27002:2013-13.1.1', 'ISO/IEC 27002:2013-13.1.2', 'ISO/IEC 27002:2013-13.1.3', 'ISO/IEC 27002:2013-13.2.1', 'ISO/IEC 27002:2013-13.2.3', 'ISO/IEC 27002:2013-14.1.2', 'ISO/IEC 27002:2013-14.1.3', 'ISO/IEC 27002:2013-18.1.3', 'ISO/IEC 27002:2013-8.3.1', 'ISO/IEC 27002:2013-8.3.3', 'ISO/IEC 27017:2015', 'ISO/IEC 27017:2015-10.1.1', 'ISO/IEC 27017:2015-10.1.2', 'ISO/IEC 27017:2015-6.1.1', 'ISO/IEC 27018:2019', 'ISO/IEC 27018:2019-10.1.2', 'ISO/IEC 27018:2019-12.3.1', 'MITRE ATT&CK', 'MITRE ATT&CK v10.0-T1190 - Exploit Public-Facing Application', 'MITRE ATT&CK v6.3-T1190', 'MITRE ATT&CK v8.2-T1190', 'NIST 800', 'NIST 800-53 Rev 5-Transmission Confidentiality and Integrity \| Cryptographic Protection', 'NIST 800-53 Rev4-SC-8 (1)', 'NIST CSF', 'NIST CSF-PR.DS-2', 'NIST CSF-PR.DS-5', 'NIST SP', 'NIST SP 800-171 Revision 2-3.13.8', 'NIST SP 800-172-3.4.1e', 'NIST SP 800-172-3.4.2e', 'PCI DSS', 'PCI DSS v3.2.1-2.3', 'PCI DSS v3.2.1-4.1', 'PIPEDA', 'PIPEDA-4.7.3']|
|service|['arm']|


***<font color="white">Resource Types:</font>*** ['microsoft.web/sites']


[web.rego]: https://github.com/prancer-io/prancer-compliance-test/tree/master/azure/iac/web.rego
