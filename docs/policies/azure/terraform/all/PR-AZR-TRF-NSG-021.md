



# Title: Azure Network Security Group allows MySQL (TCP Port 3306)


***<font color="white">Master Test Id:</font>*** PR-AZR-TRF-NSG-021

***<font color="white">Master Snapshot Id:</font>*** ['TRF_TEMPLATE_SNAPSHOT']

***<font color="white">type:</font>*** rego

***<font color="white">rule:</font>*** file([nsg.rego])  
  
  
  
  

|Title|Description|
| :---: | :---: |
|id|PR-AZR-TRF-NSG-021|
|eval|data.rule.inbound_port_3306|
|message|data.rule.inbound_port_3306_err|
|remediationDescription||
|remediationFunction|PR_AZR_TRF_NSG_021.py|


***<font color="white">Severity:</font>*** High

***<font color="white">Description:</font>*** This policy detects any NSG rule that allows MySQL traffic on TCP port 3306 from the internet. Review your list of NSG rules to ensure that your resources are not exposed.<br>As a best practice, restrict MySQL solely to known static IP addresses. Limit the access list to include known hosts, services, or specific employees only.  
  
  

|Title|Description|
| :---: | :---: |
|cloud|git|
|compliance|['APRA', 'APRA (CPS 234) Information Security-CPS234-23', 'APRA (CPS 234) Information Security-CPS234-27', 'APRA (CPS 234) Information Security-CPS234-34', 'Brazilian Data Protection Law (LGPD)-Article 49', 'CCPA', 'CCPA 2018-1798.150(a)(1)', 'CSA CCM', 'CSA CCM v.4.0.1-A&A-03', 'CSA CCM v.4.0.1-CEK-03', 'CSA CCM v.4.0.1-DSP-07', 'CSA CCM v.4.0.1-DSP-10', 'CSA CCM v.4.0.1-DSP-17', 'CSA CCM v.4.0.1-HRS-04', 'CSA CCM v.4.0.1-IVS-03', 'CSA CCM v.4.0.1-LOG-05', 'CSA CCM v.4.0.1-LOG-13', 'CSA CCM v.4.0.1-STA-14', 'CSA CCM v.4.0.1-TVM-01', 'CSA CCM v.4.0.1-TVM-07', 'CSA CCM v.4.0.1-TVM-08', 'CSA CCM v.4.0.1-TVM-09', 'CSA CCM v.4.0.1-TVM-10', 'CSA CCM v.4.0.1-UEM-03', 'CSA CCM v.4.0.1-UEM-05', 'CSA CCM v.4.0.1-UEM-11', "CyberSecurity Law of the People's Republic of China-Article 21", "CyberSecurity Law of the People's Republic of China-Article 25", 'CMMC', 'Cybersecurity Maturity Model Certification (CMMC) v.1.02-SC.3.183', 'Cybersecurity Maturity Model Certification (CMMC) v.1.02-SI.2.216', 'HITRUST', 'HITRUST v.9.4.2-Control Reference:01.n', 'HITRUST v.9.4.2-Control Reference:01.o', 'ISO/IEC 27002:2013', 'ISO/IEC 27002:2013-10.1.1', 'ISO/IEC 27002:2013-12.2.1', 'ISO/IEC 27002:2013-12.3.1', 'ISO/IEC 27002:2013-12.4.3', 'ISO/IEC 27002:2013-12.6.1', 'ISO/IEC 27002:2013-12.6.2', 'ISO/IEC 27002:2013-13.1.1', 'ISO/IEC 27002:2013-13.1.2', 'ISO/IEC 27002:2013-13.1.3', 'ISO/IEC 27002:2013-13.2.1', 'ISO/IEC 27002:2013-13.2.3', 'ISO/IEC 27002:2013-14.1.1', 'ISO/IEC 27002:2013-14.1.2', 'ISO/IEC 27002:2013-14.1.3', 'ISO/IEC 27002:2013-14.2.4', 'ISO/IEC 27002:2013-14.2.5', 'ISO/IEC 27002:2013-16.1.1', 'ISO/IEC 27002:2013-16.1.2', 'ISO/IEC 27002:2013-16.1.3', 'ISO/IEC 27002:2013-18.1.3', 'ISO/IEC 27002:2013-18.1.4', 'ISO/IEC 27002:2013-18.2.1', 'ISO/IEC 27002:2013-5.1.1', 'ISO/IEC 27002:2013-6.2.2', 'ISO/IEC 27002:2013-8.3.1', 'ISO/IEC 27002:2013-8.3.3', 'ISO/IEC 27017:2015', 'ISO/IEC 27017:2015-10.1.1', 'ISO/IEC 27017:2015-10.1.2', 'ISO/IEC 27017:2015-16.1.2', 'ISO/IEC 27017:2015-6.1.1', 'ISO/IEC 27018:2019', 'ISO/IEC 27018:2019-10.1.2', 'ISO/IEC 27018:2019-12.3.1', 'ISO/IEC 27018:2019-18.2.1', 'MITRE ATT&CK', 'MITRE ATT&CK v6.3-T1190', 'MITRE ATT&CK v8.2-T1190', 'MPAA Content Protection Best Practices', 'MPAA Content Protection Best Practices-DS-1.2', 'MPAA Content Protection Best Practices-DS-3.0', 'NIST 800', 'NIST 800-53 Rev 5-Boundary Protection \| Block Communication from Non-organizationally Configured Hosts', 'NIST 800-53 Rev 5-Boundary Protection \| Deny by Default â\x80\x94 Allow by Exception', 'NIST 800-53 Rev 5-Boundary Protection \| Restrict Incoming Communications Traffic', 'NIST 800-53 Rev 5-Remote Access \| Protection of Confidentiality and Integrity Using Encryption', 'NIST 800-53 Rev 5-System Monitoring \| Inbound and Outbound Communications Traffic', 'NIST 800-53 Rev4-AC-17 (2)', 'NIST 800-53 Rev4-SC-7 (11)', 'NIST 800-53 Rev4-SC-7 (19)', 'NIST 800-53 Rev4-SC-7 (5)', 'NIST 800-53 Rev4-SI-4 (4)', 'NIST CSF', 'NIST CSF-DE.AE-2', 'NIST CSF-DE.CM-6', 'NIST CSF-DE.CM-7', 'NIST CSF-DE.DP-2', 'NIST CSF-ID.RA-1', 'NIST CSF-PR.AC-5', 'NIST CSF-PR.DS-1', 'NIST CSF-PR.DS-5', 'NIST CSF-PR.PT-4', 'NIST SP', 'NIST SP 800-171 Revision 2-3.13.6', 'NIST SP 800-171 Revision 2-3.14.6', 'NIST SP 800-172-3.14.2e', 'PCI DSS', 'PCI DSS v3.2.1-1.2.1', 'PIPEDA', 'PIPEDA-4.7.3']|
|service|['terraform']|


***<font color="white">Resource Types:</font>*** ['azurerm_network_security_rule']


[nsg.rego]: https://github.com/prancer-io/prancer-compliance-test/tree/master/azure/terraform/nsg.rego
