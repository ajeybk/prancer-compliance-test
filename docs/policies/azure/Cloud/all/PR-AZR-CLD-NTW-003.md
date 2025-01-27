



# Title: Azure Network Watcher Network Security Group (NSG) flow logs retention should be greater than 90 days


***<font color="white">Master Test Id:</font>*** PR-AZR-CLD-NTW-003

***<font color="white">Master Snapshot Id:</font>*** ['AZRSNP_431']

***<font color="white">type:</font>*** rego

***<font color="white">rule:</font>*** file([networkwatchersflowlogs.rego])  
  
  
  
  

|Title|Description|
| :---: | :---: |
|id|PR-AZR-CLD-NTW-003|
|eval|data.rule.netwatch_log_retention|
|message|data.rule.netwatch_log_retention_err|
|remediationDescription|With Azure CLI:<br>Keep Flow-Logs forever:<br>az network watcher flow-log configure -g MyResourceGroup --nsg MyNsg --retention 0<br>Keep Flow-Logs for a specific period of time (100 days):<br>az network watcher flow-log configure -g MyResourceGroup --nsg MyNsg --retention 100<br><br>References: <a href='https://docs.microsoft.com/en-us/cli/azure/network/watcher/flow-log?view=azure-cli-latest#az_network_watcher_flow_log_configure' target='_blank'>https://docs.microsoft.com/en-us/cli/azure/network/watcher/flow-log?view=azure-cli-latest#az_network_watcher_flow_log_configure</a>|
|remediationFunction|PR_AZR_CLD_NTW_003.py|


***<font color="white">Severity:</font>*** Medium

***<font color="white">Description:</font>*** This policy identifies Azure Network Security Groups (NSG) for which flow logs retention period is 90 days or less. To perform this check, enable this action on the Azure Service Principal: 'Microsoft.Network/networkWatchers/queryFlowLogStatus/action'.<br><br>NSG flow logs, a feature of the Network Watcher app, enable you to view information about ingress and egress IP traffic through an NSG. The flow logs include information such as:<br>- Outbound and inbound flows on a per-rule basis.<br>- Network interface to which the flow applies.<br>- 5-tuple information about the flow (source/destination IP, source/destination port, protocol).<br>- Whether the traffic was allowed or denied.<br><br>As a best practice, enable NSG flow logs and set the log retention period to at least 90 days.  
  
  

|Title|Description|
| :---: | :---: |
|cloud|azure|
|compliance|['APRA', 'APRA (CPS 234) Information Security-CPS234-23', 'APRA (CPS 234) Information Security-CPS234-27', 'APRA (CPS 234) Information Security-CPS234-34', 'APRA (CPS 234) Information Security-CPS234-35', 'APRA (CPS 234) Information Security-CPS234-36', 'Azure Security Benchmark', 'Azure Security Benchmark (v2)-LT-6', 'Azure Security Benchmark (v3)-LT-6', 'Brazilian Data Protection Law (LGPD)-Article 16', 'Brazilian Data Protection Law (LGPD)-Article 40', 'CISs', 'CIS v1.1 (Azure)-6.4', 'CIS v1.2.0 (Azure)-6.4', 'CIS v1.3.0 (Azure)-6.4', 'CIS v1.3.1 (Azure)-6.4', 'CIS v1.4.0 (Azure)-6.4', 'CSA CCM', 'CSA CCM v.4.0.1-LOG-05', 'CSA CCM v.4.0.1-LOG-06', 'CSA CCM v.4.0.1-LOG-08', 'CSA CCM v.4.0.1-LOG-13', "CyberSecurity Law of the People's Republic of China-Article 34", "CyberSecurity Law of the People's Republic of China-Article 55", "CyberSecurity Law of the People's Republic of China-Article 56", 'CMMC', 'Cybersecurity Maturity Model Certification (CMMC) v.1.02-AU.2.042', 'HITRUST', 'HITRUST v.9.4.2-Control Reference:06.c', 'HITRUST v.9.4.2-Control Reference:06.d', 'HITRUST v.9.4.2-Control Reference:09.ab', 'HITRUST v.9.4.2-Control Reference:09.ac', 'ISO/IEC 27002:2013', 'ISO/IEC 27002:2013-12.4.1', 'ISO/IEC 27002:2013-12.4.3', 'ISO/IEC 27002:2013-12.4.4', 'ISO/IEC 27002:2013-16.1.1', 'ISO/IEC 27017:2015', 'ISO/IEC 27017:2015-12.4.1', 'ISO/IEC 27017:2015-12.4.4', 'ISO/IEC 27017:2015-16.1.2', 'NIST 800', 'NIST 800-53 Rev 5-Audit Record Retention', 'NIST 800-53 Rev4-AU-11', 'NIST CSF', 'NIST CSF-DE.AE-2', 'NIST CSF-DE.CM-3', 'NIST CSF-PR.PT-1', 'NIST SP', 'NIST SP 800-171 Revision 2-3.3.2', 'NIST SP 800-172-3.1.1e', 'PCI DSS', 'PCI DSS v3.2.1-10.2.3', 'PCI DSS v3.2.1-10.6', 'PCI DSS v3.2.1-3.1']|
|service|['Networking']|



[networkwatchersflowlogs.rego]: https://github.com/prancer-io/prancer-compliance-test/tree/master/azure/cloud/networkwatchersflowlogs.rego
