



# Title: Minimize the admission of privileged containers (PSP)


***<font color="white">Master Test Id:</font>*** TEST_POD_SECURITY_POLICY_1

***<font color="white">Master Snapshot Id:</font>*** ['K8S_TEMPLATE_SNAPSHOT']

***<font color="white">type:</font>*** rego

***<font color="white">rule:</font>*** file([podSecurityPolicy.rego])  
  
  
  
  

|Title|Description|
| :---: | :---: |
|id|PR-K8S-0008-DCL|
|eval|data.rule.privileged|
|message|data.rule.privileged_err|
|remediationDescription|Create a PSP as described in the Kubernetes documentation, ensuring that the .spec.privileged field is omitted or set to false. References <a href='https://kubernetes.io/docs/concepts/policy/security-context/' target='_blank'>here</a>|
|remediationFunction|PR-K8S-0008-DCL.py|


***<font color="white">Severity:</font>*** Medium

***<font color="white">Description:</font>*** Do not generally permit containers to be run with the securityContext.privileged flag set to true. Privileged containers have access to all Linux Kernel capabilities and devices. A container running with full privileges can do almost everything that the host can do. This flag exists to allow special use-cases, like manipulating the network stack and accessing devices. There should be at least one PodSecurityPolicy (PSP) defined which does not permit privileged containers. If you need to run privileged containers, this should be defined in a separate PSP and you should carefully check RBAC controls to ensure that only limited service accounts and users are given permission to access that PSP.  
  
  

|Title|Description|
| :---: | :---: |
|cloud|git|
|compliance|['CIS']|
|service|['kubernetesObjectFiles']|


***<font color="white">Resource Types:</font>*** ['podsecuritypolicy']


[podSecurityPolicy.rego]: https://github.com/prancer-io/prancer-compliance-test/tree/master/kubernetes/iac/podSecurityPolicy.rego
