# Automated Vulnerability Scan result and Static Code Analysis for Terraform Provider AZURE (Nov 2021)

## All Services

#### AKS: https://github.com/prancer-io/prancer-compliance-test/blob/master/docs/sca-report/terraform/azure/Nov/output11182021%20Azure%20AKS.md
#### KeyVault: https://github.com/prancer-io/prancer-compliance-test/blob/master/docs/sca-report/terraform/azure/Nov/output11182021%20Azure%20KeyVault.md
#### PostgreSQL: https://github.com/prancer-io/prancer-compliance-test/blob/master/docs/sca-report/terraform/azure/Nov/output11182021%20Azure%20PostgreSQL.md
#### SQL Servers: https://github.com/prancer-io/prancer-compliance-test/blob/master/docs/sca-report/terraform/azure/Nov/output11182021%20Azure%20SQL%20Servers.md
#### Storage Account (Part1): https://github.com/prancer-io/prancer-compliance-test/blob/master/docs/sca-report/terraform/azure/Nov/output11182021%20Azure%20Storage%20Account%20(Part1).md
#### Storage Account (Part2): https://github.com/prancer-io/prancer-compliance-test/blob/master/docs/sca-report/terraform/azure/Nov/output11182021%20Azure%20Storage%20Account%20(Part2).md
#### VM: https://github.com/prancer-io/prancer-compliance-test/blob/master/docs/sca-report/terraform/azure/Nov/output11182021%20Azure%20VM.md

## Terraform Azure Storage Account Services (Part2)

Source Repository: https://github.com/hashicorp/terraform-provider-azurerm

Scan engine: **Prancer Framework** (https://www.prancer.io)

Compliance Database: https://github.com/prancer-io/prancer-compliance-test/tree/master/azure/terraform/

## Compliance run Meta Data
| Title     | Description                        |
|:----------|:-----------------------------------|
| timestamp | 1637184834855                      |
| snapshot  | master-snapshot_gen                |
| container | scenario-azure-terraform-hashicorp |
| test      | master-test.json                   |

## Results

### Test ID - PR-AZR-TRF-STR-010
Title: Ensure that Storage Account should not allow public access to all blobs or containers\
Test Result: **passed**\
Description : This policy will identify which Storage Account has public access not disabled for all blobs or containers and alert\

#### Test Details
- eval: data.rule.storage_account_public_access_disabled
- id : PR-AZR-TRF-STR-010

#### Snapshots
| Title         | Description                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |
|:--------------|:----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| id            | TRF_TEMPLATE_SNAPSHOT155                                                                                                                                                                                                                                                                                                                                                                                                                                                    |
| structure     | filesystem                                                                                                                                                                                                                                                                                                                                                                                                                                                                  |
| reference     | main                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |
| source        | gitConnectorAzureTerraHashicorp                                                                                                                                                                                                                                                                                                                                                                                                                                             |
| collection    | terraformtemplate                                                                                                                                                                                                                                                                                                                                                                                                                                                           |
| type          | terraform                                                                                                                                                                                                                                                                                                                                                                                                                                                                   |
| region        |                                                                                                                                                                                                                                                                                                                                                                                                                                                                             |
| resourceTypes | ['azurerm_subnet_route_table_association', 'azurerm_firewall_application_rule_collection', 'azurerm_firewall_network_rule_collection', 'azurerm_route_table', 'azurerm_network_security_group', 'azurerm_storage_account', 'azurerm_subnet', 'azurerm_resource_group', 'azurerm_network_interface_security_group_association', 'azurerm_virtual_machine', 'azurerm_network_interface', 'azurerm_firewall', 'random_string', 'azurerm_virtual_network', 'azurerm_public_ip'] |
| paths         | ['https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/virtual-networks/azure-firewall/variables.tf', 'https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/virtual-networks/azure-firewall/main.tf']                                                                                                                                                                                                                           |

- masterTestId: TEST_STORAGE_ACCOUNT_6
- masterSnapshotId: ['TRF_TEMPLATE_SNAPSHOT']
- type: rego
- rule: file(https://github.com/prancer-io/prancer-compliance-test/tree/master/azure/terraform/storageaccounts.rego)
- severity: High

tags
| Title      | Description                             |
|:-----------|:----------------------------------------|
| cloud      | git                                     |
| compliance | ['CIS', 'HIPAA', 'NIST 800', 'PCI-DSS'] |
| service    | ['terraform']                           |
----------------------------------------------------------------


### Test ID - PR-AZR-TRF-STR-010
Title: Ensure that Storage Account should not allow public access to all blobs or containers\
Test Result: **passed**\
Description : This policy will identify which Storage Account has public access not disabled for all blobs or containers and alert\

#### Test Details
- eval: data.rule.storage_account_public_access_disabled
- id : PR-AZR-TRF-STR-010

#### Snapshots
| Title         | Description                                                                                                                                                                                                                                               |
|:--------------|:----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| id            | TRF_TEMPLATE_SNAPSHOT169                                                                                                                                                                                                                                  |
| structure     | filesystem                                                                                                                                                                                                                                                |
| reference     | main                                                                                                                                                                                                                                                      |
| source        | gitConnectorAzureTerraHashicorp                                                                                                                                                                                                                           |
| collection    | terraformtemplate                                                                                                                                                                                                                                         |
| type          | terraform                                                                                                                                                                                                                                                 |
| region        |                                                                                                                                                                                                                                                           |
| resourceTypes | ['azurerm_linux_virtual_machine_scale_set', 'azurerm_storage_account', 'azurerm_subnet', 'azurerm_resource_group', 'azurerm_virtual_network']                                                                                                             |
| paths         | ['https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/vm-scale-set/linux/boot-diagnostics/variables.tf', 'https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/vm-scale-set/linux/boot-diagnostics/main.tf'] |

- masterTestId: TEST_STORAGE_ACCOUNT_6
- masterSnapshotId: ['TRF_TEMPLATE_SNAPSHOT']
- type: rego
- rule: file(https://github.com/prancer-io/prancer-compliance-test/tree/master/azure/terraform/storageaccounts.rego)
- severity: High

tags
| Title      | Description                             |
|:-----------|:----------------------------------------|
| cloud      | git                                     |
| compliance | ['CIS', 'HIPAA', 'NIST 800', 'PCI-DSS'] |
| service    | ['terraform']                           |
----------------------------------------------------------------


### Test ID - PR-AZR-TRF-STR-010
Title: Ensure that Storage Account should not allow public access to all blobs or containers\
Test Result: **passed**\
Description : This policy will identify which Storage Account has public access not disabled for all blobs or containers and alert\

#### Test Details
- eval: data.rule.storage_account_public_access_disabled
- id : PR-AZR-TRF-STR-010

#### Snapshots
| Title         | Description                                                                                                                                                                                                                                                   |
|:--------------|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| id            | TRF_TEMPLATE_SNAPSHOT190                                                                                                                                                                                                                                      |
| structure     | filesystem                                                                                                                                                                                                                                                    |
| reference     | main                                                                                                                                                                                                                                                          |
| source        | gitConnectorAzureTerraHashicorp                                                                                                                                                                                                                               |
| collection    | terraformtemplate                                                                                                                                                                                                                                             |
| type          | terraform                                                                                                                                                                                                                                                     |
| region        |                                                                                                                                                                                                                                                               |
| resourceTypes | ['azurerm_storage_account', 'azurerm_subnet', 'azurerm_resource_group', 'azurerm_virtual_network', 'azurerm_windows_virtual_machine_scale_set']                                                                                                               |
| paths         | ['https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/vm-scale-set/windows/boot-diagnostics/variables.tf', 'https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/vm-scale-set/windows/boot-diagnostics/main.tf'] |

- masterTestId: TEST_STORAGE_ACCOUNT_6
- masterSnapshotId: ['TRF_TEMPLATE_SNAPSHOT']
- type: rego
- rule: file(https://github.com/prancer-io/prancer-compliance-test/tree/master/azure/terraform/storageaccounts.rego)
- severity: High

tags
| Title      | Description                             |
|:-----------|:----------------------------------------|
| cloud      | git                                     |
| compliance | ['CIS', 'HIPAA', 'NIST 800', 'PCI-DSS'] |
| service    | ['terraform']                           |
----------------------------------------------------------------


### Test ID - 
Title: Storage Accounts queue service logging should be enabled\
Test Result: **failed**\
Description : The Azure Storage Queue service logging records details for both successful and failed requests made to the queues, as well as end-to-end latency, server latency, and authentication information.\

#### Test Details
- eval: [{'id': 'PR-AZR-TRF-STR-014', 'eval': 'data.rule.storage_account_queue_logging_enabled_for_all_operation', 'message': 'data.rule.storage_account_queue_logging_enabled_for_all_operation_err', 'remediationDescription': "In 'azurerm_storage_account' resource, set 'read = true', 'write = true', 'delete = true' under 'logging' block which exist under 'queue_properties' block to fix the issue. Visit <a href='https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/storage_account#logging' target='_blank'>here</a> for details.", 'remediationFunction': 'PR_AZR_TRF_STR_014.py'}]
- id : 

#### Snapshots
[]

- masterTestId: TEST_STORAGE_ACCOUNT_7
- masterSnapshotId: ['TRF_TEMPLATE_SNAPSHOT']
- type: rego
- rule: file(https://github.com/prancer-io/prancer-compliance-test/tree/master/azure/terraform/storageaccounts.rego)
- severity: Medium

tags
| Title      | Description                             |
|:-----------|:----------------------------------------|
| cloud      | git                                     |
| compliance | ['CIS', 'HIPAA', 'NIST 800', 'PCI-DSS'] |
| service    | ['terraform']                           |
----------------------------------------------------------------


### Test ID - PR-AZR-TRF-STR-011
Title: Storage Accounts access should be allowed for trusted Microsoft services\
Test Result: **failed**\
Description : Ensure that 'Allow trusted Microsoft services to access this storage account' exception is enabled within your Azure Storage account configuration settings to grant access to trusted cloud services.\

#### Test Details
- eval: data.rule.storage_nr_allow_trusted_azure_services
- id : PR-AZR-TRF-STR-011

#### Snapshots
| Title         | Description                                                                                                                                                                                                                                                                                                                        |
|:--------------|:-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| id            | TRF_TEMPLATE_SNAPSHOT2                                                                                                                                                                                                                                                                                                             |
| structure     | filesystem                                                                                                                                                                                                                                                                                                                         |
| reference     | main                                                                                                                                                                                                                                                                                                                               |
| source        | gitConnectorAzureTerraHashicorp                                                                                                                                                                                                                                                                                                    |
| collection    | terraformtemplate                                                                                                                                                                                                                                                                                                                  |
| type          | terraform                                                                                                                                                                                                                                                                                                                          |
| region        |                                                                                                                                                                                                                                                                                                                                    |
| resourceTypes | ['azurerm_storage_container', 'azurerm_storage_account', 'azurerm_resource_group', 'azurerm_app_service_plan', 'azurerm_app_service']                                                                                                                                                                                              |
| paths         | ['https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/app-service/backup/output.tf', 'https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/app-service/backup/variables.tf', 'https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/app-service/backup/main.tf'] |

- masterTestId: TEST_STORAGE_ACCOUNT_9
- masterSnapshotId: ['TRF_TEMPLATE_SNAPSHOT']
- type: rego
- rule: file(https://github.com/prancer-io/prancer-compliance-test/tree/master/azure/terraform/storageaccounts.rego)
- severity: Medium

tags
| Title      | Description                             |
|:-----------|:----------------------------------------|
| cloud      | git                                     |
| compliance | ['CIS', 'HIPAA', 'NIST 800', 'PCI-DSS'] |
| service    | ['terraform']                           |
----------------------------------------------------------------


### Test ID - PR-AZR-TRF-STR-011
Title: Storage Accounts access should be allowed for trusted Microsoft services\
Test Result: **failed**\
Description : Ensure that 'Allow trusted Microsoft services to access this storage account' exception is enabled within your Azure Storage account configuration settings to grant access to trusted cloud services.\

#### Test Details
- eval: data.rule.storage_nr_allow_trusted_azure_services
- id : PR-AZR-TRF-STR-011

#### Snapshots
| Title         | Description                                                                                                                                                                                                                                                                                                                                                                                                                |
|:--------------|:---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| id            | TRF_TEMPLATE_SNAPSHOT7                                                                                                                                                                                                                                                                                                                                                                                                     |
| structure     | filesystem                                                                                                                                                                                                                                                                                                                                                                                                                 |
| reference     | main                                                                                                                                                                                                                                                                                                                                                                                                                       |
| source        | gitConnectorAzureTerraHashicorp                                                                                                                                                                                                                                                                                                                                                                                            |
| collection    | terraformtemplate                                                                                                                                                                                                                                                                                                                                                                                                          |
| type          | terraform                                                                                                                                                                                                                                                                                                                                                                                                                  |
| region        |                                                                                                                                                                                                                                                                                                                                                                                                                            |
| resourceTypes | ['azurerm_storage_account', 'azurerm_function_app', 'azurerm_resource_group', 'azurerm_role_assignment', 'azurerm_app_service_plan', 'azurerm_application_insights']                                                                                                                                                                                                                                                       |
| paths         | ['https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/app-service/function-azure-RBAC-role-assignment/outputs.tf', 'https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/app-service/function-azure-RBAC-role-assignment/variables.tf', 'https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/app-service/function-azure-RBAC-role-assignment/main.tf'] |

- masterTestId: TEST_STORAGE_ACCOUNT_9
- masterSnapshotId: ['TRF_TEMPLATE_SNAPSHOT']
- type: rego
- rule: file(https://github.com/prancer-io/prancer-compliance-test/tree/master/azure/terraform/storageaccounts.rego)
- severity: Medium

tags
| Title      | Description                             |
|:-----------|:----------------------------------------|
| cloud      | git                                     |
| compliance | ['CIS', 'HIPAA', 'NIST 800', 'PCI-DSS'] |
| service    | ['terraform']                           |
----------------------------------------------------------------


### Test ID - PR-AZR-TRF-STR-011
Title: Storage Accounts access should be allowed for trusted Microsoft services\
Test Result: **failed**\
Description : Ensure that 'Allow trusted Microsoft services to access this storage account' exception is enabled within your Azure Storage account configuration settings to grant access to trusted cloud services.\

#### Test Details
- eval: data.rule.storage_nr_allow_trusted_azure_services
- id : PR-AZR-TRF-STR-011

#### Snapshots
| Title         | Description                                                                                                                                                                                                                                                                                                                                                 |
|:--------------|:------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| id            | TRF_TEMPLATE_SNAPSHOT8                                                                                                                                                                                                                                                                                                                                      |
| structure     | filesystem                                                                                                                                                                                                                                                                                                                                                  |
| reference     | main                                                                                                                                                                                                                                                                                                                                                        |
| source        | gitConnectorAzureTerraHashicorp                                                                                                                                                                                                                                                                                                                             |
| collection    | terraformtemplate                                                                                                                                                                                                                                                                                                                                           |
| type          | terraform                                                                                                                                                                                                                                                                                                                                                   |
| region        |                                                                                                                                                                                                                                                                                                                                                             |
| resourceTypes | ['azurerm_storage_account', 'azurerm_function_app', 'azurerm_resource_group', 'azurerm_app_service_plan', 'azurerm_application_insights']                                                                                                                                                                                                                   |
| paths         | ['https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/app-service/function-basic/outputs.tf', 'https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/app-service/function-basic/variables.tf', 'https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/app-service/function-basic/main.tf'] |

- masterTestId: TEST_STORAGE_ACCOUNT_9
- masterSnapshotId: ['TRF_TEMPLATE_SNAPSHOT']
- type: rego
- rule: file(https://github.com/prancer-io/prancer-compliance-test/tree/master/azure/terraform/storageaccounts.rego)
- severity: Medium

tags
| Title      | Description                             |
|:-----------|:----------------------------------------|
| cloud      | git                                     |
| compliance | ['CIS', 'HIPAA', 'NIST 800', 'PCI-DSS'] |
| service    | ['terraform']                           |
----------------------------------------------------------------


### Test ID - PR-AZR-TRF-STR-011
Title: Storage Accounts access should be allowed for trusted Microsoft services\
Test Result: **failed**\
Description : Ensure that 'Allow trusted Microsoft services to access this storage account' exception is enabled within your Azure Storage account configuration settings to grant access to trusted cloud services.\

#### Test Details
- eval: data.rule.storage_nr_allow_trusted_azure_services
- id : PR-AZR-TRF-STR-011

#### Snapshots
| Title         | Description                                                                                                                                                                                                                          |
|:--------------|:-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| id            | TRF_TEMPLATE_SNAPSHOT9                                                                                                                                                                                                               |
| structure     | filesystem                                                                                                                                                                                                                           |
| reference     | main                                                                                                                                                                                                                                 |
| source        | gitConnectorAzureTerraHashicorp                                                                                                                                                                                                      |
| collection    | terraformtemplate                                                                                                                                                                                                                    |
| type          | terraform                                                                                                                                                                                                                            |
| region        |                                                                                                                                                                                                                                      |
| resourceTypes | ['azurerm_storage_account', 'azurerm_function_app', 'azurerm_resource_group', 'azurerm_app_service_plan']                                                                                                                            |
| paths         | ['https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/app-service/function-python/vars.tf', 'https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/app-service/function-python/main.tf'] |

- masterTestId: TEST_STORAGE_ACCOUNT_9
- masterSnapshotId: ['TRF_TEMPLATE_SNAPSHOT']
- type: rego
- rule: file(https://github.com/prancer-io/prancer-compliance-test/tree/master/azure/terraform/storageaccounts.rego)
- severity: Medium

tags
| Title      | Description                             |
|:-----------|:----------------------------------------|
| cloud      | git                                     |
| compliance | ['CIS', 'HIPAA', 'NIST 800', 'PCI-DSS'] |
| service    | ['terraform']                           |
----------------------------------------------------------------


### Test ID - PR-AZR-TRF-STR-011
Title: Storage Accounts access should be allowed for trusted Microsoft services\
Test Result: **failed**\
Description : Ensure that 'Allow trusted Microsoft services to access this storage account' exception is enabled within your Azure Storage account configuration settings to grant access to trusted cloud services.\

#### Test Details
- eval: data.rule.storage_nr_allow_trusted_azure_services
- id : PR-AZR-TRF-STR-011

#### Snapshots
| Title         | Description                                                                                                                                                                                               |
|:--------------|:----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| id            | TRF_TEMPLATE_SNAPSHOT24                                                                                                                                                                                   |
| structure     | filesystem                                                                                                                                                                                                |
| reference     | main                                                                                                                                                                                                      |
| source        | gitConnectorAzureTerraHashicorp                                                                                                                                                                           |
| collection    | terraformtemplate                                                                                                                                                                                         |
| type          | terraform                                                                                                                                                                                                 |
| region        |                                                                                                                                                                                                           |
| resourceTypes | ['azurerm_storage_account', 'azurerm_batch_pool', 'azurerm_resource_group', 'azurerm_batch_account']                                                                                                      |
| paths         | ['https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/batch/basic/variables.tf', 'https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/batch/basic/main.tf'] |

- masterTestId: TEST_STORAGE_ACCOUNT_9
- masterSnapshotId: ['TRF_TEMPLATE_SNAPSHOT']
- type: rego
- rule: file(https://github.com/prancer-io/prancer-compliance-test/tree/master/azure/terraform/storageaccounts.rego)
- severity: Medium

tags
| Title      | Description                             |
|:-----------|:----------------------------------------|
| cloud      | git                                     |
| compliance | ['CIS', 'HIPAA', 'NIST 800', 'PCI-DSS'] |
| service    | ['terraform']                           |
----------------------------------------------------------------


### Test ID - PR-AZR-TRF-STR-011
Title: Storage Accounts access should be allowed for trusted Microsoft services\
Test Result: **failed**\
Description : Ensure that 'Allow trusted Microsoft services to access this storage account' exception is enabled within your Azure Storage account configuration settings to grant access to trusted cloud services.\

#### Test Details
- eval: data.rule.storage_nr_allow_trusted_azure_services
- id : PR-AZR-TRF-STR-011

#### Snapshots
| Title         | Description                                                                                                                                                                                                                                                                  |
|:--------------|:-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| id            | TRF_TEMPLATE_SNAPSHOT25                                                                                                                                                                                                                                                      |
| structure     | filesystem                                                                                                                                                                                                                                                                   |
| reference     | main                                                                                                                                                                                                                                                                         |
| source        | gitConnectorAzureTerraHashicorp                                                                                                                                                                                                                                              |
| collection    | terraformtemplate                                                                                                                                                                                                                                                            |
| type          | terraform                                                                                                                                                                                                                                                                    |
| region        |                                                                                                                                                                                                                                                                              |
| resourceTypes | ['azurerm_storage_container', 'azurerm_storage_account', 'azurerm_subnet', 'azurerm_batch_pool', 'azurerm_resource_group', 'azurerm_image', 'azurerm_virtual_machine', 'azurerm_network_interface', 'azurerm_batch_account', 'azurerm_virtual_network', 'azurerm_public_ip'] |
| paths         | ['https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/batch/custom-image/variables.tf', 'https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/batch/custom-image/main.tf']                                                      |

- masterTestId: TEST_STORAGE_ACCOUNT_9
- masterSnapshotId: ['TRF_TEMPLATE_SNAPSHOT']
- type: rego
- rule: file(https://github.com/prancer-io/prancer-compliance-test/tree/master/azure/terraform/storageaccounts.rego)
- severity: Medium

tags
| Title      | Description                             |
|:-----------|:----------------------------------------|
| cloud      | git                                     |
| compliance | ['CIS', 'HIPAA', 'NIST 800', 'PCI-DSS'] |
| service    | ['terraform']                           |
----------------------------------------------------------------


### Test ID - PR-AZR-TRF-STR-011
Title: Storage Accounts access should be allowed for trusted Microsoft services\
Test Result: **failed**\
Description : Ensure that 'Allow trusted Microsoft services to access this storage account' exception is enabled within your Azure Storage account configuration settings to grant access to trusted cloud services.\

#### Test Details
- eval: data.rule.storage_nr_allow_trusted_azure_services
- id : PR-AZR-TRF-STR-011

#### Snapshots
| Title         | Description                                                                                                                                                                                                                                                                            |
|:--------------|:---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| id            | TRF_TEMPLATE_SNAPSHOT27                                                                                                                                                                                                                                                                |
| structure     | filesystem                                                                                                                                                                                                                                                                             |
| reference     | main                                                                                                                                                                                                                                                                                   |
| source        | gitConnectorAzureTerraHashicorp                                                                                                                                                                                                                                                        |
| collection    | terraformtemplate                                                                                                                                                                                                                                                                      |
| type          | terraform                                                                                                                                                                                                                                                                              |
| region        |                                                                                                                                                                                                                                                                                        |
| resourceTypes | ['azurerm_storage_account', 'azurerm_cdn_profile', 'azurerm_cdn_endpoint', 'azurerm_resource_group']                                                                                                                                                                                   |
| paths         | ['https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/cdn/outputs.tf', 'https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/cdn/variables.tf', 'https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/cdn/main.tf'] |

- masterTestId: TEST_STORAGE_ACCOUNT_9
- masterSnapshotId: ['TRF_TEMPLATE_SNAPSHOT']
- type: rego
- rule: file(https://github.com/prancer-io/prancer-compliance-test/tree/master/azure/terraform/storageaccounts.rego)
- severity: Medium

tags
| Title      | Description                             |
|:-----------|:----------------------------------------|
| cloud      | git                                     |
| compliance | ['CIS', 'HIPAA', 'NIST 800', 'PCI-DSS'] |
| service    | ['terraform']                           |
----------------------------------------------------------------


### Test ID - PR-AZR-TRF-STR-011
Title: Storage Accounts access should be allowed for trusted Microsoft services\
Test Result: **failed**\
Description : Ensure that 'Allow trusted Microsoft services to access this storage account' exception is enabled within your Azure Storage account configuration settings to grant access to trusted cloud services.\

#### Test Details
- eval: data.rule.storage_nr_allow_trusted_azure_services
- id : PR-AZR-TRF-STR-011

#### Snapshots
| Title         | Description                                                                                                                                                                                                                                                                                                                                                                |
|:--------------|:---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| id            | TRF_TEMPLATE_SNAPSHOT31                                                                                                                                                                                                                                                                                                                                                    |
| structure     | filesystem                                                                                                                                                                                                                                                                                                                                                                 |
| reference     | main                                                                                                                                                                                                                                                                                                                                                                       |
| source        | gitConnectorAzureTerraHashicorp                                                                                                                                                                                                                                                                                                                                            |
| collection    | terraformtemplate                                                                                                                                                                                                                                                                                                                                                          |
| type          | terraform                                                                                                                                                                                                                                                                                                                                                                  |
| region        |                                                                                                                                                                                                                                                                                                                                                                            |
| resourceTypes | ['azurerm_storage_account', 'azurerm_storage_share', 'azurerm_resource_group', 'azurerm_container_group']                                                                                                                                                                                                                                                                  |
| paths         | ['https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/container-instance/volume-mount/outputs.tf', 'https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/container-instance/volume-mount/variables.tf', 'https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/container-instance/volume-mount/main.tf'] |

- masterTestId: TEST_STORAGE_ACCOUNT_9
- masterSnapshotId: ['TRF_TEMPLATE_SNAPSHOT']
- type: rego
- rule: file(https://github.com/prancer-io/prancer-compliance-test/tree/master/azure/terraform/storageaccounts.rego)
- severity: Medium

tags
| Title      | Description                             |
|:-----------|:----------------------------------------|
| cloud      | git                                     |
| compliance | ['CIS', 'HIPAA', 'NIST 800', 'PCI-DSS'] |
| service    | ['terraform']                           |
----------------------------------------------------------------


### Test ID - PR-AZR-TRF-STR-011
Title: Storage Accounts access should be allowed for trusted Microsoft services\
Test Result: **failed**\
Description : Ensure that 'Allow trusted Microsoft services to access this storage account' exception is enabled within your Azure Storage account configuration settings to grant access to trusted cloud services.\

#### Test Details
- eval: data.rule.storage_nr_allow_trusted_azure_services
- id : PR-AZR-TRF-STR-011

#### Snapshots
| Title         | Description                                                                                                                                                                                                                                 |
|:--------------|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| id            | TRF_TEMPLATE_SNAPSHOT43                                                                                                                                                                                                                     |
| structure     | filesystem                                                                                                                                                                                                                                  |
| reference     | main                                                                                                                                                                                                                                        |
| source        | gitConnectorAzureTerraHashicorp                                                                                                                                                                                                             |
| collection    | terraformtemplate                                                                                                                                                                                                                           |
| type          | terraform                                                                                                                                                                                                                                   |
| region        |                                                                                                                                                                                                                                             |
| resourceTypes | ['azurerm_eventgrid_event_subscription', 'azurerm_storage_container', 'azurerm_storage_account', 'azurerm_resource_group', 'azurerm_storage_queue', 'azurerm_storage_blob']                                                                 |
| paths         | ['https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/eventgrid/event-subscription/variables.tf', 'https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/eventgrid/event-subscription/main.tf'] |

- masterTestId: TEST_STORAGE_ACCOUNT_9
- masterSnapshotId: ['TRF_TEMPLATE_SNAPSHOT']
- type: rego
- rule: file(https://github.com/prancer-io/prancer-compliance-test/tree/master/azure/terraform/storageaccounts.rego)
- severity: Medium

tags
| Title      | Description                             |
|:-----------|:----------------------------------------|
| cloud      | git                                     |
| compliance | ['CIS', 'HIPAA', 'NIST 800', 'PCI-DSS'] |
| service    | ['terraform']                           |
----------------------------------------------------------------


### Test ID - PR-AZR-TRF-STR-011
Title: Storage Accounts access should be allowed for trusted Microsoft services\
Test Result: **failed**\
Description : Ensure that 'Allow trusted Microsoft services to access this storage account' exception is enabled within your Azure Storage account configuration settings to grant access to trusted cloud services.\

#### Test Details
- eval: data.rule.storage_nr_allow_trusted_azure_services
- id : PR-AZR-TRF-STR-011

#### Snapshots
| Title         | Description                                                                                                                                                                                                                                                                                                                                                                                                                                                        |
|:--------------|:-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| id            | TRF_TEMPLATE_SNAPSHOT46                                                                                                                                                                                                                                                                                                                                                                                                                                            |
| structure     | filesystem                                                                                                                                                                                                                                                                                                                                                                                                                                                         |
| reference     | main                                                                                                                                                                                                                                                                                                                                                                                                                                                               |
| source        | gitConnectorAzureTerraHashicorp                                                                                                                                                                                                                                                                                                                                                                                                                                    |
| collection    | terraformtemplate                                                                                                                                                                                                                                                                                                                                                                                                                                                  |
| type          | terraform                                                                                                                                                                                                                                                                                                                                                                                                                                                          |
| region        |                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |
| resourceTypes | ['azurerm_subnet_network_security_group_association', 'azurerm_storage_container', 'azuread_group', 'azurerm_network_security_group', 'azurerm_storage_account', 'azurerm_virtual_network_dns_servers', 'azurerm_subnet', 'azurerm_resource_group', 'azurerm_role_assignment', 'azuread_user', 'azurerm_active_directory_domain_service', 'azurerm_user_assigned_identity', 'azurerm_hdinsight_hadoop_cluster', 'azurerm_virtual_network', 'azuread_group_member'] |
| paths         | ['https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/hdinsight/enterprise-security-package/providers.tf', 'https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/hdinsight/enterprise-security-package/variables.tf', 'https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/hdinsight/enterprise-security-package/main.tf']                                                                     |

- masterTestId: TEST_STORAGE_ACCOUNT_9
- masterSnapshotId: ['TRF_TEMPLATE_SNAPSHOT']
- type: rego
- rule: file(https://github.com/prancer-io/prancer-compliance-test/tree/master/azure/terraform/storageaccounts.rego)
- severity: Medium

tags
| Title      | Description                             |
|:-----------|:----------------------------------------|
| cloud      | git                                     |
| compliance | ['CIS', 'HIPAA', 'NIST 800', 'PCI-DSS'] |
| service    | ['terraform']                           |
----------------------------------------------------------------


### Test ID - PR-AZR-TRF-STR-011
Title: Storage Accounts access should be allowed for trusted Microsoft services\
Test Result: **failed**\
Description : Ensure that 'Allow trusted Microsoft services to access this storage account' exception is enabled within your Azure Storage account configuration settings to grant access to trusted cloud services.\

#### Test Details
- eval: data.rule.storage_nr_allow_trusted_azure_services
- id : PR-AZR-TRF-STR-011

#### Snapshots
| Title         | Description                                                                                                                                                                                                                                                                                                                                                                                                                                                                |
|:--------------|:---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| id            | TRF_TEMPLATE_SNAPSHOT47                                                                                                                                                                                                                                                                                                                                                                                                                                                    |
| structure     | filesystem                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |
| reference     | main                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |
| source        | gitConnectorAzureTerraHashicorp                                                                                                                                                                                                                                                                                                                                                                                                                                            |
| collection    | terraformtemplate                                                                                                                                                                                                                                                                                                                                                                                                                                                          |
| type          | terraform                                                                                                                                                                                                                                                                                                                                                                                                                                                                  |
| region        |                                                                                                                                                                                                                                                                                                                                                                                                                                                                            |
| resourceTypes | ['azurerm_subnet_network_security_group_association', 'azurerm_network_security_group', 'azurerm_storage_account', 'azurerm_nat_gateway_public_ip_association', 'azurerm_subnet_nat_gateway_association', 'azurerm_storage_data_lake_gen2_filesystem', 'azurerm_subnet', 'azurerm_resource_group', 'azurerm_role_assignment', 'azurerm_user_assigned_identity', 'azurerm_hdinsight_hadoop_cluster', 'azurerm_nat_gateway', 'azurerm_virtual_network', 'azurerm_public_ip'] |
| paths         | ['https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/hdinsight/private-link/hadoop-interactive-spark-cluster/variables.tf', 'https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/hdinsight/private-link/hadoop-interactive-spark-cluster/main.tf']                                                                                                                                                                          |

- masterTestId: TEST_STORAGE_ACCOUNT_9
- masterSnapshotId: ['TRF_TEMPLATE_SNAPSHOT']
- type: rego
- rule: file(https://github.com/prancer-io/prancer-compliance-test/tree/master/azure/terraform/storageaccounts.rego)
- severity: Medium

tags
| Title      | Description                             |
|:-----------|:----------------------------------------|
| cloud      | git                                     |
| compliance | ['CIS', 'HIPAA', 'NIST 800', 'PCI-DSS'] |
| service    | ['terraform']                           |
----------------------------------------------------------------


### Test ID - PR-AZR-TRF-STR-011
Title: Storage Accounts access should be allowed for trusted Microsoft services\
Test Result: **failed**\
Description : Ensure that 'Allow trusted Microsoft services to access this storage account' exception is enabled within your Azure Storage account configuration settings to grant access to trusted cloud services.\

#### Test Details
- eval: data.rule.storage_nr_allow_trusted_azure_services
- id : PR-AZR-TRF-STR-011

#### Snapshots
| Title         | Description                                                                                                                                                                                                                 |
|:--------------|:----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| id            | TRF_TEMPLATE_SNAPSHOT69                                                                                                                                                                                                     |
| structure     | filesystem                                                                                                                                                                                                                  |
| reference     | main                                                                                                                                                                                                                        |
| source        | gitConnectorAzureTerraHashicorp                                                                                                                                                                                             |
| collection    | terraformtemplate                                                                                                                                                                                                           |
| type          | terraform                                                                                                                                                                                                                   |
| region        |                                                                                                                                                                                                                             |
| resourceTypes | ['azurerm_storage_account', 'azurerm_media_services_account', 'azurerm_resource_group']                                                                                                                                     |
| paths         | ['https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/media-services/basic/variables.tf', 'https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/media-services/basic/main.tf'] |

- masterTestId: TEST_STORAGE_ACCOUNT_9
- masterSnapshotId: ['TRF_TEMPLATE_SNAPSHOT']
- type: rego
- rule: file(https://github.com/prancer-io/prancer-compliance-test/tree/master/azure/terraform/storageaccounts.rego)
- severity: Medium

tags
| Title      | Description                             |
|:-----------|:----------------------------------------|
| cloud      | git                                     |
| compliance | ['CIS', 'HIPAA', 'NIST 800', 'PCI-DSS'] |
| service    | ['terraform']                           |
----------------------------------------------------------------


### Test ID - PR-AZR-TRF-STR-011
Title: Storage Accounts access should be allowed for trusted Microsoft services\
Test Result: **failed**\
Description : Ensure that 'Allow trusted Microsoft services to access this storage account' exception is enabled within your Azure Storage account configuration settings to grant access to trusted cloud services.\

#### Test Details
- eval: data.rule.storage_nr_allow_trusted_azure_services
- id : PR-AZR-TRF-STR-011

#### Snapshots
| Title         | Description                                                                                                                                                                                                                                         |
|:--------------|:----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| id            | TRF_TEMPLATE_SNAPSHOT70                                                                                                                                                                                                                             |
| structure     | filesystem                                                                                                                                                                                                                                          |
| reference     | main                                                                                                                                                                                                                                                |
| source        | gitConnectorAzureTerraHashicorp                                                                                                                                                                                                                     |
| collection    | terraformtemplate                                                                                                                                                                                                                                   |
| type          | terraform                                                                                                                                                                                                                                           |
| region        |                                                                                                                                                                                                                                                     |
| resourceTypes | ['azurerm_storage_account', 'azurerm_media_services_account', 'azurerm_resource_group', 'azurerm_media_asset']                                                                                                                                      |
| paths         | ['https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/media-services/basic-with-assets/variables.tf', 'https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/media-services/basic-with-assets/main.tf'] |

- masterTestId: TEST_STORAGE_ACCOUNT_9
- masterSnapshotId: ['TRF_TEMPLATE_SNAPSHOT']
- type: rego
- rule: file(https://github.com/prancer-io/prancer-compliance-test/tree/master/azure/terraform/storageaccounts.rego)
- severity: Medium

tags
| Title      | Description                             |
|:-----------|:----------------------------------------|
| cloud      | git                                     |
| compliance | ['CIS', 'HIPAA', 'NIST 800', 'PCI-DSS'] |
| service    | ['terraform']                           |
----------------------------------------------------------------


### Test ID - PR-AZR-TRF-STR-011
Title: Storage Accounts access should be allowed for trusted Microsoft services\
Test Result: **failed**\
Description : Ensure that 'Allow trusted Microsoft services to access this storage account' exception is enabled within your Azure Storage account configuration settings to grant access to trusted cloud services.\

#### Test Details
- eval: data.rule.storage_nr_allow_trusted_azure_services
- id : PR-AZR-TRF-STR-011

#### Snapshots
| Title         | Description                                                                                                                                                                                                                                                         |
|:--------------|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| id            | TRF_TEMPLATE_SNAPSHOT71                                                                                                                                                                                                                                             |
| structure     | filesystem                                                                                                                                                                                                                                                          |
| reference     | main                                                                                                                                                                                                                                                                |
| source        | gitConnectorAzureTerraHashicorp                                                                                                                                                                                                                                     |
| collection    | terraformtemplate                                                                                                                                                                                                                                                   |
| type          | terraform                                                                                                                                                                                                                                                           |
| region        |                                                                                                                                                                                                                                                                     |
| resourceTypes | ['azurerm_storage_account', 'azurerm_media_services_account', 'azurerm_resource_group']                                                                                                                                                                             |
| paths         | ['https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/media-services/multiple-storage-accounts/variables.tf', 'https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/media-services/multiple-storage-accounts/main.tf'] |

- masterTestId: TEST_STORAGE_ACCOUNT_9
- masterSnapshotId: ['TRF_TEMPLATE_SNAPSHOT']
- type: rego
- rule: file(https://github.com/prancer-io/prancer-compliance-test/tree/master/azure/terraform/storageaccounts.rego)
- severity: Medium

tags
| Title      | Description                             |
|:-----------|:----------------------------------------|
| cloud      | git                                     |
| compliance | ['CIS', 'HIPAA', 'NIST 800', 'PCI-DSS'] |
| service    | ['terraform']                           |
----------------------------------------------------------------


### Test ID - PR-AZR-TRF-STR-011
Title: Storage Accounts access should be allowed for trusted Microsoft services\
Test Result: **failed**\
Description : Ensure that 'Allow trusted Microsoft services to access this storage account' exception is enabled within your Azure Storage account configuration settings to grant access to trusted cloud services.\

#### Test Details
- eval: data.rule.storage_nr_allow_trusted_azure_services
- id : PR-AZR-TRF-STR-011

#### Snapshots
| Title         | Description                                                                                                                                                                                                                                       |
|:--------------|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| id            | TRF_TEMPLATE_SNAPSHOT91                                                                                                                                                                                                                           |
| structure     | filesystem                                                                                                                                                                                                                                        |
| reference     | main                                                                                                                                                                                                                                              |
| source        | gitConnectorAzureTerraHashicorp                                                                                                                                                                                                                   |
| collection    | terraformtemplate                                                                                                                                                                                                                                 |
| type          | terraform                                                                                                                                                                                                                                         |
| region        |                                                                                                                                                                                                                                                   |
| resourceTypes | ['azurerm_storage_account', 'azurerm_redis_cache', 'azurerm_resource_group']                                                                                                                                                                      |
| paths         | ['https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/redis-cache/premium-with-backup/variables.tf', 'https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/redis-cache/premium-with-backup/main.tf'] |

- masterTestId: TEST_STORAGE_ACCOUNT_9
- masterSnapshotId: ['TRF_TEMPLATE_SNAPSHOT']
- type: rego
- rule: file(https://github.com/prancer-io/prancer-compliance-test/tree/master/azure/terraform/storageaccounts.rego)
- severity: Medium

tags
| Title      | Description                             |
|:-----------|:----------------------------------------|
| cloud      | git                                     |
| compliance | ['CIS', 'HIPAA', 'NIST 800', 'PCI-DSS'] |
| service    | ['terraform']                           |
----------------------------------------------------------------


### Test ID - PR-AZR-TRF-STR-011
Title: Storage Accounts access should be allowed for trusted Microsoft services\
Test Result: **failed**\
Description : Ensure that 'Allow trusted Microsoft services to access this storage account' exception is enabled within your Azure Storage account configuration settings to grant access to trusted cloud services.\

#### Test Details
- eval: data.rule.storage_nr_allow_trusted_azure_services
- id : PR-AZR-TRF-STR-011

#### Snapshots
| Title         | Description                                                                                                                                                                                                                                                                     |
|:--------------|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| id            | TRF_TEMPLATE_SNAPSHOT97                                                                                                                                                                                                                                                         |
| structure     | filesystem                                                                                                                                                                                                                                                                      |
| reference     | main                                                                                                                                                                                                                                                                            |
| source        | gitConnectorAzureTerraHashicorp                                                                                                                                                                                                                                                 |
| collection    | terraformtemplate                                                                                                                                                                                                                                                               |
| type          | terraform                                                                                                                                                                                                                                                                       |
| region        |                                                                                                                                                                                                                                                                                 |
| resourceTypes | ['azurerm_storage_account', 'azurerm_subnet', 'azurerm_resource_group', 'azurerm_virtual_network']                                                                                                                                                                              |
| paths         | ['https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/service-fabric/windows-vmss-self-signed-certs/variables.tf', 'https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/service-fabric/windows-vmss-self-signed-certs/0-base.tf'] |

- masterTestId: TEST_STORAGE_ACCOUNT_9
- masterSnapshotId: ['TRF_TEMPLATE_SNAPSHOT']
- type: rego
- rule: file(https://github.com/prancer-io/prancer-compliance-test/tree/master/azure/terraform/storageaccounts.rego)
- severity: Medium

tags
| Title      | Description                             |
|:-----------|:----------------------------------------|
| cloud      | git                                     |
| compliance | ['CIS', 'HIPAA', 'NIST 800', 'PCI-DSS'] |
| service    | ['terraform']                           |
----------------------------------------------------------------


### Test ID - PR-AZR-TRF-STR-011
Title: Storage Accounts access should be allowed for trusted Microsoft services\
Test Result: **failed**\
Description : Ensure that 'Allow trusted Microsoft services to access this storage account' exception is enabled within your Azure Storage account configuration settings to grant access to trusted cloud services.\

#### Test Details
- eval: data.rule.storage_nr_allow_trusted_azure_services
- id : PR-AZR-TRF-STR-011

#### Snapshots
| Title         | Description                                                                                                                                                                                                                       |
|:--------------|:----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| id            | TRF_TEMPLATE_SNAPSHOT107                                                                                                                                                                                                          |
| structure     | filesystem                                                                                                                                                                                                                        |
| reference     | main                                                                                                                                                                                                                              |
| source        | gitConnectorAzureTerraHashicorp                                                                                                                                                                                                   |
| collection    | terraformtemplate                                                                                                                                                                                                                 |
| type          | terraform                                                                                                                                                                                                                         |
| region        |                                                                                                                                                                                                                                   |
| resourceTypes | ['azurerm_storage_account', 'azurerm_resource_group']                                                                                                                                                                             |
| paths         | ['https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/storage/storage-account/variables.tf', 'https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/storage/storage-account/main.tf'] |

- masterTestId: TEST_STORAGE_ACCOUNT_9
- masterSnapshotId: ['TRF_TEMPLATE_SNAPSHOT']
- type: rego
- rule: file(https://github.com/prancer-io/prancer-compliance-test/tree/master/azure/terraform/storageaccounts.rego)
- severity: Medium

tags
| Title      | Description                             |
|:-----------|:----------------------------------------|
| cloud      | git                                     |
| compliance | ['CIS', 'HIPAA', 'NIST 800', 'PCI-DSS'] |
| service    | ['terraform']                           |
----------------------------------------------------------------


### Test ID - PR-AZR-TRF-STR-011
Title: Storage Accounts access should be allowed for trusted Microsoft services\
Test Result: **failed**\
Description : Ensure that 'Allow trusted Microsoft services to access this storage account' exception is enabled within your Azure Storage account configuration settings to grant access to trusted cloud services.\

#### Test Details
- eval: data.rule.storage_nr_allow_trusted_azure_services
- id : PR-AZR-TRF-STR-011

#### Snapshots
| Title         | Description                                                                                                                                                                                                                           |
|:--------------|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| id            | TRF_TEMPLATE_SNAPSHOT108                                                                                                                                                                                                              |
| structure     | filesystem                                                                                                                                                                                                                            |
| reference     | main                                                                                                                                                                                                                                  |
| source        | gitConnectorAzureTerraHashicorp                                                                                                                                                                                                       |
| collection    | terraformtemplate                                                                                                                                                                                                                     |
| type          | terraform                                                                                                                                                                                                                             |
| region        |                                                                                                                                                                                                                                       |
| resourceTypes | ['azurerm_storage_account', 'azurerm_storage_container', 'azurerm_resource_group']                                                                                                                                                    |
| paths         | ['https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/storage/storage-container/variables.tf', 'https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/storage/storage-container/main.tf'] |

- masterTestId: TEST_STORAGE_ACCOUNT_9
- masterSnapshotId: ['TRF_TEMPLATE_SNAPSHOT']
- type: rego
- rule: file(https://github.com/prancer-io/prancer-compliance-test/tree/master/azure/terraform/storageaccounts.rego)
- severity: Medium

tags
| Title      | Description                             |
|:-----------|:----------------------------------------|
| cloud      | git                                     |
| compliance | ['CIS', 'HIPAA', 'NIST 800', 'PCI-DSS'] |
| service    | ['terraform']                           |
----------------------------------------------------------------


### Test ID - PR-AZR-TRF-STR-011
Title: Storage Accounts access should be allowed for trusted Microsoft services\
Test Result: **failed**\
Description : Ensure that 'Allow trusted Microsoft services to access this storage account' exception is enabled within your Azure Storage account configuration settings to grant access to trusted cloud services.\

#### Test Details
- eval: data.rule.storage_nr_allow_trusted_azure_services
- id : PR-AZR-TRF-STR-011

#### Snapshots
| Title         | Description                                                                                                                                                                                                                   |
|:--------------|:------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| id            | TRF_TEMPLATE_SNAPSHOT109                                                                                                                                                                                                      |
| structure     | filesystem                                                                                                                                                                                                                    |
| reference     | main                                                                                                                                                                                                                          |
| source        | gitConnectorAzureTerraHashicorp                                                                                                                                                                                               |
| collection    | terraformtemplate                                                                                                                                                                                                             |
| type          | terraform                                                                                                                                                                                                                     |
| region        |                                                                                                                                                                                                                               |
| resourceTypes | ['azurerm_storage_account', 'azurerm_storage_share', 'azurerm_resource_group']                                                                                                                                                |
| paths         | ['https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/storage/storage-share/variables.tf', 'https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/storage/storage-share/main.tf'] |

- masterTestId: TEST_STORAGE_ACCOUNT_9
- masterSnapshotId: ['TRF_TEMPLATE_SNAPSHOT']
- type: rego
- rule: file(https://github.com/prancer-io/prancer-compliance-test/tree/master/azure/terraform/storageaccounts.rego)
- severity: Medium

tags
| Title      | Description                             |
|:-----------|:----------------------------------------|
| cloud      | git                                     |
| compliance | ['CIS', 'HIPAA', 'NIST 800', 'PCI-DSS'] |
| service    | ['terraform']                           |
----------------------------------------------------------------


### Test ID - PR-AZR-TRF-STR-011
Title: Storage Accounts access should be allowed for trusted Microsoft services\
Test Result: **failed**\
Description : Ensure that 'Allow trusted Microsoft services to access this storage account' exception is enabled within your Azure Storage account configuration settings to grant access to trusted cloud services.\

#### Test Details
- eval: data.rule.storage_nr_allow_trusted_azure_services
- id : PR-AZR-TRF-STR-011

#### Snapshots
| Title         | Description                                                                                                                                                                                                                           |
|:--------------|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| id            | TRF_TEMPLATE_SNAPSHOT110                                                                                                                                                                                                              |
| structure     | filesystem                                                                                                                                                                                                                            |
| reference     | main                                                                                                                                                                                                                                  |
| source        | gitConnectorAzureTerraHashicorp                                                                                                                                                                                                       |
| collection    | terraformtemplate                                                                                                                                                                                                                     |
| type          | terraform                                                                                                                                                                                                                             |
| region        |                                                                                                                                                                                                                                       |
| resourceTypes | ['azurerm_storage_account', 'azurerm_storage_data_lake_gen2_path', 'azurerm_storage_data_lake_gen2_filesystem', 'azurerm_resource_group', 'azurerm_role_assignment', 'azurerm_user_assigned_identity']                                |
| paths         | ['https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/storage/storage_adls_acls/variables.tf', 'https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/storage/storage_adls_acls/main.tf'] |

- masterTestId: TEST_STORAGE_ACCOUNT_9
- masterSnapshotId: ['TRF_TEMPLATE_SNAPSHOT']
- type: rego
- rule: file(https://github.com/prancer-io/prancer-compliance-test/tree/master/azure/terraform/storageaccounts.rego)
- severity: Medium

tags
| Title      | Description                             |
|:-----------|:----------------------------------------|
| cloud      | git                                     |
| compliance | ['CIS', 'HIPAA', 'NIST 800', 'PCI-DSS'] |
| service    | ['terraform']                           |
----------------------------------------------------------------


### Test ID - PR-AZR-TRF-STR-011
Title: Storage Accounts access should be allowed for trusted Microsoft services\
Test Result: **failed**\
Description : Ensure that 'Allow trusted Microsoft services to access this storage account' exception is enabled within your Azure Storage account configuration settings to grant access to trusted cloud services.\

#### Test Details
- eval: data.rule.storage_nr_allow_trusted_azure_services
- id : PR-AZR-TRF-STR-011

#### Snapshots
| Title         | Description                                                                                                                                                                                                         |
|:--------------|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| id            | TRF_TEMPLATE_SNAPSHOT111                                                                                                                                                                                            |
| structure     | filesystem                                                                                                                                                                                                          |
| reference     | main                                                                                                                                                                                                                |
| source        | gitConnectorAzureTerraHashicorp                                                                                                                                                                                     |
| collection    | terraformtemplate                                                                                                                                                                                                   |
| type          | terraform                                                                                                                                                                                                           |
| region        |                                                                                                                                                                                                                     |
| resourceTypes | ['azurerm_storage_container', 'azurerm_storage_account', 'azurerm_stream_analytics_job', 'azurerm_resource_group', 'azurerm_stream_analytics_reference_input_blob']                                                 |
| paths         | ['https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/stream-analytics/variables.tf', 'https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/stream-analytics/main.tf'] |

- masterTestId: TEST_STORAGE_ACCOUNT_9
- masterSnapshotId: ['TRF_TEMPLATE_SNAPSHOT']
- type: rego
- rule: file(https://github.com/prancer-io/prancer-compliance-test/tree/master/azure/terraform/storageaccounts.rego)
- severity: Medium

tags
| Title      | Description                             |
|:-----------|:----------------------------------------|
| cloud      | git                                     |
| compliance | ['CIS', 'HIPAA', 'NIST 800', 'PCI-DSS'] |
| service    | ['terraform']                           |
----------------------------------------------------------------


### Test ID - PR-AZR-TRF-STR-011
Title: Storage Accounts access should be allowed for trusted Microsoft services\
Test Result: **failed**\
Description : Ensure that 'Allow trusted Microsoft services to access this storage account' exception is enabled within your Azure Storage account configuration settings to grant access to trusted cloud services.\

#### Test Details
- eval: data.rule.storage_nr_allow_trusted_azure_services
- id : PR-AZR-TRF-STR-011

#### Snapshots
| Title         | Description                                                                                                                                                                                                                                                                                                                                                                                                                                                    |
|:--------------|:---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| id            | TRF_TEMPLATE_SNAPSHOT123                                                                                                                                                                                                                                                                                                                                                                                                                                       |
| structure     | filesystem                                                                                                                                                                                                                                                                                                                                                                                                                                                     |
| reference     | main                                                                                                                                                                                                                                                                                                                                                                                                                                                           |
| source        | gitConnectorAzureTerraHashicorp                                                                                                                                                                                                                                                                                                                                                                                                                                |
| collection    | terraformtemplate                                                                                                                                                                                                                                                                                                                                                                                                                                              |
| type          | terraform                                                                                                                                                                                                                                                                                                                                                                                                                                                      |
| region        |                                                                                                                                                                                                                                                                                                                                                                                                                                                                |
| resourceTypes | ['azurerm_availability_set', 'azurerm_storage_account', 'azurerm_lb_backend_address_pool', 'azurerm_lb', 'azurerm_network_interface_nat_rule_association', 'azurerm_lb_rule', 'azurerm_subnet', 'azurerm_lb_nat_rule', 'azurerm_resource_group', 'azurerm_virtual_machine', 'azurerm_network_interface', 'azurerm_lb_probe', 'azurerm_virtual_network', 'azurerm_public_ip']                                                                                   |
| paths         | ['https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/virtual-machines/virtual_machine/2-vms-loadbalancer-lbrules/outputs.tf', 'https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/virtual-machines/virtual_machine/2-vms-loadbalancer-lbrules/variables.tf', 'https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/virtual-machines/virtual_machine/2-vms-loadbalancer-lbrules/main.tf'] |

- masterTestId: TEST_STORAGE_ACCOUNT_9
- masterSnapshotId: ['TRF_TEMPLATE_SNAPSHOT']
- type: rego
- rule: file(https://github.com/prancer-io/prancer-compliance-test/tree/master/azure/terraform/storageaccounts.rego)
- severity: Medium

tags
| Title      | Description                             |
|:-----------|:----------------------------------------|
| cloud      | git                                     |
| compliance | ['CIS', 'HIPAA', 'NIST 800', 'PCI-DSS'] |
| service    | ['terraform']                           |
----------------------------------------------------------------


### Test ID - PR-AZR-TRF-STR-011
Title: Storage Accounts access should be allowed for trusted Microsoft services\
Test Result: **failed**\
Description : Ensure that 'Allow trusted Microsoft services to access this storage account' exception is enabled within your Azure Storage account configuration settings to grant access to trusted cloud services.\

#### Test Details
- eval: data.rule.storage_nr_allow_trusted_azure_services
- id : PR-AZR-TRF-STR-011

#### Snapshots
| Title         | Description                                                                                                                                                                                                                                                                                                                                                                                                                                              |
|:--------------|:---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| id            | TRF_TEMPLATE_SNAPSHOT127                                                                                                                                                                                                                                                                                                                                                                                                                                 |
| structure     | filesystem                                                                                                                                                                                                                                                                                                                                                                                                                                               |
| reference     | main                                                                                                                                                                                                                                                                                                                                                                                                                                                     |
| source        | gitConnectorAzureTerraHashicorp                                                                                                                                                                                                                                                                                                                                                                                                                          |
| collection    | terraformtemplate                                                                                                                                                                                                                                                                                                                                                                                                                                        |
| type          | terraform                                                                                                                                                                                                                                                                                                                                                                                                                                                |
| region        |                                                                                                                                                                                                                                                                                                                                                                                                                                                          |
| resourceTypes | ['azurerm_storage_account', 'azurerm_template_deployment', 'azurerm_subnet', 'azurerm_resource_group', 'azurerm_virtual_machine', 'azurerm_network_interface', 'azurerm_virtual_network']                                                                                                                                                                                                                                                                |
| paths         | ['https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/virtual-machines/virtual_machine/encrypt-running-linux-vm/outputs.tf', 'https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/virtual-machines/virtual_machine/encrypt-running-linux-vm/variables.tf', 'https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/virtual-machines/virtual_machine/encrypt-running-linux-vm/main.tf'] |

- masterTestId: TEST_STORAGE_ACCOUNT_9
- masterSnapshotId: ['TRF_TEMPLATE_SNAPSHOT']
- type: rego
- rule: file(https://github.com/prancer-io/prancer-compliance-test/tree/master/azure/terraform/storageaccounts.rego)
- severity: Medium

tags
| Title      | Description                             |
|:-----------|:----------------------------------------|
| cloud      | git                                     |
| compliance | ['CIS', 'HIPAA', 'NIST 800', 'PCI-DSS'] |
| service    | ['terraform']                           |
----------------------------------------------------------------


### Test ID - PR-AZR-TRF-STR-011
Title: Storage Accounts access should be allowed for trusted Microsoft services\
Test Result: **failed**\
Description : Ensure that 'Allow trusted Microsoft services to access this storage account' exception is enabled within your Azure Storage account configuration settings to grant access to trusted cloud services.\

#### Test Details
- eval: data.rule.storage_nr_allow_trusted_azure_services
- id : PR-AZR-TRF-STR-011

#### Snapshots
| Title         | Description                                                                                                                                                                                                                                                                                                                                                                                                                      |
|:--------------|:---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| id            | TRF_TEMPLATE_SNAPSHOT139                                                                                                                                                                                                                                                                                                                                                                                                         |
| structure     | filesystem                                                                                                                                                                                                                                                                                                                                                                                                                       |
| reference     | main                                                                                                                                                                                                                                                                                                                                                                                                                             |
| source        | gitConnectorAzureTerraHashicorp                                                                                                                                                                                                                                                                                                                                                                                                  |
| collection    | terraformtemplate                                                                                                                                                                                                                                                                                                                                                                                                                |
| type          | terraform                                                                                                                                                                                                                                                                                                                                                                                                                        |
| region        |                                                                                                                                                                                                                                                                                                                                                                                                                                  |
| resourceTypes | ['azurerm_availability_set', 'azurerm_network_security_group', 'azurerm_storage_account', 'azurerm_lb_backend_address_pool', 'azurerm_lb', 'azurerm_lb_rule', 'azurerm_subnet', 'azurerm_lb_nat_rule', 'azurerm_resource_group', 'azurerm_virtual_machine', 'azurerm_network_interface', 'azurerm_lb_probe', 'azurerm_virtual_network', 'azurerm_public_ip']                                                                     |
| paths         | ['https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/virtual-machines/virtual_machine/openshift-origin/outputs.tf', 'https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/virtual-machines/virtual_machine/openshift-origin/variables.tf', 'https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/virtual-machines/virtual_machine/openshift-origin/main.tf'] |

- masterTestId: TEST_STORAGE_ACCOUNT_9
- masterSnapshotId: ['TRF_TEMPLATE_SNAPSHOT']
- type: rego
- rule: file(https://github.com/prancer-io/prancer-compliance-test/tree/master/azure/terraform/storageaccounts.rego)
- severity: Medium

tags
| Title      | Description                             |
|:-----------|:----------------------------------------|
| cloud      | git                                     |
| compliance | ['CIS', 'HIPAA', 'NIST 800', 'PCI-DSS'] |
| service    | ['terraform']                           |
----------------------------------------------------------------


### Test ID - PR-AZR-TRF-STR-011
Title: Storage Accounts access should be allowed for trusted Microsoft services\
Test Result: **failed**\
Description : Ensure that 'Allow trusted Microsoft services to access this storage account' exception is enabled within your Azure Storage account configuration settings to grant access to trusted cloud services.\

#### Test Details
- eval: data.rule.storage_nr_allow_trusted_azure_services
- id : PR-AZR-TRF-STR-011

#### Snapshots
| Title         | Description                                                                                                                                                                                                                                                                                                                                                                                                                                                             |
|:--------------|:------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| id            | TRF_TEMPLATE_SNAPSHOT145                                                                                                                                                                                                                                                                                                                                                                                                                                                |
| structure     | filesystem                                                                                                                                                                                                                                                                                                                                                                                                                                                              |
| reference     | main                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |
| source        | gitConnectorAzureTerraHashicorp                                                                                                                                                                                                                                                                                                                                                                                                                                         |
| collection    | terraformtemplate                                                                                                                                                                                                                                                                                                                                                                                                                                                       |
| type          | terraform                                                                                                                                                                                                                                                                                                                                                                                                                                                               |
| region        |                                                                                                                                                                                                                                                                                                                                                                                                                                                                         |
| resourceTypes | ['azurerm_availability_set', 'azurerm_storage_container', 'azurerm_network_security_group', 'azurerm_storage_account', 'azurerm_subnet', 'azurerm_resource_group', 'azurerm_virtual_machine', 'azurerm_network_interface', 'azurerm_virtual_network', 'azurerm_public_ip']                                                                                                                                                                                              |
| paths         | ['https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/virtual-machines/virtual_machine/spark-and-cassandra-on-centos/outputs.tf', 'https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/virtual-machines/virtual_machine/spark-and-cassandra-on-centos/variables.tf', 'https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/virtual-machines/virtual_machine/spark-and-cassandra-on-centos/main.tf'] |

- masterTestId: TEST_STORAGE_ACCOUNT_9
- masterSnapshotId: ['TRF_TEMPLATE_SNAPSHOT']
- type: rego
- rule: file(https://github.com/prancer-io/prancer-compliance-test/tree/master/azure/terraform/storageaccounts.rego)
- severity: Medium

tags
| Title      | Description                             |
|:-----------|:----------------------------------------|
| cloud      | git                                     |
| compliance | ['CIS', 'HIPAA', 'NIST 800', 'PCI-DSS'] |
| service    | ['terraform']                           |
----------------------------------------------------------------


### Test ID - PR-AZR-TRF-STR-011
Title: Storage Accounts access should be allowed for trusted Microsoft services\
Test Result: **failed**\
Description : Ensure that 'Allow trusted Microsoft services to access this storage account' exception is enabled within your Azure Storage account configuration settings to grant access to trusted cloud services.\

#### Test Details
- eval: data.rule.storage_nr_allow_trusted_azure_services
- id : PR-AZR-TRF-STR-011

#### Snapshots
| Title         | Description                                                                                                                                                                                                                                                                                               |
|:--------------|:----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| id            | TRF_TEMPLATE_SNAPSHOT146                                                                                                                                                                                                                                                                                  |
| structure     | filesystem                                                                                                                                                                                                                                                                                                |
| reference     | main                                                                                                                                                                                                                                                                                                      |
| source        | gitConnectorAzureTerraHashicorp                                                                                                                                                                                                                                                                           |
| collection    | terraformtemplate                                                                                                                                                                                                                                                                                         |
| type          | terraform                                                                                                                                                                                                                                                                                                 |
| region        |                                                                                                                                                                                                                                                                                                           |
| resourceTypes | ['azurerm_storage_container', 'azurerm_storage_account', 'azurerm_subnet', 'azurerm_resource_group', 'azurerm_network_interface', 'azurerm_virtual_network']                                                                                                                                              |
| paths         | ['https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/virtual-machines/virtual_machine/unmanaged-disks/basic/variables.tf', 'https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/virtual-machines/virtual_machine/unmanaged-disks/basic/1-dependencies.tf'] |

- masterTestId: TEST_STORAGE_ACCOUNT_9
- masterSnapshotId: ['TRF_TEMPLATE_SNAPSHOT']
- type: rego
- rule: file(https://github.com/prancer-io/prancer-compliance-test/tree/master/azure/terraform/storageaccounts.rego)
- severity: Medium

tags
| Title      | Description                             |
|:-----------|:----------------------------------------|
| cloud      | git                                     |
| compliance | ['CIS', 'HIPAA', 'NIST 800', 'PCI-DSS'] |
| service    | ['terraform']                           |
----------------------------------------------------------------


### Test ID - 
Title: Storage Accounts access should be allowed for trusted Microsoft services\
Test Result: **failed**\
Description : Ensure that 'Allow trusted Microsoft services to access this storage account' exception is enabled within your Azure Storage account configuration settings to grant access to trusted cloud services.\

#### Test Details
- eval: [{'id': 'PR-AZR-TRF-STR-011', 'eval': 'data.rule.storage_nr_allow_trusted_azure_services', 'message': 'data.rule.storage_nr_allow_trusted_azure_services_err', 'remediationDescription': "Make sure both 'azurerm_storage_account' and 'azurerm_storage_account_network_rules' exist and in 'azurerm_storage_account_network_rules' resource, add 'AzureServices' value under 'bypass' array property to fix the issue. Visit <a href='https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/storage_account_network_rules#bypass' target='_blank'>here</a> for details.", 'remediationFunction': 'PR_AZR_TRF_STR_011.py'}]
- id : 

#### Snapshots
[]

- masterTestId: TEST_STORAGE_ACCOUNT_9
- masterSnapshotId: ['TRF_TEMPLATE_SNAPSHOT']
- type: rego
- rule: file(https://github.com/prancer-io/prancer-compliance-test/tree/master/azure/terraform/storageaccounts.rego)
- severity: Medium

tags
| Title      | Description                             |
|:-----------|:----------------------------------------|
| cloud      | git                                     |
| compliance | ['CIS', 'HIPAA', 'NIST 800', 'PCI-DSS'] |
| service    | ['terraform']                           |
----------------------------------------------------------------


### Test ID - PR-AZR-TRF-STR-011
Title: Storage Accounts access should be allowed for trusted Microsoft services\
Test Result: **failed**\
Description : Ensure that 'Allow trusted Microsoft services to access this storage account' exception is enabled within your Azure Storage account configuration settings to grant access to trusted cloud services.\

#### Test Details
- eval: data.rule.storage_nr_allow_trusted_azure_services
- id : PR-AZR-TRF-STR-011

#### Snapshots
| Title         | Description                                                                                                                                                                                                                                                          |
|:--------------|:---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| id            | TRF_TEMPLATE_SNAPSHOT154                                                                                                                                                                                                                                             |
| structure     | filesystem                                                                                                                                                                                                                                                           |
| reference     | main                                                                                                                                                                                                                                                                 |
| source        | gitConnectorAzureTerraHashicorp                                                                                                                                                                                                                                      |
| collection    | terraformtemplate                                                                                                                                                                                                                                                    |
| type          | terraform                                                                                                                                                                                                                                                            |
| region        |                                                                                                                                                                                                                                                                      |
| resourceTypes | ['azurerm_storage_account', 'azurerm_subnet', 'azurerm_resource_group', 'azurerm_windows_virtual_machine', 'azurerm_role_assignment', 'azurerm_network_interface', 'azurerm_virtual_network']                                                                        |
| paths         | ['https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/virtual-machines/windows/vm-role-assignment/vars.tf', 'https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/virtual-machines/windows/vm-role-assignment/main.tf'] |

- masterTestId: TEST_STORAGE_ACCOUNT_9
- masterSnapshotId: ['TRF_TEMPLATE_SNAPSHOT']
- type: rego
- rule: file(https://github.com/prancer-io/prancer-compliance-test/tree/master/azure/terraform/storageaccounts.rego)
- severity: Medium

tags
| Title      | Description                             |
|:-----------|:----------------------------------------|
| cloud      | git                                     |
| compliance | ['CIS', 'HIPAA', 'NIST 800', 'PCI-DSS'] |
| service    | ['terraform']                           |
----------------------------------------------------------------


### Test ID - PR-AZR-TRF-STR-011
Title: Storage Accounts access should be allowed for trusted Microsoft services\
Test Result: **failed**\
Description : Ensure that 'Allow trusted Microsoft services to access this storage account' exception is enabled within your Azure Storage account configuration settings to grant access to trusted cloud services.\

#### Test Details
- eval: data.rule.storage_nr_allow_trusted_azure_services
- id : PR-AZR-TRF-STR-011

#### Snapshots
| Title         | Description                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |
|:--------------|:----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| id            | TRF_TEMPLATE_SNAPSHOT155                                                                                                                                                                                                                                                                                                                                                                                                                                                    |
| structure     | filesystem                                                                                                                                                                                                                                                                                                                                                                                                                                                                  |
| reference     | main                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |
| source        | gitConnectorAzureTerraHashicorp                                                                                                                                                                                                                                                                                                                                                                                                                                             |
| collection    | terraformtemplate                                                                                                                                                                                                                                                                                                                                                                                                                                                           |
| type          | terraform                                                                                                                                                                                                                                                                                                                                                                                                                                                                   |
| region        |                                                                                                                                                                                                                                                                                                                                                                                                                                                                             |
| resourceTypes | ['azurerm_subnet_route_table_association', 'azurerm_firewall_application_rule_collection', 'azurerm_firewall_network_rule_collection', 'azurerm_route_table', 'azurerm_network_security_group', 'azurerm_storage_account', 'azurerm_subnet', 'azurerm_resource_group', 'azurerm_network_interface_security_group_association', 'azurerm_virtual_machine', 'azurerm_network_interface', 'azurerm_firewall', 'random_string', 'azurerm_virtual_network', 'azurerm_public_ip'] |
| paths         | ['https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/virtual-networks/azure-firewall/variables.tf', 'https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/virtual-networks/azure-firewall/main.tf']                                                                                                                                                                                                                           |

- masterTestId: TEST_STORAGE_ACCOUNT_9
- masterSnapshotId: ['TRF_TEMPLATE_SNAPSHOT']
- type: rego
- rule: file(https://github.com/prancer-io/prancer-compliance-test/tree/master/azure/terraform/storageaccounts.rego)
- severity: Medium

tags
| Title      | Description                             |
|:-----------|:----------------------------------------|
| cloud      | git                                     |
| compliance | ['CIS', 'HIPAA', 'NIST 800', 'PCI-DSS'] |
| service    | ['terraform']                           |
----------------------------------------------------------------


### Test ID - PR-AZR-TRF-STR-011
Title: Storage Accounts access should be allowed for trusted Microsoft services\
Test Result: **failed**\
Description : Ensure that 'Allow trusted Microsoft services to access this storage account' exception is enabled within your Azure Storage account configuration settings to grant access to trusted cloud services.\

#### Test Details
- eval: data.rule.storage_nr_allow_trusted_azure_services
- id : PR-AZR-TRF-STR-011

#### Snapshots
| Title         | Description                                                                                                                                                                                                                                               |
|:--------------|:----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| id            | TRF_TEMPLATE_SNAPSHOT169                                                                                                                                                                                                                                  |
| structure     | filesystem                                                                                                                                                                                                                                                |
| reference     | main                                                                                                                                                                                                                                                      |
| source        | gitConnectorAzureTerraHashicorp                                                                                                                                                                                                                           |
| collection    | terraformtemplate                                                                                                                                                                                                                                         |
| type          | terraform                                                                                                                                                                                                                                                 |
| region        |                                                                                                                                                                                                                                                           |
| resourceTypes | ['azurerm_linux_virtual_machine_scale_set', 'azurerm_storage_account', 'azurerm_subnet', 'azurerm_resource_group', 'azurerm_virtual_network']                                                                                                             |
| paths         | ['https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/vm-scale-set/linux/boot-diagnostics/variables.tf', 'https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/vm-scale-set/linux/boot-diagnostics/main.tf'] |

- masterTestId: TEST_STORAGE_ACCOUNT_9
- masterSnapshotId: ['TRF_TEMPLATE_SNAPSHOT']
- type: rego
- rule: file(https://github.com/prancer-io/prancer-compliance-test/tree/master/azure/terraform/storageaccounts.rego)
- severity: Medium

tags
| Title      | Description                             |
|:-----------|:----------------------------------------|
| cloud      | git                                     |
| compliance | ['CIS', 'HIPAA', 'NIST 800', 'PCI-DSS'] |
| service    | ['terraform']                           |
----------------------------------------------------------------


### Test ID - PR-AZR-TRF-STR-011
Title: Storage Accounts access should be allowed for trusted Microsoft services\
Test Result: **failed**\
Description : Ensure that 'Allow trusted Microsoft services to access this storage account' exception is enabled within your Azure Storage account configuration settings to grant access to trusted cloud services.\

#### Test Details
- eval: data.rule.storage_nr_allow_trusted_azure_services
- id : PR-AZR-TRF-STR-011

#### Snapshots
| Title         | Description                                                                                                                                                                                                                                                   |
|:--------------|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| id            | TRF_TEMPLATE_SNAPSHOT190                                                                                                                                                                                                                                      |
| structure     | filesystem                                                                                                                                                                                                                                                    |
| reference     | main                                                                                                                                                                                                                                                          |
| source        | gitConnectorAzureTerraHashicorp                                                                                                                                                                                                                               |
| collection    | terraformtemplate                                                                                                                                                                                                                                             |
| type          | terraform                                                                                                                                                                                                                                                     |
| region        |                                                                                                                                                                                                                                                               |
| resourceTypes | ['azurerm_storage_account', 'azurerm_subnet', 'azurerm_resource_group', 'azurerm_virtual_network', 'azurerm_windows_virtual_machine_scale_set']                                                                                                               |
| paths         | ['https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/vm-scale-set/windows/boot-diagnostics/variables.tf', 'https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/vm-scale-set/windows/boot-diagnostics/main.tf'] |

- masterTestId: TEST_STORAGE_ACCOUNT_9
- masterSnapshotId: ['TRF_TEMPLATE_SNAPSHOT']
- type: rego
- rule: file(https://github.com/prancer-io/prancer-compliance-test/tree/master/azure/terraform/storageaccounts.rego)
- severity: Medium

tags
| Title      | Description                             |
|:-----------|:----------------------------------------|
| cloud      | git                                     |
| compliance | ['CIS', 'HIPAA', 'NIST 800', 'PCI-DSS'] |
| service    | ['terraform']                           |
----------------------------------------------------------------


### Test ID - PR-AZR-TRF-STR-016
Title: Storage Accounts access should be allowed for trusted Microsoft services\
Test Result: **failed**\
Description : Ensure that 'Allow trusted Microsoft services to access this storage account' exception is enabled within your Azure Storage account configuration settings to grant access to trusted cloud services.\

#### Test Details
- eval: data.rule.storage_allow_trusted_azure_services
- id : PR-AZR-TRF-STR-016

#### Snapshots
| Title         | Description                                                                                                                                                                                                                                                                                                                        |
|:--------------|:-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| id            | TRF_TEMPLATE_SNAPSHOT2                                                                                                                                                                                                                                                                                                             |
| structure     | filesystem                                                                                                                                                                                                                                                                                                                         |
| reference     | main                                                                                                                                                                                                                                                                                                                               |
| source        | gitConnectorAzureTerraHashicorp                                                                                                                                                                                                                                                                                                    |
| collection    | terraformtemplate                                                                                                                                                                                                                                                                                                                  |
| type          | terraform                                                                                                                                                                                                                                                                                                                          |
| region        |                                                                                                                                                                                                                                                                                                                                    |
| resourceTypes | ['azurerm_storage_container', 'azurerm_storage_account', 'azurerm_resource_group', 'azurerm_app_service_plan', 'azurerm_app_service']                                                                                                                                                                                              |
| paths         | ['https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/app-service/backup/output.tf', 'https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/app-service/backup/variables.tf', 'https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/app-service/backup/main.tf'] |

- masterTestId: TEST_STORAGE_ACCOUNT_10
- masterSnapshotId: ['TRF_TEMPLATE_SNAPSHOT']
- type: rego
- rule: file(https://github.com/prancer-io/prancer-compliance-test/tree/master/azure/terraform/storageaccounts.rego)
- severity: Medium

tags
| Title      | Description                             |
|:-----------|:----------------------------------------|
| cloud      | git                                     |
| compliance | ['CIS', 'HIPAA', 'NIST 800', 'PCI-DSS'] |
| service    | ['terraform']                           |
----------------------------------------------------------------


### Test ID - PR-AZR-TRF-STR-016
Title: Storage Accounts access should be allowed for trusted Microsoft services\
Test Result: **failed**\
Description : Ensure that 'Allow trusted Microsoft services to access this storage account' exception is enabled within your Azure Storage account configuration settings to grant access to trusted cloud services.\

#### Test Details
- eval: data.rule.storage_allow_trusted_azure_services
- id : PR-AZR-TRF-STR-016

#### Snapshots
| Title         | Description                                                                                                                                                                                                                                                                                                                                                                                                                |
|:--------------|:---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| id            | TRF_TEMPLATE_SNAPSHOT7                                                                                                                                                                                                                                                                                                                                                                                                     |
| structure     | filesystem                                                                                                                                                                                                                                                                                                                                                                                                                 |
| reference     | main                                                                                                                                                                                                                                                                                                                                                                                                                       |
| source        | gitConnectorAzureTerraHashicorp                                                                                                                                                                                                                                                                                                                                                                                            |
| collection    | terraformtemplate                                                                                                                                                                                                                                                                                                                                                                                                          |
| type          | terraform                                                                                                                                                                                                                                                                                                                                                                                                                  |
| region        |                                                                                                                                                                                                                                                                                                                                                                                                                            |
| resourceTypes | ['azurerm_storage_account', 'azurerm_function_app', 'azurerm_resource_group', 'azurerm_role_assignment', 'azurerm_app_service_plan', 'azurerm_application_insights']                                                                                                                                                                                                                                                       |
| paths         | ['https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/app-service/function-azure-RBAC-role-assignment/outputs.tf', 'https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/app-service/function-azure-RBAC-role-assignment/variables.tf', 'https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/app-service/function-azure-RBAC-role-assignment/main.tf'] |

- masterTestId: TEST_STORAGE_ACCOUNT_10
- masterSnapshotId: ['TRF_TEMPLATE_SNAPSHOT']
- type: rego
- rule: file(https://github.com/prancer-io/prancer-compliance-test/tree/master/azure/terraform/storageaccounts.rego)
- severity: Medium

tags
| Title      | Description                             |
|:-----------|:----------------------------------------|
| cloud      | git                                     |
| compliance | ['CIS', 'HIPAA', 'NIST 800', 'PCI-DSS'] |
| service    | ['terraform']                           |
----------------------------------------------------------------


### Test ID - PR-AZR-TRF-STR-016
Title: Storage Accounts access should be allowed for trusted Microsoft services\
Test Result: **failed**\
Description : Ensure that 'Allow trusted Microsoft services to access this storage account' exception is enabled within your Azure Storage account configuration settings to grant access to trusted cloud services.\

#### Test Details
- eval: data.rule.storage_allow_trusted_azure_services
- id : PR-AZR-TRF-STR-016

#### Snapshots
| Title         | Description                                                                                                                                                                                                                                                                                                                                                 |
|:--------------|:------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| id            | TRF_TEMPLATE_SNAPSHOT8                                                                                                                                                                                                                                                                                                                                      |
| structure     | filesystem                                                                                                                                                                                                                                                                                                                                                  |
| reference     | main                                                                                                                                                                                                                                                                                                                                                        |
| source        | gitConnectorAzureTerraHashicorp                                                                                                                                                                                                                                                                                                                             |
| collection    | terraformtemplate                                                                                                                                                                                                                                                                                                                                           |
| type          | terraform                                                                                                                                                                                                                                                                                                                                                   |
| region        |                                                                                                                                                                                                                                                                                                                                                             |
| resourceTypes | ['azurerm_storage_account', 'azurerm_function_app', 'azurerm_resource_group', 'azurerm_app_service_plan', 'azurerm_application_insights']                                                                                                                                                                                                                   |
| paths         | ['https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/app-service/function-basic/outputs.tf', 'https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/app-service/function-basic/variables.tf', 'https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/app-service/function-basic/main.tf'] |

- masterTestId: TEST_STORAGE_ACCOUNT_10
- masterSnapshotId: ['TRF_TEMPLATE_SNAPSHOT']
- type: rego
- rule: file(https://github.com/prancer-io/prancer-compliance-test/tree/master/azure/terraform/storageaccounts.rego)
- severity: Medium

tags
| Title      | Description                             |
|:-----------|:----------------------------------------|
| cloud      | git                                     |
| compliance | ['CIS', 'HIPAA', 'NIST 800', 'PCI-DSS'] |
| service    | ['terraform']                           |
----------------------------------------------------------------


### Test ID - PR-AZR-TRF-STR-016
Title: Storage Accounts access should be allowed for trusted Microsoft services\
Test Result: **failed**\
Description : Ensure that 'Allow trusted Microsoft services to access this storage account' exception is enabled within your Azure Storage account configuration settings to grant access to trusted cloud services.\

#### Test Details
- eval: data.rule.storage_allow_trusted_azure_services
- id : PR-AZR-TRF-STR-016

#### Snapshots
| Title         | Description                                                                                                                                                                                                                          |
|:--------------|:-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| id            | TRF_TEMPLATE_SNAPSHOT9                                                                                                                                                                                                               |
| structure     | filesystem                                                                                                                                                                                                                           |
| reference     | main                                                                                                                                                                                                                                 |
| source        | gitConnectorAzureTerraHashicorp                                                                                                                                                                                                      |
| collection    | terraformtemplate                                                                                                                                                                                                                    |
| type          | terraform                                                                                                                                                                                                                            |
| region        |                                                                                                                                                                                                                                      |
| resourceTypes | ['azurerm_storage_account', 'azurerm_function_app', 'azurerm_resource_group', 'azurerm_app_service_plan']                                                                                                                            |
| paths         | ['https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/app-service/function-python/vars.tf', 'https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/app-service/function-python/main.tf'] |

- masterTestId: TEST_STORAGE_ACCOUNT_10
- masterSnapshotId: ['TRF_TEMPLATE_SNAPSHOT']
- type: rego
- rule: file(https://github.com/prancer-io/prancer-compliance-test/tree/master/azure/terraform/storageaccounts.rego)
- severity: Medium

tags
| Title      | Description                             |
|:-----------|:----------------------------------------|
| cloud      | git                                     |
| compliance | ['CIS', 'HIPAA', 'NIST 800', 'PCI-DSS'] |
| service    | ['terraform']                           |
----------------------------------------------------------------


### Test ID - PR-AZR-TRF-STR-016
Title: Storage Accounts access should be allowed for trusted Microsoft services\
Test Result: **failed**\
Description : Ensure that 'Allow trusted Microsoft services to access this storage account' exception is enabled within your Azure Storage account configuration settings to grant access to trusted cloud services.\

#### Test Details
- eval: data.rule.storage_allow_trusted_azure_services
- id : PR-AZR-TRF-STR-016

#### Snapshots
| Title         | Description                                                                                                                                                                                               |
|:--------------|:----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| id            | TRF_TEMPLATE_SNAPSHOT24                                                                                                                                                                                   |
| structure     | filesystem                                                                                                                                                                                                |
| reference     | main                                                                                                                                                                                                      |
| source        | gitConnectorAzureTerraHashicorp                                                                                                                                                                           |
| collection    | terraformtemplate                                                                                                                                                                                         |
| type          | terraform                                                                                                                                                                                                 |
| region        |                                                                                                                                                                                                           |
| resourceTypes | ['azurerm_storage_account', 'azurerm_batch_pool', 'azurerm_resource_group', 'azurerm_batch_account']                                                                                                      |
| paths         | ['https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/batch/basic/variables.tf', 'https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/batch/basic/main.tf'] |

- masterTestId: TEST_STORAGE_ACCOUNT_10
- masterSnapshotId: ['TRF_TEMPLATE_SNAPSHOT']
- type: rego
- rule: file(https://github.com/prancer-io/prancer-compliance-test/tree/master/azure/terraform/storageaccounts.rego)
- severity: Medium

tags
| Title      | Description                             |
|:-----------|:----------------------------------------|
| cloud      | git                                     |
| compliance | ['CIS', 'HIPAA', 'NIST 800', 'PCI-DSS'] |
| service    | ['terraform']                           |
----------------------------------------------------------------


### Test ID - PR-AZR-TRF-STR-016
Title: Storage Accounts access should be allowed for trusted Microsoft services\
Test Result: **failed**\
Description : Ensure that 'Allow trusted Microsoft services to access this storage account' exception is enabled within your Azure Storage account configuration settings to grant access to trusted cloud services.\

#### Test Details
- eval: data.rule.storage_allow_trusted_azure_services
- id : PR-AZR-TRF-STR-016

#### Snapshots
| Title         | Description                                                                                                                                                                                                                                                                  |
|:--------------|:-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| id            | TRF_TEMPLATE_SNAPSHOT25                                                                                                                                                                                                                                                      |
| structure     | filesystem                                                                                                                                                                                                                                                                   |
| reference     | main                                                                                                                                                                                                                                                                         |
| source        | gitConnectorAzureTerraHashicorp                                                                                                                                                                                                                                              |
| collection    | terraformtemplate                                                                                                                                                                                                                                                            |
| type          | terraform                                                                                                                                                                                                                                                                    |
| region        |                                                                                                                                                                                                                                                                              |
| resourceTypes | ['azurerm_storage_container', 'azurerm_storage_account', 'azurerm_subnet', 'azurerm_batch_pool', 'azurerm_resource_group', 'azurerm_image', 'azurerm_virtual_machine', 'azurerm_network_interface', 'azurerm_batch_account', 'azurerm_virtual_network', 'azurerm_public_ip'] |
| paths         | ['https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/batch/custom-image/variables.tf', 'https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/batch/custom-image/main.tf']                                                      |

- masterTestId: TEST_STORAGE_ACCOUNT_10
- masterSnapshotId: ['TRF_TEMPLATE_SNAPSHOT']
- type: rego
- rule: file(https://github.com/prancer-io/prancer-compliance-test/tree/master/azure/terraform/storageaccounts.rego)
- severity: Medium

tags
| Title      | Description                             |
|:-----------|:----------------------------------------|
| cloud      | git                                     |
| compliance | ['CIS', 'HIPAA', 'NIST 800', 'PCI-DSS'] |
| service    | ['terraform']                           |
----------------------------------------------------------------


### Test ID - PR-AZR-TRF-STR-016
Title: Storage Accounts access should be allowed for trusted Microsoft services\
Test Result: **failed**\
Description : Ensure that 'Allow trusted Microsoft services to access this storage account' exception is enabled within your Azure Storage account configuration settings to grant access to trusted cloud services.\

#### Test Details
- eval: data.rule.storage_allow_trusted_azure_services
- id : PR-AZR-TRF-STR-016

#### Snapshots
| Title         | Description                                                                                                                                                                                                                                                                            |
|:--------------|:---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| id            | TRF_TEMPLATE_SNAPSHOT27                                                                                                                                                                                                                                                                |
| structure     | filesystem                                                                                                                                                                                                                                                                             |
| reference     | main                                                                                                                                                                                                                                                                                   |
| source        | gitConnectorAzureTerraHashicorp                                                                                                                                                                                                                                                        |
| collection    | terraformtemplate                                                                                                                                                                                                                                                                      |
| type          | terraform                                                                                                                                                                                                                                                                              |
| region        |                                                                                                                                                                                                                                                                                        |
| resourceTypes | ['azurerm_storage_account', 'azurerm_cdn_profile', 'azurerm_cdn_endpoint', 'azurerm_resource_group']                                                                                                                                                                                   |
| paths         | ['https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/cdn/outputs.tf', 'https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/cdn/variables.tf', 'https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/cdn/main.tf'] |

- masterTestId: TEST_STORAGE_ACCOUNT_10
- masterSnapshotId: ['TRF_TEMPLATE_SNAPSHOT']
- type: rego
- rule: file(https://github.com/prancer-io/prancer-compliance-test/tree/master/azure/terraform/storageaccounts.rego)
- severity: Medium

tags
| Title      | Description                             |
|:-----------|:----------------------------------------|
| cloud      | git                                     |
| compliance | ['CIS', 'HIPAA', 'NIST 800', 'PCI-DSS'] |
| service    | ['terraform']                           |
----------------------------------------------------------------


### Test ID - PR-AZR-TRF-STR-016
Title: Storage Accounts access should be allowed for trusted Microsoft services\
Test Result: **failed**\
Description : Ensure that 'Allow trusted Microsoft services to access this storage account' exception is enabled within your Azure Storage account configuration settings to grant access to trusted cloud services.\

#### Test Details
- eval: data.rule.storage_allow_trusted_azure_services
- id : PR-AZR-TRF-STR-016

#### Snapshots
| Title         | Description                                                                                                                                                                                                                                                                                                                                                                |
|:--------------|:---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| id            | TRF_TEMPLATE_SNAPSHOT31                                                                                                                                                                                                                                                                                                                                                    |
| structure     | filesystem                                                                                                                                                                                                                                                                                                                                                                 |
| reference     | main                                                                                                                                                                                                                                                                                                                                                                       |
| source        | gitConnectorAzureTerraHashicorp                                                                                                                                                                                                                                                                                                                                            |
| collection    | terraformtemplate                                                                                                                                                                                                                                                                                                                                                          |
| type          | terraform                                                                                                                                                                                                                                                                                                                                                                  |
| region        |                                                                                                                                                                                                                                                                                                                                                                            |
| resourceTypes | ['azurerm_storage_account', 'azurerm_storage_share', 'azurerm_resource_group', 'azurerm_container_group']                                                                                                                                                                                                                                                                  |
| paths         | ['https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/container-instance/volume-mount/outputs.tf', 'https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/container-instance/volume-mount/variables.tf', 'https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/container-instance/volume-mount/main.tf'] |

- masterTestId: TEST_STORAGE_ACCOUNT_10
- masterSnapshotId: ['TRF_TEMPLATE_SNAPSHOT']
- type: rego
- rule: file(https://github.com/prancer-io/prancer-compliance-test/tree/master/azure/terraform/storageaccounts.rego)
- severity: Medium

tags
| Title      | Description                             |
|:-----------|:----------------------------------------|
| cloud      | git                                     |
| compliance | ['CIS', 'HIPAA', 'NIST 800', 'PCI-DSS'] |
| service    | ['terraform']                           |
----------------------------------------------------------------


### Test ID - PR-AZR-TRF-STR-016
Title: Storage Accounts access should be allowed for trusted Microsoft services\
Test Result: **failed**\
Description : Ensure that 'Allow trusted Microsoft services to access this storage account' exception is enabled within your Azure Storage account configuration settings to grant access to trusted cloud services.\

#### Test Details
- eval: data.rule.storage_allow_trusted_azure_services
- id : PR-AZR-TRF-STR-016

#### Snapshots
| Title         | Description                                                                                                                                                                                                                                 |
|:--------------|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| id            | TRF_TEMPLATE_SNAPSHOT43                                                                                                                                                                                                                     |
| structure     | filesystem                                                                                                                                                                                                                                  |
| reference     | main                                                                                                                                                                                                                                        |
| source        | gitConnectorAzureTerraHashicorp                                                                                                                                                                                                             |
| collection    | terraformtemplate                                                                                                                                                                                                                           |
| type          | terraform                                                                                                                                                                                                                                   |
| region        |                                                                                                                                                                                                                                             |
| resourceTypes | ['azurerm_eventgrid_event_subscription', 'azurerm_storage_container', 'azurerm_storage_account', 'azurerm_resource_group', 'azurerm_storage_queue', 'azurerm_storage_blob']                                                                 |
| paths         | ['https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/eventgrid/event-subscription/variables.tf', 'https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/eventgrid/event-subscription/main.tf'] |

- masterTestId: TEST_STORAGE_ACCOUNT_10
- masterSnapshotId: ['TRF_TEMPLATE_SNAPSHOT']
- type: rego
- rule: file(https://github.com/prancer-io/prancer-compliance-test/tree/master/azure/terraform/storageaccounts.rego)
- severity: Medium

tags
| Title      | Description                             |
|:-----------|:----------------------------------------|
| cloud      | git                                     |
| compliance | ['CIS', 'HIPAA', 'NIST 800', 'PCI-DSS'] |
| service    | ['terraform']                           |
----------------------------------------------------------------


### Test ID - PR-AZR-TRF-STR-016
Title: Storage Accounts access should be allowed for trusted Microsoft services\
Test Result: **failed**\
Description : Ensure that 'Allow trusted Microsoft services to access this storage account' exception is enabled within your Azure Storage account configuration settings to grant access to trusted cloud services.\

#### Test Details
- eval: data.rule.storage_allow_trusted_azure_services
- id : PR-AZR-TRF-STR-016

#### Snapshots
| Title         | Description                                                                                                                                                                                                                                                                                                                                                                                                                                                        |
|:--------------|:-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| id            | TRF_TEMPLATE_SNAPSHOT46                                                                                                                                                                                                                                                                                                                                                                                                                                            |
| structure     | filesystem                                                                                                                                                                                                                                                                                                                                                                                                                                                         |
| reference     | main                                                                                                                                                                                                                                                                                                                                                                                                                                                               |
| source        | gitConnectorAzureTerraHashicorp                                                                                                                                                                                                                                                                                                                                                                                                                                    |
| collection    | terraformtemplate                                                                                                                                                                                                                                                                                                                                                                                                                                                  |
| type          | terraform                                                                                                                                                                                                                                                                                                                                                                                                                                                          |
| region        |                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |
| resourceTypes | ['azurerm_subnet_network_security_group_association', 'azurerm_storage_container', 'azuread_group', 'azurerm_network_security_group', 'azurerm_storage_account', 'azurerm_virtual_network_dns_servers', 'azurerm_subnet', 'azurerm_resource_group', 'azurerm_role_assignment', 'azuread_user', 'azurerm_active_directory_domain_service', 'azurerm_user_assigned_identity', 'azurerm_hdinsight_hadoop_cluster', 'azurerm_virtual_network', 'azuread_group_member'] |
| paths         | ['https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/hdinsight/enterprise-security-package/providers.tf', 'https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/hdinsight/enterprise-security-package/variables.tf', 'https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/hdinsight/enterprise-security-package/main.tf']                                                                     |

- masterTestId: TEST_STORAGE_ACCOUNT_10
- masterSnapshotId: ['TRF_TEMPLATE_SNAPSHOT']
- type: rego
- rule: file(https://github.com/prancer-io/prancer-compliance-test/tree/master/azure/terraform/storageaccounts.rego)
- severity: Medium

tags
| Title      | Description                             |
|:-----------|:----------------------------------------|
| cloud      | git                                     |
| compliance | ['CIS', 'HIPAA', 'NIST 800', 'PCI-DSS'] |
| service    | ['terraform']                           |
----------------------------------------------------------------


### Test ID - PR-AZR-TRF-STR-016
Title: Storage Accounts access should be allowed for trusted Microsoft services\
Test Result: **failed**\
Description : Ensure that 'Allow trusted Microsoft services to access this storage account' exception is enabled within your Azure Storage account configuration settings to grant access to trusted cloud services.\

#### Test Details
- eval: data.rule.storage_allow_trusted_azure_services
- id : PR-AZR-TRF-STR-016

#### Snapshots
| Title         | Description                                                                                                                                                                                                                                                                                                                                                                                                                                                                |
|:--------------|:---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| id            | TRF_TEMPLATE_SNAPSHOT47                                                                                                                                                                                                                                                                                                                                                                                                                                                    |
| structure     | filesystem                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |
| reference     | main                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |
| source        | gitConnectorAzureTerraHashicorp                                                                                                                                                                                                                                                                                                                                                                                                                                            |
| collection    | terraformtemplate                                                                                                                                                                                                                                                                                                                                                                                                                                                          |
| type          | terraform                                                                                                                                                                                                                                                                                                                                                                                                                                                                  |
| region        |                                                                                                                                                                                                                                                                                                                                                                                                                                                                            |
| resourceTypes | ['azurerm_subnet_network_security_group_association', 'azurerm_network_security_group', 'azurerm_storage_account', 'azurerm_nat_gateway_public_ip_association', 'azurerm_subnet_nat_gateway_association', 'azurerm_storage_data_lake_gen2_filesystem', 'azurerm_subnet', 'azurerm_resource_group', 'azurerm_role_assignment', 'azurerm_user_assigned_identity', 'azurerm_hdinsight_hadoop_cluster', 'azurerm_nat_gateway', 'azurerm_virtual_network', 'azurerm_public_ip'] |
| paths         | ['https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/hdinsight/private-link/hadoop-interactive-spark-cluster/variables.tf', 'https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/hdinsight/private-link/hadoop-interactive-spark-cluster/main.tf']                                                                                                                                                                          |

- masterTestId: TEST_STORAGE_ACCOUNT_10
- masterSnapshotId: ['TRF_TEMPLATE_SNAPSHOT']
- type: rego
- rule: file(https://github.com/prancer-io/prancer-compliance-test/tree/master/azure/terraform/storageaccounts.rego)
- severity: Medium

tags
| Title      | Description                             |
|:-----------|:----------------------------------------|
| cloud      | git                                     |
| compliance | ['CIS', 'HIPAA', 'NIST 800', 'PCI-DSS'] |
| service    | ['terraform']                           |
----------------------------------------------------------------


### Test ID - PR-AZR-TRF-STR-016
Title: Storage Accounts access should be allowed for trusted Microsoft services\
Test Result: **failed**\
Description : Ensure that 'Allow trusted Microsoft services to access this storage account' exception is enabled within your Azure Storage account configuration settings to grant access to trusted cloud services.\

#### Test Details
- eval: data.rule.storage_allow_trusted_azure_services
- id : PR-AZR-TRF-STR-016

#### Snapshots
| Title         | Description                                                                                                                                                                                                                 |
|:--------------|:----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| id            | TRF_TEMPLATE_SNAPSHOT69                                                                                                                                                                                                     |
| structure     | filesystem                                                                                                                                                                                                                  |
| reference     | main                                                                                                                                                                                                                        |
| source        | gitConnectorAzureTerraHashicorp                                                                                                                                                                                             |
| collection    | terraformtemplate                                                                                                                                                                                                           |
| type          | terraform                                                                                                                                                                                                                   |
| region        |                                                                                                                                                                                                                             |
| resourceTypes | ['azurerm_storage_account', 'azurerm_media_services_account', 'azurerm_resource_group']                                                                                                                                     |
| paths         | ['https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/media-services/basic/variables.tf', 'https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/media-services/basic/main.tf'] |

- masterTestId: TEST_STORAGE_ACCOUNT_10
- masterSnapshotId: ['TRF_TEMPLATE_SNAPSHOT']
- type: rego
- rule: file(https://github.com/prancer-io/prancer-compliance-test/tree/master/azure/terraform/storageaccounts.rego)
- severity: Medium

tags
| Title      | Description                             |
|:-----------|:----------------------------------------|
| cloud      | git                                     |
| compliance | ['CIS', 'HIPAA', 'NIST 800', 'PCI-DSS'] |
| service    | ['terraform']                           |
----------------------------------------------------------------


### Test ID - PR-AZR-TRF-STR-016
Title: Storage Accounts access should be allowed for trusted Microsoft services\
Test Result: **failed**\
Description : Ensure that 'Allow trusted Microsoft services to access this storage account' exception is enabled within your Azure Storage account configuration settings to grant access to trusted cloud services.\

#### Test Details
- eval: data.rule.storage_allow_trusted_azure_services
- id : PR-AZR-TRF-STR-016

#### Snapshots
| Title         | Description                                                                                                                                                                                                                                         |
|:--------------|:----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| id            | TRF_TEMPLATE_SNAPSHOT70                                                                                                                                                                                                                             |
| structure     | filesystem                                                                                                                                                                                                                                          |
| reference     | main                                                                                                                                                                                                                                                |
| source        | gitConnectorAzureTerraHashicorp                                                                                                                                                                                                                     |
| collection    | terraformtemplate                                                                                                                                                                                                                                   |
| type          | terraform                                                                                                                                                                                                                                           |
| region        |                                                                                                                                                                                                                                                     |
| resourceTypes | ['azurerm_storage_account', 'azurerm_media_services_account', 'azurerm_resource_group', 'azurerm_media_asset']                                                                                                                                      |
| paths         | ['https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/media-services/basic-with-assets/variables.tf', 'https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/media-services/basic-with-assets/main.tf'] |

- masterTestId: TEST_STORAGE_ACCOUNT_10
- masterSnapshotId: ['TRF_TEMPLATE_SNAPSHOT']
- type: rego
- rule: file(https://github.com/prancer-io/prancer-compliance-test/tree/master/azure/terraform/storageaccounts.rego)
- severity: Medium

tags
| Title      | Description                             |
|:-----------|:----------------------------------------|
| cloud      | git                                     |
| compliance | ['CIS', 'HIPAA', 'NIST 800', 'PCI-DSS'] |
| service    | ['terraform']                           |
----------------------------------------------------------------


### Test ID - PR-AZR-TRF-STR-016
Title: Storage Accounts access should be allowed for trusted Microsoft services\
Test Result: **failed**\
Description : Ensure that 'Allow trusted Microsoft services to access this storage account' exception is enabled within your Azure Storage account configuration settings to grant access to trusted cloud services.\

#### Test Details
- eval: data.rule.storage_allow_trusted_azure_services
- id : PR-AZR-TRF-STR-016

#### Snapshots
| Title         | Description                                                                                                                                                                                                                                                         |
|:--------------|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| id            | TRF_TEMPLATE_SNAPSHOT71                                                                                                                                                                                                                                             |
| structure     | filesystem                                                                                                                                                                                                                                                          |
| reference     | main                                                                                                                                                                                                                                                                |
| source        | gitConnectorAzureTerraHashicorp                                                                                                                                                                                                                                     |
| collection    | terraformtemplate                                                                                                                                                                                                                                                   |
| type          | terraform                                                                                                                                                                                                                                                           |
| region        |                                                                                                                                                                                                                                                                     |
| resourceTypes | ['azurerm_storage_account', 'azurerm_media_services_account', 'azurerm_resource_group']                                                                                                                                                                             |
| paths         | ['https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/media-services/multiple-storage-accounts/variables.tf', 'https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/media-services/multiple-storage-accounts/main.tf'] |

- masterTestId: TEST_STORAGE_ACCOUNT_10
- masterSnapshotId: ['TRF_TEMPLATE_SNAPSHOT']
- type: rego
- rule: file(https://github.com/prancer-io/prancer-compliance-test/tree/master/azure/terraform/storageaccounts.rego)
- severity: Medium

tags
| Title      | Description                             |
|:-----------|:----------------------------------------|
| cloud      | git                                     |
| compliance | ['CIS', 'HIPAA', 'NIST 800', 'PCI-DSS'] |
| service    | ['terraform']                           |
----------------------------------------------------------------


### Test ID - PR-AZR-TRF-STR-016
Title: Storage Accounts access should be allowed for trusted Microsoft services\
Test Result: **failed**\
Description : Ensure that 'Allow trusted Microsoft services to access this storage account' exception is enabled within your Azure Storage account configuration settings to grant access to trusted cloud services.\

#### Test Details
- eval: data.rule.storage_allow_trusted_azure_services
- id : PR-AZR-TRF-STR-016

#### Snapshots
| Title         | Description                                                                                                                                                                                                                                       |
|:--------------|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| id            | TRF_TEMPLATE_SNAPSHOT91                                                                                                                                                                                                                           |
| structure     | filesystem                                                                                                                                                                                                                                        |
| reference     | main                                                                                                                                                                                                                                              |
| source        | gitConnectorAzureTerraHashicorp                                                                                                                                                                                                                   |
| collection    | terraformtemplate                                                                                                                                                                                                                                 |
| type          | terraform                                                                                                                                                                                                                                         |
| region        |                                                                                                                                                                                                                                                   |
| resourceTypes | ['azurerm_storage_account', 'azurerm_redis_cache', 'azurerm_resource_group']                                                                                                                                                                      |
| paths         | ['https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/redis-cache/premium-with-backup/variables.tf', 'https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/redis-cache/premium-with-backup/main.tf'] |

- masterTestId: TEST_STORAGE_ACCOUNT_10
- masterSnapshotId: ['TRF_TEMPLATE_SNAPSHOT']
- type: rego
- rule: file(https://github.com/prancer-io/prancer-compliance-test/tree/master/azure/terraform/storageaccounts.rego)
- severity: Medium

tags
| Title      | Description                             |
|:-----------|:----------------------------------------|
| cloud      | git                                     |
| compliance | ['CIS', 'HIPAA', 'NIST 800', 'PCI-DSS'] |
| service    | ['terraform']                           |
----------------------------------------------------------------


### Test ID - PR-AZR-TRF-STR-016
Title: Storage Accounts access should be allowed for trusted Microsoft services\
Test Result: **failed**\
Description : Ensure that 'Allow trusted Microsoft services to access this storage account' exception is enabled within your Azure Storage account configuration settings to grant access to trusted cloud services.\

#### Test Details
- eval: data.rule.storage_allow_trusted_azure_services
- id : PR-AZR-TRF-STR-016

#### Snapshots
| Title         | Description                                                                                                                                                                                                                                                                     |
|:--------------|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| id            | TRF_TEMPLATE_SNAPSHOT97                                                                                                                                                                                                                                                         |
| structure     | filesystem                                                                                                                                                                                                                                                                      |
| reference     | main                                                                                                                                                                                                                                                                            |
| source        | gitConnectorAzureTerraHashicorp                                                                                                                                                                                                                                                 |
| collection    | terraformtemplate                                                                                                                                                                                                                                                               |
| type          | terraform                                                                                                                                                                                                                                                                       |
| region        |                                                                                                                                                                                                                                                                                 |
| resourceTypes | ['azurerm_storage_account', 'azurerm_subnet', 'azurerm_resource_group', 'azurerm_virtual_network']                                                                                                                                                                              |
| paths         | ['https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/service-fabric/windows-vmss-self-signed-certs/variables.tf', 'https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/service-fabric/windows-vmss-self-signed-certs/0-base.tf'] |

- masterTestId: TEST_STORAGE_ACCOUNT_10
- masterSnapshotId: ['TRF_TEMPLATE_SNAPSHOT']
- type: rego
- rule: file(https://github.com/prancer-io/prancer-compliance-test/tree/master/azure/terraform/storageaccounts.rego)
- severity: Medium

tags
| Title      | Description                             |
|:-----------|:----------------------------------------|
| cloud      | git                                     |
| compliance | ['CIS', 'HIPAA', 'NIST 800', 'PCI-DSS'] |
| service    | ['terraform']                           |
----------------------------------------------------------------


### Test ID - PR-AZR-TRF-STR-016
Title: Storage Accounts access should be allowed for trusted Microsoft services\
Test Result: **failed**\
Description : Ensure that 'Allow trusted Microsoft services to access this storage account' exception is enabled within your Azure Storage account configuration settings to grant access to trusted cloud services.\

#### Test Details
- eval: data.rule.storage_allow_trusted_azure_services
- id : PR-AZR-TRF-STR-016

#### Snapshots
| Title         | Description                                                                                                                                                                                                                       |
|:--------------|:----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| id            | TRF_TEMPLATE_SNAPSHOT107                                                                                                                                                                                                          |
| structure     | filesystem                                                                                                                                                                                                                        |
| reference     | main                                                                                                                                                                                                                              |
| source        | gitConnectorAzureTerraHashicorp                                                                                                                                                                                                   |
| collection    | terraformtemplate                                                                                                                                                                                                                 |
| type          | terraform                                                                                                                                                                                                                         |
| region        |                                                                                                                                                                                                                                   |
| resourceTypes | ['azurerm_storage_account', 'azurerm_resource_group']                                                                                                                                                                             |
| paths         | ['https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/storage/storage-account/variables.tf', 'https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/storage/storage-account/main.tf'] |

- masterTestId: TEST_STORAGE_ACCOUNT_10
- masterSnapshotId: ['TRF_TEMPLATE_SNAPSHOT']
- type: rego
- rule: file(https://github.com/prancer-io/prancer-compliance-test/tree/master/azure/terraform/storageaccounts.rego)
- severity: Medium

tags
| Title      | Description                             |
|:-----------|:----------------------------------------|
| cloud      | git                                     |
| compliance | ['CIS', 'HIPAA', 'NIST 800', 'PCI-DSS'] |
| service    | ['terraform']                           |
----------------------------------------------------------------


### Test ID - PR-AZR-TRF-STR-016
Title: Storage Accounts access should be allowed for trusted Microsoft services\
Test Result: **failed**\
Description : Ensure that 'Allow trusted Microsoft services to access this storage account' exception is enabled within your Azure Storage account configuration settings to grant access to trusted cloud services.\

#### Test Details
- eval: data.rule.storage_allow_trusted_azure_services
- id : PR-AZR-TRF-STR-016

#### Snapshots
| Title         | Description                                                                                                                                                                                                                           |
|:--------------|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| id            | TRF_TEMPLATE_SNAPSHOT108                                                                                                                                                                                                              |
| structure     | filesystem                                                                                                                                                                                                                            |
| reference     | main                                                                                                                                                                                                                                  |
| source        | gitConnectorAzureTerraHashicorp                                                                                                                                                                                                       |
| collection    | terraformtemplate                                                                                                                                                                                                                     |
| type          | terraform                                                                                                                                                                                                                             |
| region        |                                                                                                                                                                                                                                       |
| resourceTypes | ['azurerm_storage_account', 'azurerm_storage_container', 'azurerm_resource_group']                                                                                                                                                    |
| paths         | ['https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/storage/storage-container/variables.tf', 'https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/storage/storage-container/main.tf'] |

- masterTestId: TEST_STORAGE_ACCOUNT_10
- masterSnapshotId: ['TRF_TEMPLATE_SNAPSHOT']
- type: rego
- rule: file(https://github.com/prancer-io/prancer-compliance-test/tree/master/azure/terraform/storageaccounts.rego)
- severity: Medium

tags
| Title      | Description                             |
|:-----------|:----------------------------------------|
| cloud      | git                                     |
| compliance | ['CIS', 'HIPAA', 'NIST 800', 'PCI-DSS'] |
| service    | ['terraform']                           |
----------------------------------------------------------------


### Test ID - PR-AZR-TRF-STR-016
Title: Storage Accounts access should be allowed for trusted Microsoft services\
Test Result: **failed**\
Description : Ensure that 'Allow trusted Microsoft services to access this storage account' exception is enabled within your Azure Storage account configuration settings to grant access to trusted cloud services.\

#### Test Details
- eval: data.rule.storage_allow_trusted_azure_services
- id : PR-AZR-TRF-STR-016

#### Snapshots
| Title         | Description                                                                                                                                                                                                                   |
|:--------------|:------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| id            | TRF_TEMPLATE_SNAPSHOT109                                                                                                                                                                                                      |
| structure     | filesystem                                                                                                                                                                                                                    |
| reference     | main                                                                                                                                                                                                                          |
| source        | gitConnectorAzureTerraHashicorp                                                                                                                                                                                               |
| collection    | terraformtemplate                                                                                                                                                                                                             |
| type          | terraform                                                                                                                                                                                                                     |
| region        |                                                                                                                                                                                                                               |
| resourceTypes | ['azurerm_storage_account', 'azurerm_storage_share', 'azurerm_resource_group']                                                                                                                                                |
| paths         | ['https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/storage/storage-share/variables.tf', 'https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/storage/storage-share/main.tf'] |

- masterTestId: TEST_STORAGE_ACCOUNT_10
- masterSnapshotId: ['TRF_TEMPLATE_SNAPSHOT']
- type: rego
- rule: file(https://github.com/prancer-io/prancer-compliance-test/tree/master/azure/terraform/storageaccounts.rego)
- severity: Medium

tags
| Title      | Description                             |
|:-----------|:----------------------------------------|
| cloud      | git                                     |
| compliance | ['CIS', 'HIPAA', 'NIST 800', 'PCI-DSS'] |
| service    | ['terraform']                           |
----------------------------------------------------------------


### Test ID - PR-AZR-TRF-STR-016
Title: Storage Accounts access should be allowed for trusted Microsoft services\
Test Result: **failed**\
Description : Ensure that 'Allow trusted Microsoft services to access this storage account' exception is enabled within your Azure Storage account configuration settings to grant access to trusted cloud services.\

#### Test Details
- eval: data.rule.storage_allow_trusted_azure_services
- id : PR-AZR-TRF-STR-016

#### Snapshots
| Title         | Description                                                                                                                                                                                                                           |
|:--------------|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| id            | TRF_TEMPLATE_SNAPSHOT110                                                                                                                                                                                                              |
| structure     | filesystem                                                                                                                                                                                                                            |
| reference     | main                                                                                                                                                                                                                                  |
| source        | gitConnectorAzureTerraHashicorp                                                                                                                                                                                                       |
| collection    | terraformtemplate                                                                                                                                                                                                                     |
| type          | terraform                                                                                                                                                                                                                             |
| region        |                                                                                                                                                                                                                                       |
| resourceTypes | ['azurerm_storage_account', 'azurerm_storage_data_lake_gen2_path', 'azurerm_storage_data_lake_gen2_filesystem', 'azurerm_resource_group', 'azurerm_role_assignment', 'azurerm_user_assigned_identity']                                |
| paths         | ['https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/storage/storage_adls_acls/variables.tf', 'https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/storage/storage_adls_acls/main.tf'] |

- masterTestId: TEST_STORAGE_ACCOUNT_10
- masterSnapshotId: ['TRF_TEMPLATE_SNAPSHOT']
- type: rego
- rule: file(https://github.com/prancer-io/prancer-compliance-test/tree/master/azure/terraform/storageaccounts.rego)
- severity: Medium

tags
| Title      | Description                             |
|:-----------|:----------------------------------------|
| cloud      | git                                     |
| compliance | ['CIS', 'HIPAA', 'NIST 800', 'PCI-DSS'] |
| service    | ['terraform']                           |
----------------------------------------------------------------


### Test ID - PR-AZR-TRF-STR-016
Title: Storage Accounts access should be allowed for trusted Microsoft services\
Test Result: **failed**\
Description : Ensure that 'Allow trusted Microsoft services to access this storage account' exception is enabled within your Azure Storage account configuration settings to grant access to trusted cloud services.\

#### Test Details
- eval: data.rule.storage_allow_trusted_azure_services
- id : PR-AZR-TRF-STR-016

#### Snapshots
| Title         | Description                                                                                                                                                                                                         |
|:--------------|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| id            | TRF_TEMPLATE_SNAPSHOT111                                                                                                                                                                                            |
| structure     | filesystem                                                                                                                                                                                                          |
| reference     | main                                                                                                                                                                                                                |
| source        | gitConnectorAzureTerraHashicorp                                                                                                                                                                                     |
| collection    | terraformtemplate                                                                                                                                                                                                   |
| type          | terraform                                                                                                                                                                                                           |
| region        |                                                                                                                                                                                                                     |
| resourceTypes | ['azurerm_storage_container', 'azurerm_storage_account', 'azurerm_stream_analytics_job', 'azurerm_resource_group', 'azurerm_stream_analytics_reference_input_blob']                                                 |
| paths         | ['https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/stream-analytics/variables.tf', 'https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/stream-analytics/main.tf'] |

- masterTestId: TEST_STORAGE_ACCOUNT_10
- masterSnapshotId: ['TRF_TEMPLATE_SNAPSHOT']
- type: rego
- rule: file(https://github.com/prancer-io/prancer-compliance-test/tree/master/azure/terraform/storageaccounts.rego)
- severity: Medium

tags
| Title      | Description                             |
|:-----------|:----------------------------------------|
| cloud      | git                                     |
| compliance | ['CIS', 'HIPAA', 'NIST 800', 'PCI-DSS'] |
| service    | ['terraform']                           |
----------------------------------------------------------------


### Test ID - PR-AZR-TRF-STR-016
Title: Storage Accounts access should be allowed for trusted Microsoft services\
Test Result: **failed**\
Description : Ensure that 'Allow trusted Microsoft services to access this storage account' exception is enabled within your Azure Storage account configuration settings to grant access to trusted cloud services.\

#### Test Details
- eval: data.rule.storage_allow_trusted_azure_services
- id : PR-AZR-TRF-STR-016

#### Snapshots
| Title         | Description                                                                                                                                                                                                                                                                                                                                                                                                                                                    |
|:--------------|:---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| id            | TRF_TEMPLATE_SNAPSHOT123                                                                                                                                                                                                                                                                                                                                                                                                                                       |
| structure     | filesystem                                                                                                                                                                                                                                                                                                                                                                                                                                                     |
| reference     | main                                                                                                                                                                                                                                                                                                                                                                                                                                                           |
| source        | gitConnectorAzureTerraHashicorp                                                                                                                                                                                                                                                                                                                                                                                                                                |
| collection    | terraformtemplate                                                                                                                                                                                                                                                                                                                                                                                                                                              |
| type          | terraform                                                                                                                                                                                                                                                                                                                                                                                                                                                      |
| region        |                                                                                                                                                                                                                                                                                                                                                                                                                                                                |
| resourceTypes | ['azurerm_availability_set', 'azurerm_storage_account', 'azurerm_lb_backend_address_pool', 'azurerm_lb', 'azurerm_network_interface_nat_rule_association', 'azurerm_lb_rule', 'azurerm_subnet', 'azurerm_lb_nat_rule', 'azurerm_resource_group', 'azurerm_virtual_machine', 'azurerm_network_interface', 'azurerm_lb_probe', 'azurerm_virtual_network', 'azurerm_public_ip']                                                                                   |
| paths         | ['https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/virtual-machines/virtual_machine/2-vms-loadbalancer-lbrules/outputs.tf', 'https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/virtual-machines/virtual_machine/2-vms-loadbalancer-lbrules/variables.tf', 'https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/virtual-machines/virtual_machine/2-vms-loadbalancer-lbrules/main.tf'] |

- masterTestId: TEST_STORAGE_ACCOUNT_10
- masterSnapshotId: ['TRF_TEMPLATE_SNAPSHOT']
- type: rego
- rule: file(https://github.com/prancer-io/prancer-compliance-test/tree/master/azure/terraform/storageaccounts.rego)
- severity: Medium

tags
| Title      | Description                             |
|:-----------|:----------------------------------------|
| cloud      | git                                     |
| compliance | ['CIS', 'HIPAA', 'NIST 800', 'PCI-DSS'] |
| service    | ['terraform']                           |
----------------------------------------------------------------


### Test ID - PR-AZR-TRF-STR-016
Title: Storage Accounts access should be allowed for trusted Microsoft services\
Test Result: **failed**\
Description : Ensure that 'Allow trusted Microsoft services to access this storage account' exception is enabled within your Azure Storage account configuration settings to grant access to trusted cloud services.\

#### Test Details
- eval: data.rule.storage_allow_trusted_azure_services
- id : PR-AZR-TRF-STR-016

#### Snapshots
| Title         | Description                                                                                                                                                                                                                                                                                                                                                                                                                                              |
|:--------------|:---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| id            | TRF_TEMPLATE_SNAPSHOT127                                                                                                                                                                                                                                                                                                                                                                                                                                 |
| structure     | filesystem                                                                                                                                                                                                                                                                                                                                                                                                                                               |
| reference     | main                                                                                                                                                                                                                                                                                                                                                                                                                                                     |
| source        | gitConnectorAzureTerraHashicorp                                                                                                                                                                                                                                                                                                                                                                                                                          |
| collection    | terraformtemplate                                                                                                                                                                                                                                                                                                                                                                                                                                        |
| type          | terraform                                                                                                                                                                                                                                                                                                                                                                                                                                                |
| region        |                                                                                                                                                                                                                                                                                                                                                                                                                                                          |
| resourceTypes | ['azurerm_storage_account', 'azurerm_template_deployment', 'azurerm_subnet', 'azurerm_resource_group', 'azurerm_virtual_machine', 'azurerm_network_interface', 'azurerm_virtual_network']                                                                                                                                                                                                                                                                |
| paths         | ['https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/virtual-machines/virtual_machine/encrypt-running-linux-vm/outputs.tf', 'https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/virtual-machines/virtual_machine/encrypt-running-linux-vm/variables.tf', 'https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/virtual-machines/virtual_machine/encrypt-running-linux-vm/main.tf'] |

- masterTestId: TEST_STORAGE_ACCOUNT_10
- masterSnapshotId: ['TRF_TEMPLATE_SNAPSHOT']
- type: rego
- rule: file(https://github.com/prancer-io/prancer-compliance-test/tree/master/azure/terraform/storageaccounts.rego)
- severity: Medium

tags
| Title      | Description                             |
|:-----------|:----------------------------------------|
| cloud      | git                                     |
| compliance | ['CIS', 'HIPAA', 'NIST 800', 'PCI-DSS'] |
| service    | ['terraform']                           |
----------------------------------------------------------------


### Test ID - PR-AZR-TRF-STR-016
Title: Storage Accounts access should be allowed for trusted Microsoft services\
Test Result: **failed**\
Description : Ensure that 'Allow trusted Microsoft services to access this storage account' exception is enabled within your Azure Storage account configuration settings to grant access to trusted cloud services.\

#### Test Details
- eval: data.rule.storage_allow_trusted_azure_services
- id : PR-AZR-TRF-STR-016

#### Snapshots
| Title         | Description                                                                                                                                                                                                                                                                                                                                                                                                                      |
|:--------------|:---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| id            | TRF_TEMPLATE_SNAPSHOT139                                                                                                                                                                                                                                                                                                                                                                                                         |
| structure     | filesystem                                                                                                                                                                                                                                                                                                                                                                                                                       |
| reference     | main                                                                                                                                                                                                                                                                                                                                                                                                                             |
| source        | gitConnectorAzureTerraHashicorp                                                                                                                                                                                                                                                                                                                                                                                                  |
| collection    | terraformtemplate                                                                                                                                                                                                                                                                                                                                                                                                                |
| type          | terraform                                                                                                                                                                                                                                                                                                                                                                                                                        |
| region        |                                                                                                                                                                                                                                                                                                                                                                                                                                  |
| resourceTypes | ['azurerm_availability_set', 'azurerm_network_security_group', 'azurerm_storage_account', 'azurerm_lb_backend_address_pool', 'azurerm_lb', 'azurerm_lb_rule', 'azurerm_subnet', 'azurerm_lb_nat_rule', 'azurerm_resource_group', 'azurerm_virtual_machine', 'azurerm_network_interface', 'azurerm_lb_probe', 'azurerm_virtual_network', 'azurerm_public_ip']                                                                     |
| paths         | ['https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/virtual-machines/virtual_machine/openshift-origin/outputs.tf', 'https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/virtual-machines/virtual_machine/openshift-origin/variables.tf', 'https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/virtual-machines/virtual_machine/openshift-origin/main.tf'] |

- masterTestId: TEST_STORAGE_ACCOUNT_10
- masterSnapshotId: ['TRF_TEMPLATE_SNAPSHOT']
- type: rego
- rule: file(https://github.com/prancer-io/prancer-compliance-test/tree/master/azure/terraform/storageaccounts.rego)
- severity: Medium

tags
| Title      | Description                             |
|:-----------|:----------------------------------------|
| cloud      | git                                     |
| compliance | ['CIS', 'HIPAA', 'NIST 800', 'PCI-DSS'] |
| service    | ['terraform']                           |
----------------------------------------------------------------


### Test ID - PR-AZR-TRF-STR-016
Title: Storage Accounts access should be allowed for trusted Microsoft services\
Test Result: **failed**\
Description : Ensure that 'Allow trusted Microsoft services to access this storage account' exception is enabled within your Azure Storage account configuration settings to grant access to trusted cloud services.\

#### Test Details
- eval: data.rule.storage_allow_trusted_azure_services
- id : PR-AZR-TRF-STR-016

#### Snapshots
| Title         | Description                                                                                                                                                                                                                                                                                                                                                                                                                                                             |
|:--------------|:------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| id            | TRF_TEMPLATE_SNAPSHOT145                                                                                                                                                                                                                                                                                                                                                                                                                                                |
| structure     | filesystem                                                                                                                                                                                                                                                                                                                                                                                                                                                              |
| reference     | main                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |
| source        | gitConnectorAzureTerraHashicorp                                                                                                                                                                                                                                                                                                                                                                                                                                         |
| collection    | terraformtemplate                                                                                                                                                                                                                                                                                                                                                                                                                                                       |
| type          | terraform                                                                                                                                                                                                                                                                                                                                                                                                                                                               |
| region        |                                                                                                                                                                                                                                                                                                                                                                                                                                                                         |
| resourceTypes | ['azurerm_availability_set', 'azurerm_storage_container', 'azurerm_network_security_group', 'azurerm_storage_account', 'azurerm_subnet', 'azurerm_resource_group', 'azurerm_virtual_machine', 'azurerm_network_interface', 'azurerm_virtual_network', 'azurerm_public_ip']                                                                                                                                                                                              |
| paths         | ['https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/virtual-machines/virtual_machine/spark-and-cassandra-on-centos/outputs.tf', 'https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/virtual-machines/virtual_machine/spark-and-cassandra-on-centos/variables.tf', 'https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/virtual-machines/virtual_machine/spark-and-cassandra-on-centos/main.tf'] |

- masterTestId: TEST_STORAGE_ACCOUNT_10
- masterSnapshotId: ['TRF_TEMPLATE_SNAPSHOT']
- type: rego
- rule: file(https://github.com/prancer-io/prancer-compliance-test/tree/master/azure/terraform/storageaccounts.rego)
- severity: Medium

tags
| Title      | Description                             |
|:-----------|:----------------------------------------|
| cloud      | git                                     |
| compliance | ['CIS', 'HIPAA', 'NIST 800', 'PCI-DSS'] |
| service    | ['terraform']                           |
----------------------------------------------------------------


### Test ID - PR-AZR-TRF-STR-016
Title: Storage Accounts access should be allowed for trusted Microsoft services\
Test Result: **failed**\
Description : Ensure that 'Allow trusted Microsoft services to access this storage account' exception is enabled within your Azure Storage account configuration settings to grant access to trusted cloud services.\

#### Test Details
- eval: data.rule.storage_allow_trusted_azure_services
- id : PR-AZR-TRF-STR-016

#### Snapshots
| Title         | Description                                                                                                                                                                                                                                                                                               |
|:--------------|:----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| id            | TRF_TEMPLATE_SNAPSHOT146                                                                                                                                                                                                                                                                                  |
| structure     | filesystem                                                                                                                                                                                                                                                                                                |
| reference     | main                                                                                                                                                                                                                                                                                                      |
| source        | gitConnectorAzureTerraHashicorp                                                                                                                                                                                                                                                                           |
| collection    | terraformtemplate                                                                                                                                                                                                                                                                                         |
| type          | terraform                                                                                                                                                                                                                                                                                                 |
| region        |                                                                                                                                                                                                                                                                                                           |
| resourceTypes | ['azurerm_storage_container', 'azurerm_storage_account', 'azurerm_subnet', 'azurerm_resource_group', 'azurerm_network_interface', 'azurerm_virtual_network']                                                                                                                                              |
| paths         | ['https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/virtual-machines/virtual_machine/unmanaged-disks/basic/variables.tf', 'https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/virtual-machines/virtual_machine/unmanaged-disks/basic/1-dependencies.tf'] |

- masterTestId: TEST_STORAGE_ACCOUNT_10
- masterSnapshotId: ['TRF_TEMPLATE_SNAPSHOT']
- type: rego
- rule: file(https://github.com/prancer-io/prancer-compliance-test/tree/master/azure/terraform/storageaccounts.rego)
- severity: Medium

tags
| Title      | Description                             |
|:-----------|:----------------------------------------|
| cloud      | git                                     |
| compliance | ['CIS', 'HIPAA', 'NIST 800', 'PCI-DSS'] |
| service    | ['terraform']                           |
----------------------------------------------------------------


### Test ID - 
Title: Storage Accounts access should be allowed for trusted Microsoft services\
Test Result: **failed**\
Description : Ensure that 'Allow trusted Microsoft services to access this storage account' exception is enabled within your Azure Storage account configuration settings to grant access to trusted cloud services.\

#### Test Details
- eval: [{'id': 'PR-AZR-TRF-STR-016', 'eval': 'data.rule.storage_allow_trusted_azure_services', 'message': 'data.rule.storage_allow_trusted_azure_services_err', 'remediationDescription': "In 'azurerm_storage_account' resource, add 'AzureServices' value under 'bypass' array property which exist under 'network_rules' to fix the issue. Visit <a href='https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/storage_account#bypass' target='_blank'>here</a> for details.", 'remediationFunction': 'PR_AZR_TRF_STR_016.py'}]
- id : 

#### Snapshots
[]

- masterTestId: TEST_STORAGE_ACCOUNT_10
- masterSnapshotId: ['TRF_TEMPLATE_SNAPSHOT']
- type: rego
- rule: file(https://github.com/prancer-io/prancer-compliance-test/tree/master/azure/terraform/storageaccounts.rego)
- severity: Medium

tags
| Title      | Description                             |
|:-----------|:----------------------------------------|
| cloud      | git                                     |
| compliance | ['CIS', 'HIPAA', 'NIST 800', 'PCI-DSS'] |
| service    | ['terraform']                           |
----------------------------------------------------------------


### Test ID - PR-AZR-TRF-STR-016
Title: Storage Accounts access should be allowed for trusted Microsoft services\
Test Result: **failed**\
Description : Ensure that 'Allow trusted Microsoft services to access this storage account' exception is enabled within your Azure Storage account configuration settings to grant access to trusted cloud services.\

#### Test Details
- eval: data.rule.storage_allow_trusted_azure_services
- id : PR-AZR-TRF-STR-016

#### Snapshots
| Title         | Description                                                                                                                                                                                                                                                          |
|:--------------|:---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| id            | TRF_TEMPLATE_SNAPSHOT154                                                                                                                                                                                                                                             |
| structure     | filesystem                                                                                                                                                                                                                                                           |
| reference     | main                                                                                                                                                                                                                                                                 |
| source        | gitConnectorAzureTerraHashicorp                                                                                                                                                                                                                                      |
| collection    | terraformtemplate                                                                                                                                                                                                                                                    |
| type          | terraform                                                                                                                                                                                                                                                            |
| region        |                                                                                                                                                                                                                                                                      |
| resourceTypes | ['azurerm_storage_account', 'azurerm_subnet', 'azurerm_resource_group', 'azurerm_windows_virtual_machine', 'azurerm_role_assignment', 'azurerm_network_interface', 'azurerm_virtual_network']                                                                        |
| paths         | ['https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/virtual-machines/windows/vm-role-assignment/vars.tf', 'https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/virtual-machines/windows/vm-role-assignment/main.tf'] |

- masterTestId: TEST_STORAGE_ACCOUNT_10
- masterSnapshotId: ['TRF_TEMPLATE_SNAPSHOT']
- type: rego
- rule: file(https://github.com/prancer-io/prancer-compliance-test/tree/master/azure/terraform/storageaccounts.rego)
- severity: Medium

tags
| Title      | Description                             |
|:-----------|:----------------------------------------|
| cloud      | git                                     |
| compliance | ['CIS', 'HIPAA', 'NIST 800', 'PCI-DSS'] |
| service    | ['terraform']                           |
----------------------------------------------------------------


### Test ID - PR-AZR-TRF-STR-016
Title: Storage Accounts access should be allowed for trusted Microsoft services\
Test Result: **failed**\
Description : Ensure that 'Allow trusted Microsoft services to access this storage account' exception is enabled within your Azure Storage account configuration settings to grant access to trusted cloud services.\

#### Test Details
- eval: data.rule.storage_allow_trusted_azure_services
- id : PR-AZR-TRF-STR-016

#### Snapshots
| Title         | Description                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |
|:--------------|:----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| id            | TRF_TEMPLATE_SNAPSHOT155                                                                                                                                                                                                                                                                                                                                                                                                                                                    |
| structure     | filesystem                                                                                                                                                                                                                                                                                                                                                                                                                                                                  |
| reference     | main                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |
| source        | gitConnectorAzureTerraHashicorp                                                                                                                                                                                                                                                                                                                                                                                                                                             |
| collection    | terraformtemplate                                                                                                                                                                                                                                                                                                                                                                                                                                                           |
| type          | terraform                                                                                                                                                                                                                                                                                                                                                                                                                                                                   |
| region        |                                                                                                                                                                                                                                                                                                                                                                                                                                                                             |
| resourceTypes | ['azurerm_subnet_route_table_association', 'azurerm_firewall_application_rule_collection', 'azurerm_firewall_network_rule_collection', 'azurerm_route_table', 'azurerm_network_security_group', 'azurerm_storage_account', 'azurerm_subnet', 'azurerm_resource_group', 'azurerm_network_interface_security_group_association', 'azurerm_virtual_machine', 'azurerm_network_interface', 'azurerm_firewall', 'random_string', 'azurerm_virtual_network', 'azurerm_public_ip'] |
| paths         | ['https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/virtual-networks/azure-firewall/variables.tf', 'https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/virtual-networks/azure-firewall/main.tf']                                                                                                                                                                                                                           |

- masterTestId: TEST_STORAGE_ACCOUNT_10
- masterSnapshotId: ['TRF_TEMPLATE_SNAPSHOT']
- type: rego
- rule: file(https://github.com/prancer-io/prancer-compliance-test/tree/master/azure/terraform/storageaccounts.rego)
- severity: Medium

tags
| Title      | Description                             |
|:-----------|:----------------------------------------|
| cloud      | git                                     |
| compliance | ['CIS', 'HIPAA', 'NIST 800', 'PCI-DSS'] |
| service    | ['terraform']                           |
----------------------------------------------------------------


### Test ID - PR-AZR-TRF-STR-016
Title: Storage Accounts access should be allowed for trusted Microsoft services\
Test Result: **failed**\
Description : Ensure that 'Allow trusted Microsoft services to access this storage account' exception is enabled within your Azure Storage account configuration settings to grant access to trusted cloud services.\

#### Test Details
- eval: data.rule.storage_allow_trusted_azure_services
- id : PR-AZR-TRF-STR-016

#### Snapshots
| Title         | Description                                                                                                                                                                                                                                               |
|:--------------|:----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| id            | TRF_TEMPLATE_SNAPSHOT169                                                                                                                                                                                                                                  |
| structure     | filesystem                                                                                                                                                                                                                                                |
| reference     | main                                                                                                                                                                                                                                                      |
| source        | gitConnectorAzureTerraHashicorp                                                                                                                                                                                                                           |
| collection    | terraformtemplate                                                                                                                                                                                                                                         |
| type          | terraform                                                                                                                                                                                                                                                 |
| region        |                                                                                                                                                                                                                                                           |
| resourceTypes | ['azurerm_linux_virtual_machine_scale_set', 'azurerm_storage_account', 'azurerm_subnet', 'azurerm_resource_group', 'azurerm_virtual_network']                                                                                                             |
| paths         | ['https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/vm-scale-set/linux/boot-diagnostics/variables.tf', 'https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/vm-scale-set/linux/boot-diagnostics/main.tf'] |

- masterTestId: TEST_STORAGE_ACCOUNT_10
- masterSnapshotId: ['TRF_TEMPLATE_SNAPSHOT']
- type: rego
- rule: file(https://github.com/prancer-io/prancer-compliance-test/tree/master/azure/terraform/storageaccounts.rego)
- severity: Medium

tags
| Title      | Description                             |
|:-----------|:----------------------------------------|
| cloud      | git                                     |
| compliance | ['CIS', 'HIPAA', 'NIST 800', 'PCI-DSS'] |
| service    | ['terraform']                           |
----------------------------------------------------------------


### Test ID - PR-AZR-TRF-STR-016
Title: Storage Accounts access should be allowed for trusted Microsoft services\
Test Result: **failed**\
Description : Ensure that 'Allow trusted Microsoft services to access this storage account' exception is enabled within your Azure Storage account configuration settings to grant access to trusted cloud services.\

#### Test Details
- eval: data.rule.storage_allow_trusted_azure_services
- id : PR-AZR-TRF-STR-016

#### Snapshots
| Title         | Description                                                                                                                                                                                                                                                   |
|:--------------|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| id            | TRF_TEMPLATE_SNAPSHOT190                                                                                                                                                                                                                                      |
| structure     | filesystem                                                                                                                                                                                                                                                    |
| reference     | main                                                                                                                                                                                                                                                          |
| source        | gitConnectorAzureTerraHashicorp                                                                                                                                                                                                                               |
| collection    | terraformtemplate                                                                                                                                                                                                                                             |
| type          | terraform                                                                                                                                                                                                                                                     |
| region        |                                                                                                                                                                                                                                                               |
| resourceTypes | ['azurerm_storage_account', 'azurerm_subnet', 'azurerm_resource_group', 'azurerm_virtual_network', 'azurerm_windows_virtual_machine_scale_set']                                                                                                               |
| paths         | ['https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/vm-scale-set/windows/boot-diagnostics/variables.tf', 'https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/vm-scale-set/windows/boot-diagnostics/main.tf'] |

- masterTestId: TEST_STORAGE_ACCOUNT_10
- masterSnapshotId: ['TRF_TEMPLATE_SNAPSHOT']
- type: rego
- rule: file(https://github.com/prancer-io/prancer-compliance-test/tree/master/azure/terraform/storageaccounts.rego)
- severity: Medium

tags
| Title      | Description                             |
|:-----------|:----------------------------------------|
| cloud      | git                                     |
| compliance | ['CIS', 'HIPAA', 'NIST 800', 'PCI-DSS'] |
| service    | ['terraform']                           |
----------------------------------------------------------------


### Test ID - PR-AZR-TRF-STR-017
Title: Ensure Storage Account naming rules are correct\
Test Result: **passed**\
Description : Storage account names must be between 3 and 24 characters in length and may contain numbers and lowercase letters only.\

#### Test Details
- eval: data.rule.storage_correct_naming_convention
- id : PR-AZR-TRF-STR-017

#### Snapshots
| Title         | Description                                                                                                                                                                                                                                                                                                                        |
|:--------------|:-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| id            | TRF_TEMPLATE_SNAPSHOT2                                                                                                                                                                                                                                                                                                             |
| structure     | filesystem                                                                                                                                                                                                                                                                                                                         |
| reference     | main                                                                                                                                                                                                                                                                                                                               |
| source        | gitConnectorAzureTerraHashicorp                                                                                                                                                                                                                                                                                                    |
| collection    | terraformtemplate                                                                                                                                                                                                                                                                                                                  |
| type          | terraform                                                                                                                                                                                                                                                                                                                          |
| region        |                                                                                                                                                                                                                                                                                                                                    |
| resourceTypes | ['azurerm_storage_container', 'azurerm_storage_account', 'azurerm_resource_group', 'azurerm_app_service_plan', 'azurerm_app_service']                                                                                                                                                                                              |
| paths         | ['https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/app-service/backup/output.tf', 'https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/app-service/backup/variables.tf', 'https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/app-service/backup/main.tf'] |

- masterTestId: TEST_STORAGE_ACCOUNT_11
- masterSnapshotId: ['TRF_TEMPLATE_SNAPSHOT']
- type: rego
- rule: file(https://github.com/prancer-io/prancer-compliance-test/tree/master/azure/terraform/storageaccounts.rego)
- severity: Medium

tags
| Title      | Description                             |
|:-----------|:----------------------------------------|
| cloud      | git                                     |
| compliance | ['CIS', 'HIPAA', 'NIST 800', 'PCI-DSS'] |
| service    | ['terraform']                           |
----------------------------------------------------------------


### Test ID - PR-AZR-TRF-STR-017
Title: Ensure Storage Account naming rules are correct\
Test Result: **passed**\
Description : Storage account names must be between 3 and 24 characters in length and may contain numbers and lowercase letters only.\

#### Test Details
- eval: data.rule.storage_correct_naming_convention
- id : PR-AZR-TRF-STR-017

#### Snapshots
| Title         | Description                                                                                                                                                                                                                                                                                                                                                                                                                |
|:--------------|:---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| id            | TRF_TEMPLATE_SNAPSHOT7                                                                                                                                                                                                                                                                                                                                                                                                     |
| structure     | filesystem                                                                                                                                                                                                                                                                                                                                                                                                                 |
| reference     | main                                                                                                                                                                                                                                                                                                                                                                                                                       |
| source        | gitConnectorAzureTerraHashicorp                                                                                                                                                                                                                                                                                                                                                                                            |
| collection    | terraformtemplate                                                                                                                                                                                                                                                                                                                                                                                                          |
| type          | terraform                                                                                                                                                                                                                                                                                                                                                                                                                  |
| region        |                                                                                                                                                                                                                                                                                                                                                                                                                            |
| resourceTypes | ['azurerm_storage_account', 'azurerm_function_app', 'azurerm_resource_group', 'azurerm_role_assignment', 'azurerm_app_service_plan', 'azurerm_application_insights']                                                                                                                                                                                                                                                       |
| paths         | ['https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/app-service/function-azure-RBAC-role-assignment/outputs.tf', 'https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/app-service/function-azure-RBAC-role-assignment/variables.tf', 'https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/app-service/function-azure-RBAC-role-assignment/main.tf'] |

- masterTestId: TEST_STORAGE_ACCOUNT_11
- masterSnapshotId: ['TRF_TEMPLATE_SNAPSHOT']
- type: rego
- rule: file(https://github.com/prancer-io/prancer-compliance-test/tree/master/azure/terraform/storageaccounts.rego)
- severity: Medium

tags
| Title      | Description                             |
|:-----------|:----------------------------------------|
| cloud      | git                                     |
| compliance | ['CIS', 'HIPAA', 'NIST 800', 'PCI-DSS'] |
| service    | ['terraform']                           |
----------------------------------------------------------------


### Test ID - PR-AZR-TRF-STR-017
Title: Ensure Storage Account naming rules are correct\
Test Result: **passed**\
Description : Storage account names must be between 3 and 24 characters in length and may contain numbers and lowercase letters only.\

#### Test Details
- eval: data.rule.storage_correct_naming_convention
- id : PR-AZR-TRF-STR-017

#### Snapshots
| Title         | Description                                                                                                                                                                                                                                                                                                                                                 |
|:--------------|:------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| id            | TRF_TEMPLATE_SNAPSHOT8                                                                                                                                                                                                                                                                                                                                      |
| structure     | filesystem                                                                                                                                                                                                                                                                                                                                                  |
| reference     | main                                                                                                                                                                                                                                                                                                                                                        |
| source        | gitConnectorAzureTerraHashicorp                                                                                                                                                                                                                                                                                                                             |
| collection    | terraformtemplate                                                                                                                                                                                                                                                                                                                                           |
| type          | terraform                                                                                                                                                                                                                                                                                                                                                   |
| region        |                                                                                                                                                                                                                                                                                                                                                             |
| resourceTypes | ['azurerm_storage_account', 'azurerm_function_app', 'azurerm_resource_group', 'azurerm_app_service_plan', 'azurerm_application_insights']                                                                                                                                                                                                                   |
| paths         | ['https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/app-service/function-basic/outputs.tf', 'https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/app-service/function-basic/variables.tf', 'https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/app-service/function-basic/main.tf'] |

- masterTestId: TEST_STORAGE_ACCOUNT_11
- masterSnapshotId: ['TRF_TEMPLATE_SNAPSHOT']
- type: rego
- rule: file(https://github.com/prancer-io/prancer-compliance-test/tree/master/azure/terraform/storageaccounts.rego)
- severity: Medium

tags
| Title      | Description                             |
|:-----------|:----------------------------------------|
| cloud      | git                                     |
| compliance | ['CIS', 'HIPAA', 'NIST 800', 'PCI-DSS'] |
| service    | ['terraform']                           |
----------------------------------------------------------------


### Test ID - PR-AZR-TRF-STR-017
Title: Ensure Storage Account naming rules are correct\
Test Result: **passed**\
Description : Storage account names must be between 3 and 24 characters in length and may contain numbers and lowercase letters only.\

#### Test Details
- eval: data.rule.storage_correct_naming_convention
- id : PR-AZR-TRF-STR-017

#### Snapshots
| Title         | Description                                                                                                                                                                                                                          |
|:--------------|:-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| id            | TRF_TEMPLATE_SNAPSHOT9                                                                                                                                                                                                               |
| structure     | filesystem                                                                                                                                                                                                                           |
| reference     | main                                                                                                                                                                                                                                 |
| source        | gitConnectorAzureTerraHashicorp                                                                                                                                                                                                      |
| collection    | terraformtemplate                                                                                                                                                                                                                    |
| type          | terraform                                                                                                                                                                                                                            |
| region        |                                                                                                                                                                                                                                      |
| resourceTypes | ['azurerm_storage_account', 'azurerm_function_app', 'azurerm_resource_group', 'azurerm_app_service_plan']                                                                                                                            |
| paths         | ['https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/app-service/function-python/vars.tf', 'https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/app-service/function-python/main.tf'] |

- masterTestId: TEST_STORAGE_ACCOUNT_11
- masterSnapshotId: ['TRF_TEMPLATE_SNAPSHOT']
- type: rego
- rule: file(https://github.com/prancer-io/prancer-compliance-test/tree/master/azure/terraform/storageaccounts.rego)
- severity: Medium

tags
| Title      | Description                             |
|:-----------|:----------------------------------------|
| cloud      | git                                     |
| compliance | ['CIS', 'HIPAA', 'NIST 800', 'PCI-DSS'] |
| service    | ['terraform']                           |
----------------------------------------------------------------


### Test ID - PR-AZR-TRF-STR-017
Title: Ensure Storage Account naming rules are correct\
Test Result: **passed**\
Description : Storage account names must be between 3 and 24 characters in length and may contain numbers and lowercase letters only.\

#### Test Details
- eval: data.rule.storage_correct_naming_convention
- id : PR-AZR-TRF-STR-017

#### Snapshots
| Title         | Description                                                                                                                                                                                               |
|:--------------|:----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| id            | TRF_TEMPLATE_SNAPSHOT24                                                                                                                                                                                   |
| structure     | filesystem                                                                                                                                                                                                |
| reference     | main                                                                                                                                                                                                      |
| source        | gitConnectorAzureTerraHashicorp                                                                                                                                                                           |
| collection    | terraformtemplate                                                                                                                                                                                         |
| type          | terraform                                                                                                                                                                                                 |
| region        |                                                                                                                                                                                                           |
| resourceTypes | ['azurerm_storage_account', 'azurerm_batch_pool', 'azurerm_resource_group', 'azurerm_batch_account']                                                                                                      |
| paths         | ['https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/batch/basic/variables.tf', 'https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/batch/basic/main.tf'] |

- masterTestId: TEST_STORAGE_ACCOUNT_11
- masterSnapshotId: ['TRF_TEMPLATE_SNAPSHOT']
- type: rego
- rule: file(https://github.com/prancer-io/prancer-compliance-test/tree/master/azure/terraform/storageaccounts.rego)
- severity: Medium

tags
| Title      | Description                             |
|:-----------|:----------------------------------------|
| cloud      | git                                     |
| compliance | ['CIS', 'HIPAA', 'NIST 800', 'PCI-DSS'] |
| service    | ['terraform']                           |
----------------------------------------------------------------


### Test ID - PR-AZR-TRF-STR-017
Title: Ensure Storage Account naming rules are correct\
Test Result: **passed**\
Description : Storage account names must be between 3 and 24 characters in length and may contain numbers and lowercase letters only.\

#### Test Details
- eval: data.rule.storage_correct_naming_convention
- id : PR-AZR-TRF-STR-017

#### Snapshots
| Title         | Description                                                                                                                                                                                                                                                                  |
|:--------------|:-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| id            | TRF_TEMPLATE_SNAPSHOT25                                                                                                                                                                                                                                                      |
| structure     | filesystem                                                                                                                                                                                                                                                                   |
| reference     | main                                                                                                                                                                                                                                                                         |
| source        | gitConnectorAzureTerraHashicorp                                                                                                                                                                                                                                              |
| collection    | terraformtemplate                                                                                                                                                                                                                                                            |
| type          | terraform                                                                                                                                                                                                                                                                    |
| region        |                                                                                                                                                                                                                                                                              |
| resourceTypes | ['azurerm_storage_container', 'azurerm_storage_account', 'azurerm_subnet', 'azurerm_batch_pool', 'azurerm_resource_group', 'azurerm_image', 'azurerm_virtual_machine', 'azurerm_network_interface', 'azurerm_batch_account', 'azurerm_virtual_network', 'azurerm_public_ip'] |
| paths         | ['https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/batch/custom-image/variables.tf', 'https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/batch/custom-image/main.tf']                                                      |

- masterTestId: TEST_STORAGE_ACCOUNT_11
- masterSnapshotId: ['TRF_TEMPLATE_SNAPSHOT']
- type: rego
- rule: file(https://github.com/prancer-io/prancer-compliance-test/tree/master/azure/terraform/storageaccounts.rego)
- severity: Medium

tags
| Title      | Description                             |
|:-----------|:----------------------------------------|
| cloud      | git                                     |
| compliance | ['CIS', 'HIPAA', 'NIST 800', 'PCI-DSS'] |
| service    | ['terraform']                           |
----------------------------------------------------------------


### Test ID - PR-AZR-TRF-STR-017
Title: Ensure Storage Account naming rules are correct\
Test Result: **passed**\
Description : Storage account names must be between 3 and 24 characters in length and may contain numbers and lowercase letters only.\

#### Test Details
- eval: data.rule.storage_correct_naming_convention
- id : PR-AZR-TRF-STR-017

#### Snapshots
| Title         | Description                                                                                                                                                                                                                                                                            |
|:--------------|:---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| id            | TRF_TEMPLATE_SNAPSHOT27                                                                                                                                                                                                                                                                |
| structure     | filesystem                                                                                                                                                                                                                                                                             |
| reference     | main                                                                                                                                                                                                                                                                                   |
| source        | gitConnectorAzureTerraHashicorp                                                                                                                                                                                                                                                        |
| collection    | terraformtemplate                                                                                                                                                                                                                                                                      |
| type          | terraform                                                                                                                                                                                                                                                                              |
| region        |                                                                                                                                                                                                                                                                                        |
| resourceTypes | ['azurerm_storage_account', 'azurerm_cdn_profile', 'azurerm_cdn_endpoint', 'azurerm_resource_group']                                                                                                                                                                                   |
| paths         | ['https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/cdn/outputs.tf', 'https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/cdn/variables.tf', 'https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/cdn/main.tf'] |

- masterTestId: TEST_STORAGE_ACCOUNT_11
- masterSnapshotId: ['TRF_TEMPLATE_SNAPSHOT']
- type: rego
- rule: file(https://github.com/prancer-io/prancer-compliance-test/tree/master/azure/terraform/storageaccounts.rego)
- severity: Medium

tags
| Title      | Description                             |
|:-----------|:----------------------------------------|
| cloud      | git                                     |
| compliance | ['CIS', 'HIPAA', 'NIST 800', 'PCI-DSS'] |
| service    | ['terraform']                           |
----------------------------------------------------------------


### Test ID - PR-AZR-TRF-STR-017
Title: Ensure Storage Account naming rules are correct\
Test Result: **passed**\
Description : Storage account names must be between 3 and 24 characters in length and may contain numbers and lowercase letters only.\

#### Test Details
- eval: data.rule.storage_correct_naming_convention
- id : PR-AZR-TRF-STR-017

#### Snapshots
| Title         | Description                                                                                                                                                                                                                                                                                                                                                                |
|:--------------|:---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| id            | TRF_TEMPLATE_SNAPSHOT31                                                                                                                                                                                                                                                                                                                                                    |
| structure     | filesystem                                                                                                                                                                                                                                                                                                                                                                 |
| reference     | main                                                                                                                                                                                                                                                                                                                                                                       |
| source        | gitConnectorAzureTerraHashicorp                                                                                                                                                                                                                                                                                                                                            |
| collection    | terraformtemplate                                                                                                                                                                                                                                                                                                                                                          |
| type          | terraform                                                                                                                                                                                                                                                                                                                                                                  |
| region        |                                                                                                                                                                                                                                                                                                                                                                            |
| resourceTypes | ['azurerm_storage_account', 'azurerm_storage_share', 'azurerm_resource_group', 'azurerm_container_group']                                                                                                                                                                                                                                                                  |
| paths         | ['https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/container-instance/volume-mount/outputs.tf', 'https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/container-instance/volume-mount/variables.tf', 'https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/container-instance/volume-mount/main.tf'] |

- masterTestId: TEST_STORAGE_ACCOUNT_11
- masterSnapshotId: ['TRF_TEMPLATE_SNAPSHOT']
- type: rego
- rule: file(https://github.com/prancer-io/prancer-compliance-test/tree/master/azure/terraform/storageaccounts.rego)
- severity: Medium

tags
| Title      | Description                             |
|:-----------|:----------------------------------------|
| cloud      | git                                     |
| compliance | ['CIS', 'HIPAA', 'NIST 800', 'PCI-DSS'] |
| service    | ['terraform']                           |
----------------------------------------------------------------


### Test ID - PR-AZR-TRF-STR-017
Title: Ensure Storage Account naming rules are correct\
Test Result: **passed**\
Description : Storage account names must be between 3 and 24 characters in length and may contain numbers and lowercase letters only.\

#### Test Details
- eval: data.rule.storage_correct_naming_convention
- id : PR-AZR-TRF-STR-017

#### Snapshots
| Title         | Description                                                                                                                                                                                                                                 |
|:--------------|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| id            | TRF_TEMPLATE_SNAPSHOT43                                                                                                                                                                                                                     |
| structure     | filesystem                                                                                                                                                                                                                                  |
| reference     | main                                                                                                                                                                                                                                        |
| source        | gitConnectorAzureTerraHashicorp                                                                                                                                                                                                             |
| collection    | terraformtemplate                                                                                                                                                                                                                           |
| type          | terraform                                                                                                                                                                                                                                   |
| region        |                                                                                                                                                                                                                                             |
| resourceTypes | ['azurerm_eventgrid_event_subscription', 'azurerm_storage_container', 'azurerm_storage_account', 'azurerm_resource_group', 'azurerm_storage_queue', 'azurerm_storage_blob']                                                                 |
| paths         | ['https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/eventgrid/event-subscription/variables.tf', 'https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/eventgrid/event-subscription/main.tf'] |

- masterTestId: TEST_STORAGE_ACCOUNT_11
- masterSnapshotId: ['TRF_TEMPLATE_SNAPSHOT']
- type: rego
- rule: file(https://github.com/prancer-io/prancer-compliance-test/tree/master/azure/terraform/storageaccounts.rego)
- severity: Medium

tags
| Title      | Description                             |
|:-----------|:----------------------------------------|
| cloud      | git                                     |
| compliance | ['CIS', 'HIPAA', 'NIST 800', 'PCI-DSS'] |
| service    | ['terraform']                           |
----------------------------------------------------------------


### Test ID - PR-AZR-TRF-STR-017
Title: Ensure Storage Account naming rules are correct\
Test Result: **passed**\
Description : Storage account names must be between 3 and 24 characters in length and may contain numbers and lowercase letters only.\

#### Test Details
- eval: data.rule.storage_correct_naming_convention
- id : PR-AZR-TRF-STR-017

#### Snapshots
| Title         | Description                                                                                                                                                                                                                                                                                                                                                                                                                                                        |
|:--------------|:-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| id            | TRF_TEMPLATE_SNAPSHOT46                                                                                                                                                                                                                                                                                                                                                                                                                                            |
| structure     | filesystem                                                                                                                                                                                                                                                                                                                                                                                                                                                         |
| reference     | main                                                                                                                                                                                                                                                                                                                                                                                                                                                               |
| source        | gitConnectorAzureTerraHashicorp                                                                                                                                                                                                                                                                                                                                                                                                                                    |
| collection    | terraformtemplate                                                                                                                                                                                                                                                                                                                                                                                                                                                  |
| type          | terraform                                                                                                                                                                                                                                                                                                                                                                                                                                                          |
| region        |                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |
| resourceTypes | ['azurerm_subnet_network_security_group_association', 'azurerm_storage_container', 'azuread_group', 'azurerm_network_security_group', 'azurerm_storage_account', 'azurerm_virtual_network_dns_servers', 'azurerm_subnet', 'azurerm_resource_group', 'azurerm_role_assignment', 'azuread_user', 'azurerm_active_directory_domain_service', 'azurerm_user_assigned_identity', 'azurerm_hdinsight_hadoop_cluster', 'azurerm_virtual_network', 'azuread_group_member'] |
| paths         | ['https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/hdinsight/enterprise-security-package/providers.tf', 'https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/hdinsight/enterprise-security-package/variables.tf', 'https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/hdinsight/enterprise-security-package/main.tf']                                                                     |

- masterTestId: TEST_STORAGE_ACCOUNT_11
- masterSnapshotId: ['TRF_TEMPLATE_SNAPSHOT']
- type: rego
- rule: file(https://github.com/prancer-io/prancer-compliance-test/tree/master/azure/terraform/storageaccounts.rego)
- severity: Medium

tags
| Title      | Description                             |
|:-----------|:----------------------------------------|
| cloud      | git                                     |
| compliance | ['CIS', 'HIPAA', 'NIST 800', 'PCI-DSS'] |
| service    | ['terraform']                           |
----------------------------------------------------------------


### Test ID - PR-AZR-TRF-STR-017
Title: Ensure Storage Account naming rules are correct\
Test Result: **passed**\
Description : Storage account names must be between 3 and 24 characters in length and may contain numbers and lowercase letters only.\

#### Test Details
- eval: data.rule.storage_correct_naming_convention
- id : PR-AZR-TRF-STR-017

#### Snapshots
| Title         | Description                                                                                                                                                                                                                                                                                                                                                                                                                                                                |
|:--------------|:---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| id            | TRF_TEMPLATE_SNAPSHOT47                                                                                                                                                                                                                                                                                                                                                                                                                                                    |
| structure     | filesystem                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |
| reference     | main                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |
| source        | gitConnectorAzureTerraHashicorp                                                                                                                                                                                                                                                                                                                                                                                                                                            |
| collection    | terraformtemplate                                                                                                                                                                                                                                                                                                                                                                                                                                                          |
| type          | terraform                                                                                                                                                                                                                                                                                                                                                                                                                                                                  |
| region        |                                                                                                                                                                                                                                                                                                                                                                                                                                                                            |
| resourceTypes | ['azurerm_subnet_network_security_group_association', 'azurerm_network_security_group', 'azurerm_storage_account', 'azurerm_nat_gateway_public_ip_association', 'azurerm_subnet_nat_gateway_association', 'azurerm_storage_data_lake_gen2_filesystem', 'azurerm_subnet', 'azurerm_resource_group', 'azurerm_role_assignment', 'azurerm_user_assigned_identity', 'azurerm_hdinsight_hadoop_cluster', 'azurerm_nat_gateway', 'azurerm_virtual_network', 'azurerm_public_ip'] |
| paths         | ['https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/hdinsight/private-link/hadoop-interactive-spark-cluster/variables.tf', 'https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/hdinsight/private-link/hadoop-interactive-spark-cluster/main.tf']                                                                                                                                                                          |

- masterTestId: TEST_STORAGE_ACCOUNT_11
- masterSnapshotId: ['TRF_TEMPLATE_SNAPSHOT']
- type: rego
- rule: file(https://github.com/prancer-io/prancer-compliance-test/tree/master/azure/terraform/storageaccounts.rego)
- severity: Medium

tags
| Title      | Description                             |
|:-----------|:----------------------------------------|
| cloud      | git                                     |
| compliance | ['CIS', 'HIPAA', 'NIST 800', 'PCI-DSS'] |
| service    | ['terraform']                           |
----------------------------------------------------------------


### Test ID - PR-AZR-TRF-STR-017
Title: Ensure Storage Account naming rules are correct\
Test Result: **passed**\
Description : Storage account names must be between 3 and 24 characters in length and may contain numbers and lowercase letters only.\

#### Test Details
- eval: data.rule.storage_correct_naming_convention
- id : PR-AZR-TRF-STR-017

#### Snapshots
| Title         | Description                                                                                                                                                                                                                 |
|:--------------|:----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| id            | TRF_TEMPLATE_SNAPSHOT69                                                                                                                                                                                                     |
| structure     | filesystem                                                                                                                                                                                                                  |
| reference     | main                                                                                                                                                                                                                        |
| source        | gitConnectorAzureTerraHashicorp                                                                                                                                                                                             |
| collection    | terraformtemplate                                                                                                                                                                                                           |
| type          | terraform                                                                                                                                                                                                                   |
| region        |                                                                                                                                                                                                                             |
| resourceTypes | ['azurerm_storage_account', 'azurerm_media_services_account', 'azurerm_resource_group']                                                                                                                                     |
| paths         | ['https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/media-services/basic/variables.tf', 'https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/media-services/basic/main.tf'] |

- masterTestId: TEST_STORAGE_ACCOUNT_11
- masterSnapshotId: ['TRF_TEMPLATE_SNAPSHOT']
- type: rego
- rule: file(https://github.com/prancer-io/prancer-compliance-test/tree/master/azure/terraform/storageaccounts.rego)
- severity: Medium

tags
| Title      | Description                             |
|:-----------|:----------------------------------------|
| cloud      | git                                     |
| compliance | ['CIS', 'HIPAA', 'NIST 800', 'PCI-DSS'] |
| service    | ['terraform']                           |
----------------------------------------------------------------


### Test ID - PR-AZR-TRF-STR-017
Title: Ensure Storage Account naming rules are correct\
Test Result: **passed**\
Description : Storage account names must be between 3 and 24 characters in length and may contain numbers and lowercase letters only.\

#### Test Details
- eval: data.rule.storage_correct_naming_convention
- id : PR-AZR-TRF-STR-017

#### Snapshots
| Title         | Description                                                                                                                                                                                                                                         |
|:--------------|:----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| id            | TRF_TEMPLATE_SNAPSHOT70                                                                                                                                                                                                                             |
| structure     | filesystem                                                                                                                                                                                                                                          |
| reference     | main                                                                                                                                                                                                                                                |
| source        | gitConnectorAzureTerraHashicorp                                                                                                                                                                                                                     |
| collection    | terraformtemplate                                                                                                                                                                                                                                   |
| type          | terraform                                                                                                                                                                                                                                           |
| region        |                                                                                                                                                                                                                                                     |
| resourceTypes | ['azurerm_storage_account', 'azurerm_media_services_account', 'azurerm_resource_group', 'azurerm_media_asset']                                                                                                                                      |
| paths         | ['https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/media-services/basic-with-assets/variables.tf', 'https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/media-services/basic-with-assets/main.tf'] |

- masterTestId: TEST_STORAGE_ACCOUNT_11
- masterSnapshotId: ['TRF_TEMPLATE_SNAPSHOT']
- type: rego
- rule: file(https://github.com/prancer-io/prancer-compliance-test/tree/master/azure/terraform/storageaccounts.rego)
- severity: Medium

tags
| Title      | Description                             |
|:-----------|:----------------------------------------|
| cloud      | git                                     |
| compliance | ['CIS', 'HIPAA', 'NIST 800', 'PCI-DSS'] |
| service    | ['terraform']                           |
----------------------------------------------------------------


### Test ID - PR-AZR-TRF-STR-017
Title: Ensure Storage Account naming rules are correct\
Test Result: **passed**\
Description : Storage account names must be between 3 and 24 characters in length and may contain numbers and lowercase letters only.\

#### Test Details
- eval: data.rule.storage_correct_naming_convention
- id : PR-AZR-TRF-STR-017

#### Snapshots
| Title         | Description                                                                                                                                                                                                                                                         |
|:--------------|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| id            | TRF_TEMPLATE_SNAPSHOT71                                                                                                                                                                                                                                             |
| structure     | filesystem                                                                                                                                                                                                                                                          |
| reference     | main                                                                                                                                                                                                                                                                |
| source        | gitConnectorAzureTerraHashicorp                                                                                                                                                                                                                                     |
| collection    | terraformtemplate                                                                                                                                                                                                                                                   |
| type          | terraform                                                                                                                                                                                                                                                           |
| region        |                                                                                                                                                                                                                                                                     |
| resourceTypes | ['azurerm_storage_account', 'azurerm_media_services_account', 'azurerm_resource_group']                                                                                                                                                                             |
| paths         | ['https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/media-services/multiple-storage-accounts/variables.tf', 'https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/media-services/multiple-storage-accounts/main.tf'] |

- masterTestId: TEST_STORAGE_ACCOUNT_11
- masterSnapshotId: ['TRF_TEMPLATE_SNAPSHOT']
- type: rego
- rule: file(https://github.com/prancer-io/prancer-compliance-test/tree/master/azure/terraform/storageaccounts.rego)
- severity: Medium

tags
| Title      | Description                             |
|:-----------|:----------------------------------------|
| cloud      | git                                     |
| compliance | ['CIS', 'HIPAA', 'NIST 800', 'PCI-DSS'] |
| service    | ['terraform']                           |
----------------------------------------------------------------


### Test ID - PR-AZR-TRF-STR-017
Title: Ensure Storage Account naming rules are correct\
Test Result: **passed**\
Description : Storage account names must be between 3 and 24 characters in length and may contain numbers and lowercase letters only.\

#### Test Details
- eval: data.rule.storage_correct_naming_convention
- id : PR-AZR-TRF-STR-017

#### Snapshots
| Title         | Description                                                                                                                                                                                                                                       |
|:--------------|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| id            | TRF_TEMPLATE_SNAPSHOT91                                                                                                                                                                                                                           |
| structure     | filesystem                                                                                                                                                                                                                                        |
| reference     | main                                                                                                                                                                                                                                              |
| source        | gitConnectorAzureTerraHashicorp                                                                                                                                                                                                                   |
| collection    | terraformtemplate                                                                                                                                                                                                                                 |
| type          | terraform                                                                                                                                                                                                                                         |
| region        |                                                                                                                                                                                                                                                   |
| resourceTypes | ['azurerm_storage_account', 'azurerm_redis_cache', 'azurerm_resource_group']                                                                                                                                                                      |
| paths         | ['https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/redis-cache/premium-with-backup/variables.tf', 'https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/redis-cache/premium-with-backup/main.tf'] |

- masterTestId: TEST_STORAGE_ACCOUNT_11
- masterSnapshotId: ['TRF_TEMPLATE_SNAPSHOT']
- type: rego
- rule: file(https://github.com/prancer-io/prancer-compliance-test/tree/master/azure/terraform/storageaccounts.rego)
- severity: Medium

tags
| Title      | Description                             |
|:-----------|:----------------------------------------|
| cloud      | git                                     |
| compliance | ['CIS', 'HIPAA', 'NIST 800', 'PCI-DSS'] |
| service    | ['terraform']                           |
----------------------------------------------------------------


### Test ID - PR-AZR-TRF-STR-017
Title: Ensure Storage Account naming rules are correct\
Test Result: **passed**\
Description : Storage account names must be between 3 and 24 characters in length and may contain numbers and lowercase letters only.\

#### Test Details
- eval: data.rule.storage_correct_naming_convention
- id : PR-AZR-TRF-STR-017

#### Snapshots
| Title         | Description                                                                                                                                                                                                                                                                     |
|:--------------|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| id            | TRF_TEMPLATE_SNAPSHOT97                                                                                                                                                                                                                                                         |
| structure     | filesystem                                                                                                                                                                                                                                                                      |
| reference     | main                                                                                                                                                                                                                                                                            |
| source        | gitConnectorAzureTerraHashicorp                                                                                                                                                                                                                                                 |
| collection    | terraformtemplate                                                                                                                                                                                                                                                               |
| type          | terraform                                                                                                                                                                                                                                                                       |
| region        |                                                                                                                                                                                                                                                                                 |
| resourceTypes | ['azurerm_storage_account', 'azurerm_subnet', 'azurerm_resource_group', 'azurerm_virtual_network']                                                                                                                                                                              |
| paths         | ['https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/service-fabric/windows-vmss-self-signed-certs/variables.tf', 'https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/service-fabric/windows-vmss-self-signed-certs/0-base.tf'] |

- masterTestId: TEST_STORAGE_ACCOUNT_11
- masterSnapshotId: ['TRF_TEMPLATE_SNAPSHOT']
- type: rego
- rule: file(https://github.com/prancer-io/prancer-compliance-test/tree/master/azure/terraform/storageaccounts.rego)
- severity: Medium

tags
| Title      | Description                             |
|:-----------|:----------------------------------------|
| cloud      | git                                     |
| compliance | ['CIS', 'HIPAA', 'NIST 800', 'PCI-DSS'] |
| service    | ['terraform']                           |
----------------------------------------------------------------


### Test ID - PR-AZR-TRF-STR-017
Title: Ensure Storage Account naming rules are correct\
Test Result: **passed**\
Description : Storage account names must be between 3 and 24 characters in length and may contain numbers and lowercase letters only.\

#### Test Details
- eval: data.rule.storage_correct_naming_convention
- id : PR-AZR-TRF-STR-017

#### Snapshots
| Title         | Description                                                                                                                                                                                                                       |
|:--------------|:----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| id            | TRF_TEMPLATE_SNAPSHOT107                                                                                                                                                                                                          |
| structure     | filesystem                                                                                                                                                                                                                        |
| reference     | main                                                                                                                                                                                                                              |
| source        | gitConnectorAzureTerraHashicorp                                                                                                                                                                                                   |
| collection    | terraformtemplate                                                                                                                                                                                                                 |
| type          | terraform                                                                                                                                                                                                                         |
| region        |                                                                                                                                                                                                                                   |
| resourceTypes | ['azurerm_storage_account', 'azurerm_resource_group']                                                                                                                                                                             |
| paths         | ['https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/storage/storage-account/variables.tf', 'https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/storage/storage-account/main.tf'] |

- masterTestId: TEST_STORAGE_ACCOUNT_11
- masterSnapshotId: ['TRF_TEMPLATE_SNAPSHOT']
- type: rego
- rule: file(https://github.com/prancer-io/prancer-compliance-test/tree/master/azure/terraform/storageaccounts.rego)
- severity: Medium

tags
| Title      | Description                             |
|:-----------|:----------------------------------------|
| cloud      | git                                     |
| compliance | ['CIS', 'HIPAA', 'NIST 800', 'PCI-DSS'] |
| service    | ['terraform']                           |
----------------------------------------------------------------


### Test ID - PR-AZR-TRF-STR-017
Title: Ensure Storage Account naming rules are correct\
Test Result: **passed**\
Description : Storage account names must be between 3 and 24 characters in length and may contain numbers and lowercase letters only.\

#### Test Details
- eval: data.rule.storage_correct_naming_convention
- id : PR-AZR-TRF-STR-017

#### Snapshots
| Title         | Description                                                                                                                                                                                                                           |
|:--------------|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| id            | TRF_TEMPLATE_SNAPSHOT108                                                                                                                                                                                                              |
| structure     | filesystem                                                                                                                                                                                                                            |
| reference     | main                                                                                                                                                                                                                                  |
| source        | gitConnectorAzureTerraHashicorp                                                                                                                                                                                                       |
| collection    | terraformtemplate                                                                                                                                                                                                                     |
| type          | terraform                                                                                                                                                                                                                             |
| region        |                                                                                                                                                                                                                                       |
| resourceTypes | ['azurerm_storage_account', 'azurerm_storage_container', 'azurerm_resource_group']                                                                                                                                                    |
| paths         | ['https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/storage/storage-container/variables.tf', 'https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/storage/storage-container/main.tf'] |

- masterTestId: TEST_STORAGE_ACCOUNT_11
- masterSnapshotId: ['TRF_TEMPLATE_SNAPSHOT']
- type: rego
- rule: file(https://github.com/prancer-io/prancer-compliance-test/tree/master/azure/terraform/storageaccounts.rego)
- severity: Medium

tags
| Title      | Description                             |
|:-----------|:----------------------------------------|
| cloud      | git                                     |
| compliance | ['CIS', 'HIPAA', 'NIST 800', 'PCI-DSS'] |
| service    | ['terraform']                           |
----------------------------------------------------------------


### Test ID - PR-AZR-TRF-STR-017
Title: Ensure Storage Account naming rules are correct\
Test Result: **passed**\
Description : Storage account names must be between 3 and 24 characters in length and may contain numbers and lowercase letters only.\

#### Test Details
- eval: data.rule.storage_correct_naming_convention
- id : PR-AZR-TRF-STR-017

#### Snapshots
| Title         | Description                                                                                                                                                                                                                   |
|:--------------|:------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| id            | TRF_TEMPLATE_SNAPSHOT109                                                                                                                                                                                                      |
| structure     | filesystem                                                                                                                                                                                                                    |
| reference     | main                                                                                                                                                                                                                          |
| source        | gitConnectorAzureTerraHashicorp                                                                                                                                                                                               |
| collection    | terraformtemplate                                                                                                                                                                                                             |
| type          | terraform                                                                                                                                                                                                                     |
| region        |                                                                                                                                                                                                                               |
| resourceTypes | ['azurerm_storage_account', 'azurerm_storage_share', 'azurerm_resource_group']                                                                                                                                                |
| paths         | ['https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/storage/storage-share/variables.tf', 'https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/storage/storage-share/main.tf'] |

- masterTestId: TEST_STORAGE_ACCOUNT_11
- masterSnapshotId: ['TRF_TEMPLATE_SNAPSHOT']
- type: rego
- rule: file(https://github.com/prancer-io/prancer-compliance-test/tree/master/azure/terraform/storageaccounts.rego)
- severity: Medium

tags
| Title      | Description                             |
|:-----------|:----------------------------------------|
| cloud      | git                                     |
| compliance | ['CIS', 'HIPAA', 'NIST 800', 'PCI-DSS'] |
| service    | ['terraform']                           |
----------------------------------------------------------------


### Test ID - PR-AZR-TRF-STR-017
Title: Ensure Storage Account naming rules are correct\
Test Result: **passed**\
Description : Storage account names must be between 3 and 24 characters in length and may contain numbers and lowercase letters only.\

#### Test Details
- eval: data.rule.storage_correct_naming_convention
- id : PR-AZR-TRF-STR-017

#### Snapshots
| Title         | Description                                                                                                                                                                                                                           |
|:--------------|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| id            | TRF_TEMPLATE_SNAPSHOT110                                                                                                                                                                                                              |
| structure     | filesystem                                                                                                                                                                                                                            |
| reference     | main                                                                                                                                                                                                                                  |
| source        | gitConnectorAzureTerraHashicorp                                                                                                                                                                                                       |
| collection    | terraformtemplate                                                                                                                                                                                                                     |
| type          | terraform                                                                                                                                                                                                                             |
| region        |                                                                                                                                                                                                                                       |
| resourceTypes | ['azurerm_storage_account', 'azurerm_storage_data_lake_gen2_path', 'azurerm_storage_data_lake_gen2_filesystem', 'azurerm_resource_group', 'azurerm_role_assignment', 'azurerm_user_assigned_identity']                                |
| paths         | ['https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/storage/storage_adls_acls/variables.tf', 'https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/storage/storage_adls_acls/main.tf'] |

- masterTestId: TEST_STORAGE_ACCOUNT_11
- masterSnapshotId: ['TRF_TEMPLATE_SNAPSHOT']
- type: rego
- rule: file(https://github.com/prancer-io/prancer-compliance-test/tree/master/azure/terraform/storageaccounts.rego)
- severity: Medium

tags
| Title      | Description                             |
|:-----------|:----------------------------------------|
| cloud      | git                                     |
| compliance | ['CIS', 'HIPAA', 'NIST 800', 'PCI-DSS'] |
| service    | ['terraform']                           |
----------------------------------------------------------------


### Test ID - PR-AZR-TRF-STR-017
Title: Ensure Storage Account naming rules are correct\
Test Result: **passed**\
Description : Storage account names must be between 3 and 24 characters in length and may contain numbers and lowercase letters only.\

#### Test Details
- eval: data.rule.storage_correct_naming_convention
- id : PR-AZR-TRF-STR-017

#### Snapshots
| Title         | Description                                                                                                                                                                                                         |
|:--------------|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| id            | TRF_TEMPLATE_SNAPSHOT111                                                                                                                                                                                            |
| structure     | filesystem                                                                                                                                                                                                          |
| reference     | main                                                                                                                                                                                                                |
| source        | gitConnectorAzureTerraHashicorp                                                                                                                                                                                     |
| collection    | terraformtemplate                                                                                                                                                                                                   |
| type          | terraform                                                                                                                                                                                                           |
| region        |                                                                                                                                                                                                                     |
| resourceTypes | ['azurerm_storage_container', 'azurerm_storage_account', 'azurerm_stream_analytics_job', 'azurerm_resource_group', 'azurerm_stream_analytics_reference_input_blob']                                                 |
| paths         | ['https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/stream-analytics/variables.tf', 'https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/stream-analytics/main.tf'] |

- masterTestId: TEST_STORAGE_ACCOUNT_11
- masterSnapshotId: ['TRF_TEMPLATE_SNAPSHOT']
- type: rego
- rule: file(https://github.com/prancer-io/prancer-compliance-test/tree/master/azure/terraform/storageaccounts.rego)
- severity: Medium

tags
| Title      | Description                             |
|:-----------|:----------------------------------------|
| cloud      | git                                     |
| compliance | ['CIS', 'HIPAA', 'NIST 800', 'PCI-DSS'] |
| service    | ['terraform']                           |
----------------------------------------------------------------


### Test ID - PR-AZR-TRF-STR-017
Title: Ensure Storage Account naming rules are correct\
Test Result: **passed**\
Description : Storage account names must be between 3 and 24 characters in length and may contain numbers and lowercase letters only.\

#### Test Details
- eval: data.rule.storage_correct_naming_convention
- id : PR-AZR-TRF-STR-017

#### Snapshots
| Title         | Description                                                                                                                                                                                                                                                                                                                                                                                                                                                    |
|:--------------|:---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| id            | TRF_TEMPLATE_SNAPSHOT123                                                                                                                                                                                                                                                                                                                                                                                                                                       |
| structure     | filesystem                                                                                                                                                                                                                                                                                                                                                                                                                                                     |
| reference     | main                                                                                                                                                                                                                                                                                                                                                                                                                                                           |
| source        | gitConnectorAzureTerraHashicorp                                                                                                                                                                                                                                                                                                                                                                                                                                |
| collection    | terraformtemplate                                                                                                                                                                                                                                                                                                                                                                                                                                              |
| type          | terraform                                                                                                                                                                                                                                                                                                                                                                                                                                                      |
| region        |                                                                                                                                                                                                                                                                                                                                                                                                                                                                |
| resourceTypes | ['azurerm_availability_set', 'azurerm_storage_account', 'azurerm_lb_backend_address_pool', 'azurerm_lb', 'azurerm_network_interface_nat_rule_association', 'azurerm_lb_rule', 'azurerm_subnet', 'azurerm_lb_nat_rule', 'azurerm_resource_group', 'azurerm_virtual_machine', 'azurerm_network_interface', 'azurerm_lb_probe', 'azurerm_virtual_network', 'azurerm_public_ip']                                                                                   |
| paths         | ['https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/virtual-machines/virtual_machine/2-vms-loadbalancer-lbrules/outputs.tf', 'https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/virtual-machines/virtual_machine/2-vms-loadbalancer-lbrules/variables.tf', 'https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/virtual-machines/virtual_machine/2-vms-loadbalancer-lbrules/main.tf'] |

- masterTestId: TEST_STORAGE_ACCOUNT_11
- masterSnapshotId: ['TRF_TEMPLATE_SNAPSHOT']
- type: rego
- rule: file(https://github.com/prancer-io/prancer-compliance-test/tree/master/azure/terraform/storageaccounts.rego)
- severity: Medium

tags
| Title      | Description                             |
|:-----------|:----------------------------------------|
| cloud      | git                                     |
| compliance | ['CIS', 'HIPAA', 'NIST 800', 'PCI-DSS'] |
| service    | ['terraform']                           |
----------------------------------------------------------------


### Test ID - PR-AZR-TRF-STR-017
Title: Ensure Storage Account naming rules are correct\
Test Result: **passed**\
Description : Storage account names must be between 3 and 24 characters in length and may contain numbers and lowercase letters only.\

#### Test Details
- eval: data.rule.storage_correct_naming_convention
- id : PR-AZR-TRF-STR-017

#### Snapshots
| Title         | Description                                                                                                                                                                                                                                                                                                                                                                                                                                              |
|:--------------|:---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| id            | TRF_TEMPLATE_SNAPSHOT127                                                                                                                                                                                                                                                                                                                                                                                                                                 |
| structure     | filesystem                                                                                                                                                                                                                                                                                                                                                                                                                                               |
| reference     | main                                                                                                                                                                                                                                                                                                                                                                                                                                                     |
| source        | gitConnectorAzureTerraHashicorp                                                                                                                                                                                                                                                                                                                                                                                                                          |
| collection    | terraformtemplate                                                                                                                                                                                                                                                                                                                                                                                                                                        |
| type          | terraform                                                                                                                                                                                                                                                                                                                                                                                                                                                |
| region        |                                                                                                                                                                                                                                                                                                                                                                                                                                                          |
| resourceTypes | ['azurerm_storage_account', 'azurerm_template_deployment', 'azurerm_subnet', 'azurerm_resource_group', 'azurerm_virtual_machine', 'azurerm_network_interface', 'azurerm_virtual_network']                                                                                                                                                                                                                                                                |
| paths         | ['https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/virtual-machines/virtual_machine/encrypt-running-linux-vm/outputs.tf', 'https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/virtual-machines/virtual_machine/encrypt-running-linux-vm/variables.tf', 'https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/virtual-machines/virtual_machine/encrypt-running-linux-vm/main.tf'] |

- masterTestId: TEST_STORAGE_ACCOUNT_11
- masterSnapshotId: ['TRF_TEMPLATE_SNAPSHOT']
- type: rego
- rule: file(https://github.com/prancer-io/prancer-compliance-test/tree/master/azure/terraform/storageaccounts.rego)
- severity: Medium

tags
| Title      | Description                             |
|:-----------|:----------------------------------------|
| cloud      | git                                     |
| compliance | ['CIS', 'HIPAA', 'NIST 800', 'PCI-DSS'] |
| service    | ['terraform']                           |
----------------------------------------------------------------


### Test ID - PR-AZR-TRF-STR-017
Title: Ensure Storage Account naming rules are correct\
Test Result: **passed**\
Description : Storage account names must be between 3 and 24 characters in length and may contain numbers and lowercase letters only.\

#### Test Details
- eval: data.rule.storage_correct_naming_convention
- id : PR-AZR-TRF-STR-017

#### Snapshots
| Title         | Description                                                                                                                                                                                                                                                                                                                                                                                                                      |
|:--------------|:---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| id            | TRF_TEMPLATE_SNAPSHOT139                                                                                                                                                                                                                                                                                                                                                                                                         |
| structure     | filesystem                                                                                                                                                                                                                                                                                                                                                                                                                       |
| reference     | main                                                                                                                                                                                                                                                                                                                                                                                                                             |
| source        | gitConnectorAzureTerraHashicorp                                                                                                                                                                                                                                                                                                                                                                                                  |
| collection    | terraformtemplate                                                                                                                                                                                                                                                                                                                                                                                                                |
| type          | terraform                                                                                                                                                                                                                                                                                                                                                                                                                        |
| region        |                                                                                                                                                                                                                                                                                                                                                                                                                                  |
| resourceTypes | ['azurerm_availability_set', 'azurerm_network_security_group', 'azurerm_storage_account', 'azurerm_lb_backend_address_pool', 'azurerm_lb', 'azurerm_lb_rule', 'azurerm_subnet', 'azurerm_lb_nat_rule', 'azurerm_resource_group', 'azurerm_virtual_machine', 'azurerm_network_interface', 'azurerm_lb_probe', 'azurerm_virtual_network', 'azurerm_public_ip']                                                                     |
| paths         | ['https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/virtual-machines/virtual_machine/openshift-origin/outputs.tf', 'https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/virtual-machines/virtual_machine/openshift-origin/variables.tf', 'https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/virtual-machines/virtual_machine/openshift-origin/main.tf'] |

- masterTestId: TEST_STORAGE_ACCOUNT_11
- masterSnapshotId: ['TRF_TEMPLATE_SNAPSHOT']
- type: rego
- rule: file(https://github.com/prancer-io/prancer-compliance-test/tree/master/azure/terraform/storageaccounts.rego)
- severity: Medium

tags
| Title      | Description                             |
|:-----------|:----------------------------------------|
| cloud      | git                                     |
| compliance | ['CIS', 'HIPAA', 'NIST 800', 'PCI-DSS'] |
| service    | ['terraform']                           |
----------------------------------------------------------------


### Test ID - PR-AZR-TRF-STR-017
Title: Ensure Storage Account naming rules are correct\
Test Result: **passed**\
Description : Storage account names must be between 3 and 24 characters in length and may contain numbers and lowercase letters only.\

#### Test Details
- eval: data.rule.storage_correct_naming_convention
- id : PR-AZR-TRF-STR-017

#### Snapshots
| Title         | Description                                                                                                                                                                                                                                                                                                                                                                                                                                                             |
|:--------------|:------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| id            | TRF_TEMPLATE_SNAPSHOT145                                                                                                                                                                                                                                                                                                                                                                                                                                                |
| structure     | filesystem                                                                                                                                                                                                                                                                                                                                                                                                                                                              |
| reference     | main                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |
| source        | gitConnectorAzureTerraHashicorp                                                                                                                                                                                                                                                                                                                                                                                                                                         |
| collection    | terraformtemplate                                                                                                                                                                                                                                                                                                                                                                                                                                                       |
| type          | terraform                                                                                                                                                                                                                                                                                                                                                                                                                                                               |
| region        |                                                                                                                                                                                                                                                                                                                                                                                                                                                                         |
| resourceTypes | ['azurerm_availability_set', 'azurerm_storage_container', 'azurerm_network_security_group', 'azurerm_storage_account', 'azurerm_subnet', 'azurerm_resource_group', 'azurerm_virtual_machine', 'azurerm_network_interface', 'azurerm_virtual_network', 'azurerm_public_ip']                                                                                                                                                                                              |
| paths         | ['https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/virtual-machines/virtual_machine/spark-and-cassandra-on-centos/outputs.tf', 'https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/virtual-machines/virtual_machine/spark-and-cassandra-on-centos/variables.tf', 'https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/virtual-machines/virtual_machine/spark-and-cassandra-on-centos/main.tf'] |

- masterTestId: TEST_STORAGE_ACCOUNT_11
- masterSnapshotId: ['TRF_TEMPLATE_SNAPSHOT']
- type: rego
- rule: file(https://github.com/prancer-io/prancer-compliance-test/tree/master/azure/terraform/storageaccounts.rego)
- severity: Medium

tags
| Title      | Description                             |
|:-----------|:----------------------------------------|
| cloud      | git                                     |
| compliance | ['CIS', 'HIPAA', 'NIST 800', 'PCI-DSS'] |
| service    | ['terraform']                           |
----------------------------------------------------------------


### Test ID - PR-AZR-TRF-STR-017
Title: Ensure Storage Account naming rules are correct\
Test Result: **passed**\
Description : Storage account names must be between 3 and 24 characters in length and may contain numbers and lowercase letters only.\

#### Test Details
- eval: data.rule.storage_correct_naming_convention
- id : PR-AZR-TRF-STR-017

#### Snapshots
| Title         | Description                                                                                                                                                                                                                                                                                               |
|:--------------|:----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| id            | TRF_TEMPLATE_SNAPSHOT146                                                                                                                                                                                                                                                                                  |
| structure     | filesystem                                                                                                                                                                                                                                                                                                |
| reference     | main                                                                                                                                                                                                                                                                                                      |
| source        | gitConnectorAzureTerraHashicorp                                                                                                                                                                                                                                                                           |
| collection    | terraformtemplate                                                                                                                                                                                                                                                                                         |
| type          | terraform                                                                                                                                                                                                                                                                                                 |
| region        |                                                                                                                                                                                                                                                                                                           |
| resourceTypes | ['azurerm_storage_container', 'azurerm_storage_account', 'azurerm_subnet', 'azurerm_resource_group', 'azurerm_network_interface', 'azurerm_virtual_network']                                                                                                                                              |
| paths         | ['https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/virtual-machines/virtual_machine/unmanaged-disks/basic/variables.tf', 'https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/virtual-machines/virtual_machine/unmanaged-disks/basic/1-dependencies.tf'] |

- masterTestId: TEST_STORAGE_ACCOUNT_11
- masterSnapshotId: ['TRF_TEMPLATE_SNAPSHOT']
- type: rego
- rule: file(https://github.com/prancer-io/prancer-compliance-test/tree/master/azure/terraform/storageaccounts.rego)
- severity: Medium

tags
| Title      | Description                             |
|:-----------|:----------------------------------------|
| cloud      | git                                     |
| compliance | ['CIS', 'HIPAA', 'NIST 800', 'PCI-DSS'] |
| service    | ['terraform']                           |
----------------------------------------------------------------


### Test ID - 
Title: Ensure Storage Account naming rules are correct\
Test Result: **failed**\
Description : Storage account names must be between 3 and 24 characters in length and may contain numbers and lowercase letters only.\

#### Test Details
- eval: [{'id': 'PR-AZR-TRF-STR-017', 'eval': 'data.rule.storage_correct_naming_convention', 'message': 'data.rule.storage_correct_naming_convention_err', 'remediationDescription': "In 'azurerm_storage_account' resource, property 'name' must be between 3 and 24 characters in length and may contain numbers and lowercase letters only to fix the issue. Visit <a href='https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/storage_account#name' target='_blank'>here</a> for details.", 'remediationFunction': 'PR_AZR_TRF_STR_017.py'}]
- id : 

#### Snapshots
[]

- masterTestId: TEST_STORAGE_ACCOUNT_11
- masterSnapshotId: ['TRF_TEMPLATE_SNAPSHOT']
- type: rego
- rule: file(https://github.com/prancer-io/prancer-compliance-test/tree/master/azure/terraform/storageaccounts.rego)
- severity: Medium

tags
| Title      | Description                             |
|:-----------|:----------------------------------------|
| cloud      | git                                     |
| compliance | ['CIS', 'HIPAA', 'NIST 800', 'PCI-DSS'] |
| service    | ['terraform']                           |
----------------------------------------------------------------


### Test ID - PR-AZR-TRF-STR-017
Title: Ensure Storage Account naming rules are correct\
Test Result: **passed**\
Description : Storage account names must be between 3 and 24 characters in length and may contain numbers and lowercase letters only.\

#### Test Details
- eval: data.rule.storage_correct_naming_convention
- id : PR-AZR-TRF-STR-017

#### Snapshots
| Title         | Description                                                                                                                                                                                                                                                          |
|:--------------|:---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| id            | TRF_TEMPLATE_SNAPSHOT154                                                                                                                                                                                                                                             |
| structure     | filesystem                                                                                                                                                                                                                                                           |
| reference     | main                                                                                                                                                                                                                                                                 |
| source        | gitConnectorAzureTerraHashicorp                                                                                                                                                                                                                                      |
| collection    | terraformtemplate                                                                                                                                                                                                                                                    |
| type          | terraform                                                                                                                                                                                                                                                            |
| region        |                                                                                                                                                                                                                                                                      |
| resourceTypes | ['azurerm_storage_account', 'azurerm_subnet', 'azurerm_resource_group', 'azurerm_windows_virtual_machine', 'azurerm_role_assignment', 'azurerm_network_interface', 'azurerm_virtual_network']                                                                        |
| paths         | ['https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/virtual-machines/windows/vm-role-assignment/vars.tf', 'https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/virtual-machines/windows/vm-role-assignment/main.tf'] |

- masterTestId: TEST_STORAGE_ACCOUNT_11
- masterSnapshotId: ['TRF_TEMPLATE_SNAPSHOT']
- type: rego
- rule: file(https://github.com/prancer-io/prancer-compliance-test/tree/master/azure/terraform/storageaccounts.rego)
- severity: Medium

tags
| Title      | Description                             |
|:-----------|:----------------------------------------|
| cloud      | git                                     |
| compliance | ['CIS', 'HIPAA', 'NIST 800', 'PCI-DSS'] |
| service    | ['terraform']                           |
----------------------------------------------------------------


### Test ID - PR-AZR-TRF-STR-017
Title: Ensure Storage Account naming rules are correct\
Test Result: **passed**\
Description : Storage account names must be between 3 and 24 characters in length and may contain numbers and lowercase letters only.\

#### Test Details
- eval: data.rule.storage_correct_naming_convention
- id : PR-AZR-TRF-STR-017

#### Snapshots
| Title         | Description                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |
|:--------------|:----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| id            | TRF_TEMPLATE_SNAPSHOT155                                                                                                                                                                                                                                                                                                                                                                                                                                                    |
| structure     | filesystem                                                                                                                                                                                                                                                                                                                                                                                                                                                                  |
| reference     | main                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |
| source        | gitConnectorAzureTerraHashicorp                                                                                                                                                                                                                                                                                                                                                                                                                                             |
| collection    | terraformtemplate                                                                                                                                                                                                                                                                                                                                                                                                                                                           |
| type          | terraform                                                                                                                                                                                                                                                                                                                                                                                                                                                                   |
| region        |                                                                                                                                                                                                                                                                                                                                                                                                                                                                             |
| resourceTypes | ['azurerm_subnet_route_table_association', 'azurerm_firewall_application_rule_collection', 'azurerm_firewall_network_rule_collection', 'azurerm_route_table', 'azurerm_network_security_group', 'azurerm_storage_account', 'azurerm_subnet', 'azurerm_resource_group', 'azurerm_network_interface_security_group_association', 'azurerm_virtual_machine', 'azurerm_network_interface', 'azurerm_firewall', 'random_string', 'azurerm_virtual_network', 'azurerm_public_ip'] |
| paths         | ['https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/virtual-networks/azure-firewall/variables.tf', 'https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/virtual-networks/azure-firewall/main.tf']                                                                                                                                                                                                                           |

- masterTestId: TEST_STORAGE_ACCOUNT_11
- masterSnapshotId: ['TRF_TEMPLATE_SNAPSHOT']
- type: rego
- rule: file(https://github.com/prancer-io/prancer-compliance-test/tree/master/azure/terraform/storageaccounts.rego)
- severity: Medium

tags
| Title      | Description                             |
|:-----------|:----------------------------------------|
| cloud      | git                                     |
| compliance | ['CIS', 'HIPAA', 'NIST 800', 'PCI-DSS'] |
| service    | ['terraform']                           |
----------------------------------------------------------------


### Test ID - PR-AZR-TRF-STR-017
Title: Ensure Storage Account naming rules are correct\
Test Result: **passed**\
Description : Storage account names must be between 3 and 24 characters in length and may contain numbers and lowercase letters only.\

#### Test Details
- eval: data.rule.storage_correct_naming_convention
- id : PR-AZR-TRF-STR-017

#### Snapshots
| Title         | Description                                                                                                                                                                                                                                               |
|:--------------|:----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| id            | TRF_TEMPLATE_SNAPSHOT169                                                                                                                                                                                                                                  |
| structure     | filesystem                                                                                                                                                                                                                                                |
| reference     | main                                                                                                                                                                                                                                                      |
| source        | gitConnectorAzureTerraHashicorp                                                                                                                                                                                                                           |
| collection    | terraformtemplate                                                                                                                                                                                                                                         |
| type          | terraform                                                                                                                                                                                                                                                 |
| region        |                                                                                                                                                                                                                                                           |
| resourceTypes | ['azurerm_linux_virtual_machine_scale_set', 'azurerm_storage_account', 'azurerm_subnet', 'azurerm_resource_group', 'azurerm_virtual_network']                                                                                                             |
| paths         | ['https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/vm-scale-set/linux/boot-diagnostics/variables.tf', 'https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/vm-scale-set/linux/boot-diagnostics/main.tf'] |

- masterTestId: TEST_STORAGE_ACCOUNT_11
- masterSnapshotId: ['TRF_TEMPLATE_SNAPSHOT']
- type: rego
- rule: file(https://github.com/prancer-io/prancer-compliance-test/tree/master/azure/terraform/storageaccounts.rego)
- severity: Medium

tags
| Title      | Description                             |
|:-----------|:----------------------------------------|
| cloud      | git                                     |
| compliance | ['CIS', 'HIPAA', 'NIST 800', 'PCI-DSS'] |
| service    | ['terraform']                           |
----------------------------------------------------------------


### Test ID - PR-AZR-TRF-STR-017
Title: Ensure Storage Account naming rules are correct\
Test Result: **passed**\
Description : Storage account names must be between 3 and 24 characters in length and may contain numbers and lowercase letters only.\

#### Test Details
- eval: data.rule.storage_correct_naming_convention
- id : PR-AZR-TRF-STR-017

#### Snapshots
| Title         | Description                                                                                                                                                                                                                                                   |
|:--------------|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| id            | TRF_TEMPLATE_SNAPSHOT190                                                                                                                                                                                                                                      |
| structure     | filesystem                                                                                                                                                                                                                                                    |
| reference     | main                                                                                                                                                                                                                                                          |
| source        | gitConnectorAzureTerraHashicorp                                                                                                                                                                                                                               |
| collection    | terraformtemplate                                                                                                                                                                                                                                             |
| type          | terraform                                                                                                                                                                                                                                                     |
| region        |                                                                                                                                                                                                                                                               |
| resourceTypes | ['azurerm_storage_account', 'azurerm_subnet', 'azurerm_resource_group', 'azurerm_virtual_network', 'azurerm_windows_virtual_machine_scale_set']                                                                                                               |
| paths         | ['https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/vm-scale-set/windows/boot-diagnostics/variables.tf', 'https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/vm-scale-set/windows/boot-diagnostics/main.tf'] |

- masterTestId: TEST_STORAGE_ACCOUNT_11
- masterSnapshotId: ['TRF_TEMPLATE_SNAPSHOT']
- type: rego
- rule: file(https://github.com/prancer-io/prancer-compliance-test/tree/master/azure/terraform/storageaccounts.rego)
- severity: Medium

tags
| Title      | Description                             |
|:-----------|:----------------------------------------|
| cloud      | git                                     |
| compliance | ['CIS', 'HIPAA', 'NIST 800', 'PCI-DSS'] |
| service    | ['terraform']                           |
----------------------------------------------------------------


### Test ID - PR-AZR-TRF-STR-018
Title: Ensure Azure Storage Account has latest version of tls configured\
Test Result: **failed**\
Description : This policy will identify the Azure Storage Account which dont have latest version of tls configured and give alert\

#### Test Details
- eval: data.rule.storage_account_latest_tls_configured
- id : PR-AZR-TRF-STR-018

#### Snapshots
| Title         | Description                                                                                                                                                                                                                                                                                                                        |
|:--------------|:-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| id            | TRF_TEMPLATE_SNAPSHOT2                                                                                                                                                                                                                                                                                                             |
| structure     | filesystem                                                                                                                                                                                                                                                                                                                         |
| reference     | main                                                                                                                                                                                                                                                                                                                               |
| source        | gitConnectorAzureTerraHashicorp                                                                                                                                                                                                                                                                                                    |
| collection    | terraformtemplate                                                                                                                                                                                                                                                                                                                  |
| type          | terraform                                                                                                                                                                                                                                                                                                                          |
| region        |                                                                                                                                                                                                                                                                                                                                    |
| resourceTypes | ['azurerm_storage_container', 'azurerm_storage_account', 'azurerm_resource_group', 'azurerm_app_service_plan', 'azurerm_app_service']                                                                                                                                                                                              |
| paths         | ['https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/app-service/backup/output.tf', 'https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/app-service/backup/variables.tf', 'https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/app-service/backup/main.tf'] |

- masterTestId: TEST_STORAGE_ACCOUNT_12
- masterSnapshotId: ['TRF_TEMPLATE_SNAPSHOT']
- type: rego
- rule: file(https://github.com/prancer-io/prancer-compliance-test/tree/master/azure/terraform/storageaccounts.rego)
- severity: High

tags
| Title      | Description                             |
|:-----------|:----------------------------------------|
| cloud      | git                                     |
| compliance | ['CIS', 'HIPAA', 'NIST 800', 'PCI-DSS'] |
| service    | ['terraform']                           |
----------------------------------------------------------------


### Test ID - PR-AZR-TRF-STR-018
Title: Ensure Azure Storage Account has latest version of tls configured\
Test Result: **failed**\
Description : This policy will identify the Azure Storage Account which dont have latest version of tls configured and give alert\

#### Test Details
- eval: data.rule.storage_account_latest_tls_configured
- id : PR-AZR-TRF-STR-018

#### Snapshots
| Title         | Description                                                                                                                                                                                                                                                                                                                                                                                                                |
|:--------------|:---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| id            | TRF_TEMPLATE_SNAPSHOT7                                                                                                                                                                                                                                                                                                                                                                                                     |
| structure     | filesystem                                                                                                                                                                                                                                                                                                                                                                                                                 |
| reference     | main                                                                                                                                                                                                                                                                                                                                                                                                                       |
| source        | gitConnectorAzureTerraHashicorp                                                                                                                                                                                                                                                                                                                                                                                            |
| collection    | terraformtemplate                                                                                                                                                                                                                                                                                                                                                                                                          |
| type          | terraform                                                                                                                                                                                                                                                                                                                                                                                                                  |
| region        |                                                                                                                                                                                                                                                                                                                                                                                                                            |
| resourceTypes | ['azurerm_storage_account', 'azurerm_function_app', 'azurerm_resource_group', 'azurerm_role_assignment', 'azurerm_app_service_plan', 'azurerm_application_insights']                                                                                                                                                                                                                                                       |
| paths         | ['https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/app-service/function-azure-RBAC-role-assignment/outputs.tf', 'https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/app-service/function-azure-RBAC-role-assignment/variables.tf', 'https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/app-service/function-azure-RBAC-role-assignment/main.tf'] |

- masterTestId: TEST_STORAGE_ACCOUNT_12
- masterSnapshotId: ['TRF_TEMPLATE_SNAPSHOT']
- type: rego
- rule: file(https://github.com/prancer-io/prancer-compliance-test/tree/master/azure/terraform/storageaccounts.rego)
- severity: High

tags
| Title      | Description                             |
|:-----------|:----------------------------------------|
| cloud      | git                                     |
| compliance | ['CIS', 'HIPAA', 'NIST 800', 'PCI-DSS'] |
| service    | ['terraform']                           |
----------------------------------------------------------------


### Test ID - PR-AZR-TRF-STR-018
Title: Ensure Azure Storage Account has latest version of tls configured\
Test Result: **failed**\
Description : This policy will identify the Azure Storage Account which dont have latest version of tls configured and give alert\

#### Test Details
- eval: data.rule.storage_account_latest_tls_configured
- id : PR-AZR-TRF-STR-018

#### Snapshots
| Title         | Description                                                                                                                                                                                                                                                                                                                                                 |
|:--------------|:------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| id            | TRF_TEMPLATE_SNAPSHOT8                                                                                                                                                                                                                                                                                                                                      |
| structure     | filesystem                                                                                                                                                                                                                                                                                                                                                  |
| reference     | main                                                                                                                                                                                                                                                                                                                                                        |
| source        | gitConnectorAzureTerraHashicorp                                                                                                                                                                                                                                                                                                                             |
| collection    | terraformtemplate                                                                                                                                                                                                                                                                                                                                           |
| type          | terraform                                                                                                                                                                                                                                                                                                                                                   |
| region        |                                                                                                                                                                                                                                                                                                                                                             |
| resourceTypes | ['azurerm_storage_account', 'azurerm_function_app', 'azurerm_resource_group', 'azurerm_app_service_plan', 'azurerm_application_insights']                                                                                                                                                                                                                   |
| paths         | ['https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/app-service/function-basic/outputs.tf', 'https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/app-service/function-basic/variables.tf', 'https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/app-service/function-basic/main.tf'] |

- masterTestId: TEST_STORAGE_ACCOUNT_12
- masterSnapshotId: ['TRF_TEMPLATE_SNAPSHOT']
- type: rego
- rule: file(https://github.com/prancer-io/prancer-compliance-test/tree/master/azure/terraform/storageaccounts.rego)
- severity: High

tags
| Title      | Description                             |
|:-----------|:----------------------------------------|
| cloud      | git                                     |
| compliance | ['CIS', 'HIPAA', 'NIST 800', 'PCI-DSS'] |
| service    | ['terraform']                           |
----------------------------------------------------------------


### Test ID - PR-AZR-TRF-STR-018
Title: Ensure Azure Storage Account has latest version of tls configured\
Test Result: **failed**\
Description : This policy will identify the Azure Storage Account which dont have latest version of tls configured and give alert\

#### Test Details
- eval: data.rule.storage_account_latest_tls_configured
- id : PR-AZR-TRF-STR-018

#### Snapshots
| Title         | Description                                                                                                                                                                                                                          |
|:--------------|:-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| id            | TRF_TEMPLATE_SNAPSHOT9                                                                                                                                                                                                               |
| structure     | filesystem                                                                                                                                                                                                                           |
| reference     | main                                                                                                                                                                                                                                 |
| source        | gitConnectorAzureTerraHashicorp                                                                                                                                                                                                      |
| collection    | terraformtemplate                                                                                                                                                                                                                    |
| type          | terraform                                                                                                                                                                                                                            |
| region        |                                                                                                                                                                                                                                      |
| resourceTypes | ['azurerm_storage_account', 'azurerm_function_app', 'azurerm_resource_group', 'azurerm_app_service_plan']                                                                                                                            |
| paths         | ['https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/app-service/function-python/vars.tf', 'https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/app-service/function-python/main.tf'] |

- masterTestId: TEST_STORAGE_ACCOUNT_12
- masterSnapshotId: ['TRF_TEMPLATE_SNAPSHOT']
- type: rego
- rule: file(https://github.com/prancer-io/prancer-compliance-test/tree/master/azure/terraform/storageaccounts.rego)
- severity: High

tags
| Title      | Description                             |
|:-----------|:----------------------------------------|
| cloud      | git                                     |
| compliance | ['CIS', 'HIPAA', 'NIST 800', 'PCI-DSS'] |
| service    | ['terraform']                           |
----------------------------------------------------------------


### Test ID - PR-AZR-TRF-STR-018
Title: Ensure Azure Storage Account has latest version of tls configured\
Test Result: **failed**\
Description : This policy will identify the Azure Storage Account which dont have latest version of tls configured and give alert\

#### Test Details
- eval: data.rule.storage_account_latest_tls_configured
- id : PR-AZR-TRF-STR-018

#### Snapshots
| Title         | Description                                                                                                                                                                                               |
|:--------------|:----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| id            | TRF_TEMPLATE_SNAPSHOT24                                                                                                                                                                                   |
| structure     | filesystem                                                                                                                                                                                                |
| reference     | main                                                                                                                                                                                                      |
| source        | gitConnectorAzureTerraHashicorp                                                                                                                                                                           |
| collection    | terraformtemplate                                                                                                                                                                                         |
| type          | terraform                                                                                                                                                                                                 |
| region        |                                                                                                                                                                                                           |
| resourceTypes | ['azurerm_storage_account', 'azurerm_batch_pool', 'azurerm_resource_group', 'azurerm_batch_account']                                                                                                      |
| paths         | ['https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/batch/basic/variables.tf', 'https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/batch/basic/main.tf'] |

- masterTestId: TEST_STORAGE_ACCOUNT_12
- masterSnapshotId: ['TRF_TEMPLATE_SNAPSHOT']
- type: rego
- rule: file(https://github.com/prancer-io/prancer-compliance-test/tree/master/azure/terraform/storageaccounts.rego)
- severity: High

tags
| Title      | Description                             |
|:-----------|:----------------------------------------|
| cloud      | git                                     |
| compliance | ['CIS', 'HIPAA', 'NIST 800', 'PCI-DSS'] |
| service    | ['terraform']                           |
----------------------------------------------------------------


### Test ID - PR-AZR-TRF-STR-018
Title: Ensure Azure Storage Account has latest version of tls configured\
Test Result: **failed**\
Description : This policy will identify the Azure Storage Account which dont have latest version of tls configured and give alert\

#### Test Details
- eval: data.rule.storage_account_latest_tls_configured
- id : PR-AZR-TRF-STR-018

#### Snapshots
| Title         | Description                                                                                                                                                                                                                                                                  |
|:--------------|:-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| id            | TRF_TEMPLATE_SNAPSHOT25                                                                                                                                                                                                                                                      |
| structure     | filesystem                                                                                                                                                                                                                                                                   |
| reference     | main                                                                                                                                                                                                                                                                         |
| source        | gitConnectorAzureTerraHashicorp                                                                                                                                                                                                                                              |
| collection    | terraformtemplate                                                                                                                                                                                                                                                            |
| type          | terraform                                                                                                                                                                                                                                                                    |
| region        |                                                                                                                                                                                                                                                                              |
| resourceTypes | ['azurerm_storage_container', 'azurerm_storage_account', 'azurerm_subnet', 'azurerm_batch_pool', 'azurerm_resource_group', 'azurerm_image', 'azurerm_virtual_machine', 'azurerm_network_interface', 'azurerm_batch_account', 'azurerm_virtual_network', 'azurerm_public_ip'] |
| paths         | ['https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/batch/custom-image/variables.tf', 'https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/batch/custom-image/main.tf']                                                      |

- masterTestId: TEST_STORAGE_ACCOUNT_12
- masterSnapshotId: ['TRF_TEMPLATE_SNAPSHOT']
- type: rego
- rule: file(https://github.com/prancer-io/prancer-compliance-test/tree/master/azure/terraform/storageaccounts.rego)
- severity: High

tags
| Title      | Description                             |
|:-----------|:----------------------------------------|
| cloud      | git                                     |
| compliance | ['CIS', 'HIPAA', 'NIST 800', 'PCI-DSS'] |
| service    | ['terraform']                           |
----------------------------------------------------------------


### Test ID - PR-AZR-TRF-STR-018
Title: Ensure Azure Storage Account has latest version of tls configured\
Test Result: **failed**\
Description : This policy will identify the Azure Storage Account which dont have latest version of tls configured and give alert\

#### Test Details
- eval: data.rule.storage_account_latest_tls_configured
- id : PR-AZR-TRF-STR-018

#### Snapshots
| Title         | Description                                                                                                                                                                                                                                                                            |
|:--------------|:---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| id            | TRF_TEMPLATE_SNAPSHOT27                                                                                                                                                                                                                                                                |
| structure     | filesystem                                                                                                                                                                                                                                                                             |
| reference     | main                                                                                                                                                                                                                                                                                   |
| source        | gitConnectorAzureTerraHashicorp                                                                                                                                                                                                                                                        |
| collection    | terraformtemplate                                                                                                                                                                                                                                                                      |
| type          | terraform                                                                                                                                                                                                                                                                              |
| region        |                                                                                                                                                                                                                                                                                        |
| resourceTypes | ['azurerm_storage_account', 'azurerm_cdn_profile', 'azurerm_cdn_endpoint', 'azurerm_resource_group']                                                                                                                                                                                   |
| paths         | ['https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/cdn/outputs.tf', 'https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/cdn/variables.tf', 'https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/cdn/main.tf'] |

- masterTestId: TEST_STORAGE_ACCOUNT_12
- masterSnapshotId: ['TRF_TEMPLATE_SNAPSHOT']
- type: rego
- rule: file(https://github.com/prancer-io/prancer-compliance-test/tree/master/azure/terraform/storageaccounts.rego)
- severity: High

tags
| Title      | Description                             |
|:-----------|:----------------------------------------|
| cloud      | git                                     |
| compliance | ['CIS', 'HIPAA', 'NIST 800', 'PCI-DSS'] |
| service    | ['terraform']                           |
----------------------------------------------------------------


### Test ID - PR-AZR-TRF-STR-018
Title: Ensure Azure Storage Account has latest version of tls configured\
Test Result: **failed**\
Description : This policy will identify the Azure Storage Account which dont have latest version of tls configured and give alert\

#### Test Details
- eval: data.rule.storage_account_latest_tls_configured
- id : PR-AZR-TRF-STR-018

#### Snapshots
| Title         | Description                                                                                                                                                                                                                                                                                                                                                                |
|:--------------|:---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| id            | TRF_TEMPLATE_SNAPSHOT31                                                                                                                                                                                                                                                                                                                                                    |
| structure     | filesystem                                                                                                                                                                                                                                                                                                                                                                 |
| reference     | main                                                                                                                                                                                                                                                                                                                                                                       |
| source        | gitConnectorAzureTerraHashicorp                                                                                                                                                                                                                                                                                                                                            |
| collection    | terraformtemplate                                                                                                                                                                                                                                                                                                                                                          |
| type          | terraform                                                                                                                                                                                                                                                                                                                                                                  |
| region        |                                                                                                                                                                                                                                                                                                                                                                            |
| resourceTypes | ['azurerm_storage_account', 'azurerm_storage_share', 'azurerm_resource_group', 'azurerm_container_group']                                                                                                                                                                                                                                                                  |
| paths         | ['https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/container-instance/volume-mount/outputs.tf', 'https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/container-instance/volume-mount/variables.tf', 'https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/container-instance/volume-mount/main.tf'] |

- masterTestId: TEST_STORAGE_ACCOUNT_12
- masterSnapshotId: ['TRF_TEMPLATE_SNAPSHOT']
- type: rego
- rule: file(https://github.com/prancer-io/prancer-compliance-test/tree/master/azure/terraform/storageaccounts.rego)
- severity: High

tags
| Title      | Description                             |
|:-----------|:----------------------------------------|
| cloud      | git                                     |
| compliance | ['CIS', 'HIPAA', 'NIST 800', 'PCI-DSS'] |
| service    | ['terraform']                           |
----------------------------------------------------------------


### Test ID - PR-AZR-TRF-STR-018
Title: Ensure Azure Storage Account has latest version of tls configured\
Test Result: **failed**\
Description : This policy will identify the Azure Storage Account which dont have latest version of tls configured and give alert\

#### Test Details
- eval: data.rule.storage_account_latest_tls_configured
- id : PR-AZR-TRF-STR-018

#### Snapshots
| Title         | Description                                                                                                                                                                                                                                 |
|:--------------|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| id            | TRF_TEMPLATE_SNAPSHOT43                                                                                                                                                                                                                     |
| structure     | filesystem                                                                                                                                                                                                                                  |
| reference     | main                                                                                                                                                                                                                                        |
| source        | gitConnectorAzureTerraHashicorp                                                                                                                                                                                                             |
| collection    | terraformtemplate                                                                                                                                                                                                                           |
| type          | terraform                                                                                                                                                                                                                                   |
| region        |                                                                                                                                                                                                                                             |
| resourceTypes | ['azurerm_eventgrid_event_subscription', 'azurerm_storage_container', 'azurerm_storage_account', 'azurerm_resource_group', 'azurerm_storage_queue', 'azurerm_storage_blob']                                                                 |
| paths         | ['https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/eventgrid/event-subscription/variables.tf', 'https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/eventgrid/event-subscription/main.tf'] |

- masterTestId: TEST_STORAGE_ACCOUNT_12
- masterSnapshotId: ['TRF_TEMPLATE_SNAPSHOT']
- type: rego
- rule: file(https://github.com/prancer-io/prancer-compliance-test/tree/master/azure/terraform/storageaccounts.rego)
- severity: High

tags
| Title      | Description                             |
|:-----------|:----------------------------------------|
| cloud      | git                                     |
| compliance | ['CIS', 'HIPAA', 'NIST 800', 'PCI-DSS'] |
| service    | ['terraform']                           |
----------------------------------------------------------------


### Test ID - PR-AZR-TRF-STR-018
Title: Ensure Azure Storage Account has latest version of tls configured\
Test Result: **failed**\
Description : This policy will identify the Azure Storage Account which dont have latest version of tls configured and give alert\

#### Test Details
- eval: data.rule.storage_account_latest_tls_configured
- id : PR-AZR-TRF-STR-018

#### Snapshots
| Title         | Description                                                                                                                                                                                                                                                                                                                                                                                                                                                        |
|:--------------|:-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| id            | TRF_TEMPLATE_SNAPSHOT46                                                                                                                                                                                                                                                                                                                                                                                                                                            |
| structure     | filesystem                                                                                                                                                                                                                                                                                                                                                                                                                                                         |
| reference     | main                                                                                                                                                                                                                                                                                                                                                                                                                                                               |
| source        | gitConnectorAzureTerraHashicorp                                                                                                                                                                                                                                                                                                                                                                                                                                    |
| collection    | terraformtemplate                                                                                                                                                                                                                                                                                                                                                                                                                                                  |
| type          | terraform                                                                                                                                                                                                                                                                                                                                                                                                                                                          |
| region        |                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |
| resourceTypes | ['azurerm_subnet_network_security_group_association', 'azurerm_storage_container', 'azuread_group', 'azurerm_network_security_group', 'azurerm_storage_account', 'azurerm_virtual_network_dns_servers', 'azurerm_subnet', 'azurerm_resource_group', 'azurerm_role_assignment', 'azuread_user', 'azurerm_active_directory_domain_service', 'azurerm_user_assigned_identity', 'azurerm_hdinsight_hadoop_cluster', 'azurerm_virtual_network', 'azuread_group_member'] |
| paths         | ['https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/hdinsight/enterprise-security-package/providers.tf', 'https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/hdinsight/enterprise-security-package/variables.tf', 'https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/hdinsight/enterprise-security-package/main.tf']                                                                     |

- masterTestId: TEST_STORAGE_ACCOUNT_12
- masterSnapshotId: ['TRF_TEMPLATE_SNAPSHOT']
- type: rego
- rule: file(https://github.com/prancer-io/prancer-compliance-test/tree/master/azure/terraform/storageaccounts.rego)
- severity: High

tags
| Title      | Description                             |
|:-----------|:----------------------------------------|
| cloud      | git                                     |
| compliance | ['CIS', 'HIPAA', 'NIST 800', 'PCI-DSS'] |
| service    | ['terraform']                           |
----------------------------------------------------------------


### Test ID - PR-AZR-TRF-STR-018
Title: Ensure Azure Storage Account has latest version of tls configured\
Test Result: **failed**\
Description : This policy will identify the Azure Storage Account which dont have latest version of tls configured and give alert\

#### Test Details
- eval: data.rule.storage_account_latest_tls_configured
- id : PR-AZR-TRF-STR-018

#### Snapshots
| Title         | Description                                                                                                                                                                                                                                                                                                                                                                                                                                                                |
|:--------------|:---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| id            | TRF_TEMPLATE_SNAPSHOT47                                                                                                                                                                                                                                                                                                                                                                                                                                                    |
| structure     | filesystem                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |
| reference     | main                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |
| source        | gitConnectorAzureTerraHashicorp                                                                                                                                                                                                                                                                                                                                                                                                                                            |
| collection    | terraformtemplate                                                                                                                                                                                                                                                                                                                                                                                                                                                          |
| type          | terraform                                                                                                                                                                                                                                                                                                                                                                                                                                                                  |
| region        |                                                                                                                                                                                                                                                                                                                                                                                                                                                                            |
| resourceTypes | ['azurerm_subnet_network_security_group_association', 'azurerm_network_security_group', 'azurerm_storage_account', 'azurerm_nat_gateway_public_ip_association', 'azurerm_subnet_nat_gateway_association', 'azurerm_storage_data_lake_gen2_filesystem', 'azurerm_subnet', 'azurerm_resource_group', 'azurerm_role_assignment', 'azurerm_user_assigned_identity', 'azurerm_hdinsight_hadoop_cluster', 'azurerm_nat_gateway', 'azurerm_virtual_network', 'azurerm_public_ip'] |
| paths         | ['https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/hdinsight/private-link/hadoop-interactive-spark-cluster/variables.tf', 'https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/hdinsight/private-link/hadoop-interactive-spark-cluster/main.tf']                                                                                                                                                                          |

- masterTestId: TEST_STORAGE_ACCOUNT_12
- masterSnapshotId: ['TRF_TEMPLATE_SNAPSHOT']
- type: rego
- rule: file(https://github.com/prancer-io/prancer-compliance-test/tree/master/azure/terraform/storageaccounts.rego)
- severity: High

tags
| Title      | Description                             |
|:-----------|:----------------------------------------|
| cloud      | git                                     |
| compliance | ['CIS', 'HIPAA', 'NIST 800', 'PCI-DSS'] |
| service    | ['terraform']                           |
----------------------------------------------------------------


### Test ID - PR-AZR-TRF-STR-018
Title: Ensure Azure Storage Account has latest version of tls configured\
Test Result: **failed**\
Description : This policy will identify the Azure Storage Account which dont have latest version of tls configured and give alert\

#### Test Details
- eval: data.rule.storage_account_latest_tls_configured
- id : PR-AZR-TRF-STR-018

#### Snapshots
| Title         | Description                                                                                                                                                                                                                 |
|:--------------|:----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| id            | TRF_TEMPLATE_SNAPSHOT69                                                                                                                                                                                                     |
| structure     | filesystem                                                                                                                                                                                                                  |
| reference     | main                                                                                                                                                                                                                        |
| source        | gitConnectorAzureTerraHashicorp                                                                                                                                                                                             |
| collection    | terraformtemplate                                                                                                                                                                                                           |
| type          | terraform                                                                                                                                                                                                                   |
| region        |                                                                                                                                                                                                                             |
| resourceTypes | ['azurerm_storage_account', 'azurerm_media_services_account', 'azurerm_resource_group']                                                                                                                                     |
| paths         | ['https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/media-services/basic/variables.tf', 'https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/media-services/basic/main.tf'] |

- masterTestId: TEST_STORAGE_ACCOUNT_12
- masterSnapshotId: ['TRF_TEMPLATE_SNAPSHOT']
- type: rego
- rule: file(https://github.com/prancer-io/prancer-compliance-test/tree/master/azure/terraform/storageaccounts.rego)
- severity: High

tags
| Title      | Description                             |
|:-----------|:----------------------------------------|
| cloud      | git                                     |
| compliance | ['CIS', 'HIPAA', 'NIST 800', 'PCI-DSS'] |
| service    | ['terraform']                           |
----------------------------------------------------------------


### Test ID - PR-AZR-TRF-STR-018
Title: Ensure Azure Storage Account has latest version of tls configured\
Test Result: **failed**\
Description : This policy will identify the Azure Storage Account which dont have latest version of tls configured and give alert\

#### Test Details
- eval: data.rule.storage_account_latest_tls_configured
- id : PR-AZR-TRF-STR-018

#### Snapshots
| Title         | Description                                                                                                                                                                                                                                         |
|:--------------|:----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| id            | TRF_TEMPLATE_SNAPSHOT70                                                                                                                                                                                                                             |
| structure     | filesystem                                                                                                                                                                                                                                          |
| reference     | main                                                                                                                                                                                                                                                |
| source        | gitConnectorAzureTerraHashicorp                                                                                                                                                                                                                     |
| collection    | terraformtemplate                                                                                                                                                                                                                                   |
| type          | terraform                                                                                                                                                                                                                                           |
| region        |                                                                                                                                                                                                                                                     |
| resourceTypes | ['azurerm_storage_account', 'azurerm_media_services_account', 'azurerm_resource_group', 'azurerm_media_asset']                                                                                                                                      |
| paths         | ['https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/media-services/basic-with-assets/variables.tf', 'https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/media-services/basic-with-assets/main.tf'] |

- masterTestId: TEST_STORAGE_ACCOUNT_12
- masterSnapshotId: ['TRF_TEMPLATE_SNAPSHOT']
- type: rego
- rule: file(https://github.com/prancer-io/prancer-compliance-test/tree/master/azure/terraform/storageaccounts.rego)
- severity: High

tags
| Title      | Description                             |
|:-----------|:----------------------------------------|
| cloud      | git                                     |
| compliance | ['CIS', 'HIPAA', 'NIST 800', 'PCI-DSS'] |
| service    | ['terraform']                           |
----------------------------------------------------------------


### Test ID - PR-AZR-TRF-STR-018
Title: Ensure Azure Storage Account has latest version of tls configured\
Test Result: **failed**\
Description : This policy will identify the Azure Storage Account which dont have latest version of tls configured and give alert\

#### Test Details
- eval: data.rule.storage_account_latest_tls_configured
- id : PR-AZR-TRF-STR-018

#### Snapshots
| Title         | Description                                                                                                                                                                                                                                                         |
|:--------------|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| id            | TRF_TEMPLATE_SNAPSHOT71                                                                                                                                                                                                                                             |
| structure     | filesystem                                                                                                                                                                                                                                                          |
| reference     | main                                                                                                                                                                                                                                                                |
| source        | gitConnectorAzureTerraHashicorp                                                                                                                                                                                                                                     |
| collection    | terraformtemplate                                                                                                                                                                                                                                                   |
| type          | terraform                                                                                                                                                                                                                                                           |
| region        |                                                                                                                                                                                                                                                                     |
| resourceTypes | ['azurerm_storage_account', 'azurerm_media_services_account', 'azurerm_resource_group']                                                                                                                                                                             |
| paths         | ['https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/media-services/multiple-storage-accounts/variables.tf', 'https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/media-services/multiple-storage-accounts/main.tf'] |

- masterTestId: TEST_STORAGE_ACCOUNT_12
- masterSnapshotId: ['TRF_TEMPLATE_SNAPSHOT']
- type: rego
- rule: file(https://github.com/prancer-io/prancer-compliance-test/tree/master/azure/terraform/storageaccounts.rego)
- severity: High

tags
| Title      | Description                             |
|:-----------|:----------------------------------------|
| cloud      | git                                     |
| compliance | ['CIS', 'HIPAA', 'NIST 800', 'PCI-DSS'] |
| service    | ['terraform']                           |
----------------------------------------------------------------


### Test ID - PR-AZR-TRF-STR-018
Title: Ensure Azure Storage Account has latest version of tls configured\
Test Result: **failed**\
Description : This policy will identify the Azure Storage Account which dont have latest version of tls configured and give alert\

#### Test Details
- eval: data.rule.storage_account_latest_tls_configured
- id : PR-AZR-TRF-STR-018

#### Snapshots
| Title         | Description                                                                                                                                                                                                                                       |
|:--------------|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| id            | TRF_TEMPLATE_SNAPSHOT91                                                                                                                                                                                                                           |
| structure     | filesystem                                                                                                                                                                                                                                        |
| reference     | main                                                                                                                                                                                                                                              |
| source        | gitConnectorAzureTerraHashicorp                                                                                                                                                                                                                   |
| collection    | terraformtemplate                                                                                                                                                                                                                                 |
| type          | terraform                                                                                                                                                                                                                                         |
| region        |                                                                                                                                                                                                                                                   |
| resourceTypes | ['azurerm_storage_account', 'azurerm_redis_cache', 'azurerm_resource_group']                                                                                                                                                                      |
| paths         | ['https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/redis-cache/premium-with-backup/variables.tf', 'https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/redis-cache/premium-with-backup/main.tf'] |

- masterTestId: TEST_STORAGE_ACCOUNT_12
- masterSnapshotId: ['TRF_TEMPLATE_SNAPSHOT']
- type: rego
- rule: file(https://github.com/prancer-io/prancer-compliance-test/tree/master/azure/terraform/storageaccounts.rego)
- severity: High

tags
| Title      | Description                             |
|:-----------|:----------------------------------------|
| cloud      | git                                     |
| compliance | ['CIS', 'HIPAA', 'NIST 800', 'PCI-DSS'] |
| service    | ['terraform']                           |
----------------------------------------------------------------


### Test ID - PR-AZR-TRF-STR-018
Title: Ensure Azure Storage Account has latest version of tls configured\
Test Result: **failed**\
Description : This policy will identify the Azure Storage Account which dont have latest version of tls configured and give alert\

#### Test Details
- eval: data.rule.storage_account_latest_tls_configured
- id : PR-AZR-TRF-STR-018

#### Snapshots
| Title         | Description                                                                                                                                                                                                                                                                     |
|:--------------|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| id            | TRF_TEMPLATE_SNAPSHOT97                                                                                                                                                                                                                                                         |
| structure     | filesystem                                                                                                                                                                                                                                                                      |
| reference     | main                                                                                                                                                                                                                                                                            |
| source        | gitConnectorAzureTerraHashicorp                                                                                                                                                                                                                                                 |
| collection    | terraformtemplate                                                                                                                                                                                                                                                               |
| type          | terraform                                                                                                                                                                                                                                                                       |
| region        |                                                                                                                                                                                                                                                                                 |
| resourceTypes | ['azurerm_storage_account', 'azurerm_subnet', 'azurerm_resource_group', 'azurerm_virtual_network']                                                                                                                                                                              |
| paths         | ['https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/service-fabric/windows-vmss-self-signed-certs/variables.tf', 'https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/service-fabric/windows-vmss-self-signed-certs/0-base.tf'] |

- masterTestId: TEST_STORAGE_ACCOUNT_12
- masterSnapshotId: ['TRF_TEMPLATE_SNAPSHOT']
- type: rego
- rule: file(https://github.com/prancer-io/prancer-compliance-test/tree/master/azure/terraform/storageaccounts.rego)
- severity: High

tags
| Title      | Description                             |
|:-----------|:----------------------------------------|
| cloud      | git                                     |
| compliance | ['CIS', 'HIPAA', 'NIST 800', 'PCI-DSS'] |
| service    | ['terraform']                           |
----------------------------------------------------------------


### Test ID - PR-AZR-TRF-STR-018
Title: Ensure Azure Storage Account has latest version of tls configured\
Test Result: **failed**\
Description : This policy will identify the Azure Storage Account which dont have latest version of tls configured and give alert\

#### Test Details
- eval: data.rule.storage_account_latest_tls_configured
- id : PR-AZR-TRF-STR-018

#### Snapshots
| Title         | Description                                                                                                                                                                                                                       |
|:--------------|:----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| id            | TRF_TEMPLATE_SNAPSHOT107                                                                                                                                                                                                          |
| structure     | filesystem                                                                                                                                                                                                                        |
| reference     | main                                                                                                                                                                                                                              |
| source        | gitConnectorAzureTerraHashicorp                                                                                                                                                                                                   |
| collection    | terraformtemplate                                                                                                                                                                                                                 |
| type          | terraform                                                                                                                                                                                                                         |
| region        |                                                                                                                                                                                                                                   |
| resourceTypes | ['azurerm_storage_account', 'azurerm_resource_group']                                                                                                                                                                             |
| paths         | ['https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/storage/storage-account/variables.tf', 'https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/storage/storage-account/main.tf'] |

- masterTestId: TEST_STORAGE_ACCOUNT_12
- masterSnapshotId: ['TRF_TEMPLATE_SNAPSHOT']
- type: rego
- rule: file(https://github.com/prancer-io/prancer-compliance-test/tree/master/azure/terraform/storageaccounts.rego)
- severity: High

tags
| Title      | Description                             |
|:-----------|:----------------------------------------|
| cloud      | git                                     |
| compliance | ['CIS', 'HIPAA', 'NIST 800', 'PCI-DSS'] |
| service    | ['terraform']                           |
----------------------------------------------------------------


### Test ID - PR-AZR-TRF-STR-018
Title: Ensure Azure Storage Account has latest version of tls configured\
Test Result: **failed**\
Description : This policy will identify the Azure Storage Account which dont have latest version of tls configured and give alert\

#### Test Details
- eval: data.rule.storage_account_latest_tls_configured
- id : PR-AZR-TRF-STR-018

#### Snapshots
| Title         | Description                                                                                                                                                                                                                           |
|:--------------|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| id            | TRF_TEMPLATE_SNAPSHOT108                                                                                                                                                                                                              |
| structure     | filesystem                                                                                                                                                                                                                            |
| reference     | main                                                                                                                                                                                                                                  |
| source        | gitConnectorAzureTerraHashicorp                                                                                                                                                                                                       |
| collection    | terraformtemplate                                                                                                                                                                                                                     |
| type          | terraform                                                                                                                                                                                                                             |
| region        |                                                                                                                                                                                                                                       |
| resourceTypes | ['azurerm_storage_account', 'azurerm_storage_container', 'azurerm_resource_group']                                                                                                                                                    |
| paths         | ['https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/storage/storage-container/variables.tf', 'https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/storage/storage-container/main.tf'] |

- masterTestId: TEST_STORAGE_ACCOUNT_12
- masterSnapshotId: ['TRF_TEMPLATE_SNAPSHOT']
- type: rego
- rule: file(https://github.com/prancer-io/prancer-compliance-test/tree/master/azure/terraform/storageaccounts.rego)
- severity: High

tags
| Title      | Description                             |
|:-----------|:----------------------------------------|
| cloud      | git                                     |
| compliance | ['CIS', 'HIPAA', 'NIST 800', 'PCI-DSS'] |
| service    | ['terraform']                           |
----------------------------------------------------------------


### Test ID - PR-AZR-TRF-STR-018
Title: Ensure Azure Storage Account has latest version of tls configured\
Test Result: **failed**\
Description : This policy will identify the Azure Storage Account which dont have latest version of tls configured and give alert\

#### Test Details
- eval: data.rule.storage_account_latest_tls_configured
- id : PR-AZR-TRF-STR-018

#### Snapshots
| Title         | Description                                                                                                                                                                                                                   |
|:--------------|:------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| id            | TRF_TEMPLATE_SNAPSHOT109                                                                                                                                                                                                      |
| structure     | filesystem                                                                                                                                                                                                                    |
| reference     | main                                                                                                                                                                                                                          |
| source        | gitConnectorAzureTerraHashicorp                                                                                                                                                                                               |
| collection    | terraformtemplate                                                                                                                                                                                                             |
| type          | terraform                                                                                                                                                                                                                     |
| region        |                                                                                                                                                                                                                               |
| resourceTypes | ['azurerm_storage_account', 'azurerm_storage_share', 'azurerm_resource_group']                                                                                                                                                |
| paths         | ['https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/storage/storage-share/variables.tf', 'https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/storage/storage-share/main.tf'] |

- masterTestId: TEST_STORAGE_ACCOUNT_12
- masterSnapshotId: ['TRF_TEMPLATE_SNAPSHOT']
- type: rego
- rule: file(https://github.com/prancer-io/prancer-compliance-test/tree/master/azure/terraform/storageaccounts.rego)
- severity: High

tags
| Title      | Description                             |
|:-----------|:----------------------------------------|
| cloud      | git                                     |
| compliance | ['CIS', 'HIPAA', 'NIST 800', 'PCI-DSS'] |
| service    | ['terraform']                           |
----------------------------------------------------------------


### Test ID - PR-AZR-TRF-STR-018
Title: Ensure Azure Storage Account has latest version of tls configured\
Test Result: **failed**\
Description : This policy will identify the Azure Storage Account which dont have latest version of tls configured and give alert\

#### Test Details
- eval: data.rule.storage_account_latest_tls_configured
- id : PR-AZR-TRF-STR-018

#### Snapshots
| Title         | Description                                                                                                                                                                                                                           |
|:--------------|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| id            | TRF_TEMPLATE_SNAPSHOT110                                                                                                                                                                                                              |
| structure     | filesystem                                                                                                                                                                                                                            |
| reference     | main                                                                                                                                                                                                                                  |
| source        | gitConnectorAzureTerraHashicorp                                                                                                                                                                                                       |
| collection    | terraformtemplate                                                                                                                                                                                                                     |
| type          | terraform                                                                                                                                                                                                                             |
| region        |                                                                                                                                                                                                                                       |
| resourceTypes | ['azurerm_storage_account', 'azurerm_storage_data_lake_gen2_path', 'azurerm_storage_data_lake_gen2_filesystem', 'azurerm_resource_group', 'azurerm_role_assignment', 'azurerm_user_assigned_identity']                                |
| paths         | ['https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/storage/storage_adls_acls/variables.tf', 'https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/storage/storage_adls_acls/main.tf'] |

- masterTestId: TEST_STORAGE_ACCOUNT_12
- masterSnapshotId: ['TRF_TEMPLATE_SNAPSHOT']
- type: rego
- rule: file(https://github.com/prancer-io/prancer-compliance-test/tree/master/azure/terraform/storageaccounts.rego)
- severity: High

tags
| Title      | Description                             |
|:-----------|:----------------------------------------|
| cloud      | git                                     |
| compliance | ['CIS', 'HIPAA', 'NIST 800', 'PCI-DSS'] |
| service    | ['terraform']                           |
----------------------------------------------------------------


### Test ID - PR-AZR-TRF-STR-018
Title: Ensure Azure Storage Account has latest version of tls configured\
Test Result: **failed**\
Description : This policy will identify the Azure Storage Account which dont have latest version of tls configured and give alert\

#### Test Details
- eval: data.rule.storage_account_latest_tls_configured
- id : PR-AZR-TRF-STR-018

#### Snapshots
| Title         | Description                                                                                                                                                                                                         |
|:--------------|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| id            | TRF_TEMPLATE_SNAPSHOT111                                                                                                                                                                                            |
| structure     | filesystem                                                                                                                                                                                                          |
| reference     | main                                                                                                                                                                                                                |
| source        | gitConnectorAzureTerraHashicorp                                                                                                                                                                                     |
| collection    | terraformtemplate                                                                                                                                                                                                   |
| type          | terraform                                                                                                                                                                                                           |
| region        |                                                                                                                                                                                                                     |
| resourceTypes | ['azurerm_storage_container', 'azurerm_storage_account', 'azurerm_stream_analytics_job', 'azurerm_resource_group', 'azurerm_stream_analytics_reference_input_blob']                                                 |
| paths         | ['https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/stream-analytics/variables.tf', 'https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/stream-analytics/main.tf'] |

- masterTestId: TEST_STORAGE_ACCOUNT_12
- masterSnapshotId: ['TRF_TEMPLATE_SNAPSHOT']
- type: rego
- rule: file(https://github.com/prancer-io/prancer-compliance-test/tree/master/azure/terraform/storageaccounts.rego)
- severity: High

tags
| Title      | Description                             |
|:-----------|:----------------------------------------|
| cloud      | git                                     |
| compliance | ['CIS', 'HIPAA', 'NIST 800', 'PCI-DSS'] |
| service    | ['terraform']                           |
----------------------------------------------------------------


### Test ID - PR-AZR-TRF-STR-018
Title: Ensure Azure Storage Account has latest version of tls configured\
Test Result: **failed**\
Description : This policy will identify the Azure Storage Account which dont have latest version of tls configured and give alert\

#### Test Details
- eval: data.rule.storage_account_latest_tls_configured
- id : PR-AZR-TRF-STR-018

#### Snapshots
| Title         | Description                                                                                                                                                                                                                                                                                                                                                                                                                                                    |
|:--------------|:---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| id            | TRF_TEMPLATE_SNAPSHOT123                                                                                                                                                                                                                                                                                                                                                                                                                                       |
| structure     | filesystem                                                                                                                                                                                                                                                                                                                                                                                                                                                     |
| reference     | main                                                                                                                                                                                                                                                                                                                                                                                                                                                           |
| source        | gitConnectorAzureTerraHashicorp                                                                                                                                                                                                                                                                                                                                                                                                                                |
| collection    | terraformtemplate                                                                                                                                                                                                                                                                                                                                                                                                                                              |
| type          | terraform                                                                                                                                                                                                                                                                                                                                                                                                                                                      |
| region        |                                                                                                                                                                                                                                                                                                                                                                                                                                                                |
| resourceTypes | ['azurerm_availability_set', 'azurerm_storage_account', 'azurerm_lb_backend_address_pool', 'azurerm_lb', 'azurerm_network_interface_nat_rule_association', 'azurerm_lb_rule', 'azurerm_subnet', 'azurerm_lb_nat_rule', 'azurerm_resource_group', 'azurerm_virtual_machine', 'azurerm_network_interface', 'azurerm_lb_probe', 'azurerm_virtual_network', 'azurerm_public_ip']                                                                                   |
| paths         | ['https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/virtual-machines/virtual_machine/2-vms-loadbalancer-lbrules/outputs.tf', 'https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/virtual-machines/virtual_machine/2-vms-loadbalancer-lbrules/variables.tf', 'https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/virtual-machines/virtual_machine/2-vms-loadbalancer-lbrules/main.tf'] |

- masterTestId: TEST_STORAGE_ACCOUNT_12
- masterSnapshotId: ['TRF_TEMPLATE_SNAPSHOT']
- type: rego
- rule: file(https://github.com/prancer-io/prancer-compliance-test/tree/master/azure/terraform/storageaccounts.rego)
- severity: High

tags
| Title      | Description                             |
|:-----------|:----------------------------------------|
| cloud      | git                                     |
| compliance | ['CIS', 'HIPAA', 'NIST 800', 'PCI-DSS'] |
| service    | ['terraform']                           |
----------------------------------------------------------------


### Test ID - PR-AZR-TRF-STR-018
Title: Ensure Azure Storage Account has latest version of tls configured\
Test Result: **failed**\
Description : This policy will identify the Azure Storage Account which dont have latest version of tls configured and give alert\

#### Test Details
- eval: data.rule.storage_account_latest_tls_configured
- id : PR-AZR-TRF-STR-018

#### Snapshots
| Title         | Description                                                                                                                                                                                                                                                                                                                                                                                                                                              |
|:--------------|:---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| id            | TRF_TEMPLATE_SNAPSHOT127                                                                                                                                                                                                                                                                                                                                                                                                                                 |
| structure     | filesystem                                                                                                                                                                                                                                                                                                                                                                                                                                               |
| reference     | main                                                                                                                                                                                                                                                                                                                                                                                                                                                     |
| source        | gitConnectorAzureTerraHashicorp                                                                                                                                                                                                                                                                                                                                                                                                                          |
| collection    | terraformtemplate                                                                                                                                                                                                                                                                                                                                                                                                                                        |
| type          | terraform                                                                                                                                                                                                                                                                                                                                                                                                                                                |
| region        |                                                                                                                                                                                                                                                                                                                                                                                                                                                          |
| resourceTypes | ['azurerm_storage_account', 'azurerm_template_deployment', 'azurerm_subnet', 'azurerm_resource_group', 'azurerm_virtual_machine', 'azurerm_network_interface', 'azurerm_virtual_network']                                                                                                                                                                                                                                                                |
| paths         | ['https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/virtual-machines/virtual_machine/encrypt-running-linux-vm/outputs.tf', 'https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/virtual-machines/virtual_machine/encrypt-running-linux-vm/variables.tf', 'https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/virtual-machines/virtual_machine/encrypt-running-linux-vm/main.tf'] |

- masterTestId: TEST_STORAGE_ACCOUNT_12
- masterSnapshotId: ['TRF_TEMPLATE_SNAPSHOT']
- type: rego
- rule: file(https://github.com/prancer-io/prancer-compliance-test/tree/master/azure/terraform/storageaccounts.rego)
- severity: High

tags
| Title      | Description                             |
|:-----------|:----------------------------------------|
| cloud      | git                                     |
| compliance | ['CIS', 'HIPAA', 'NIST 800', 'PCI-DSS'] |
| service    | ['terraform']                           |
----------------------------------------------------------------


### Test ID - PR-AZR-TRF-STR-018
Title: Ensure Azure Storage Account has latest version of tls configured\
Test Result: **failed**\
Description : This policy will identify the Azure Storage Account which dont have latest version of tls configured and give alert\

#### Test Details
- eval: data.rule.storage_account_latest_tls_configured
- id : PR-AZR-TRF-STR-018

#### Snapshots
| Title         | Description                                                                                                                                                                                                                                                                                                                                                                                                                      |
|:--------------|:---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| id            | TRF_TEMPLATE_SNAPSHOT139                                                                                                                                                                                                                                                                                                                                                                                                         |
| structure     | filesystem                                                                                                                                                                                                                                                                                                                                                                                                                       |
| reference     | main                                                                                                                                                                                                                                                                                                                                                                                                                             |
| source        | gitConnectorAzureTerraHashicorp                                                                                                                                                                                                                                                                                                                                                                                                  |
| collection    | terraformtemplate                                                                                                                                                                                                                                                                                                                                                                                                                |
| type          | terraform                                                                                                                                                                                                                                                                                                                                                                                                                        |
| region        |                                                                                                                                                                                                                                                                                                                                                                                                                                  |
| resourceTypes | ['azurerm_availability_set', 'azurerm_network_security_group', 'azurerm_storage_account', 'azurerm_lb_backend_address_pool', 'azurerm_lb', 'azurerm_lb_rule', 'azurerm_subnet', 'azurerm_lb_nat_rule', 'azurerm_resource_group', 'azurerm_virtual_machine', 'azurerm_network_interface', 'azurerm_lb_probe', 'azurerm_virtual_network', 'azurerm_public_ip']                                                                     |
| paths         | ['https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/virtual-machines/virtual_machine/openshift-origin/outputs.tf', 'https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/virtual-machines/virtual_machine/openshift-origin/variables.tf', 'https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/virtual-machines/virtual_machine/openshift-origin/main.tf'] |

- masterTestId: TEST_STORAGE_ACCOUNT_12
- masterSnapshotId: ['TRF_TEMPLATE_SNAPSHOT']
- type: rego
- rule: file(https://github.com/prancer-io/prancer-compliance-test/tree/master/azure/terraform/storageaccounts.rego)
- severity: High

tags
| Title      | Description                             |
|:-----------|:----------------------------------------|
| cloud      | git                                     |
| compliance | ['CIS', 'HIPAA', 'NIST 800', 'PCI-DSS'] |
| service    | ['terraform']                           |
----------------------------------------------------------------


### Test ID - PR-AZR-TRF-STR-018
Title: Ensure Azure Storage Account has latest version of tls configured\
Test Result: **failed**\
Description : This policy will identify the Azure Storage Account which dont have latest version of tls configured and give alert\

#### Test Details
- eval: data.rule.storage_account_latest_tls_configured
- id : PR-AZR-TRF-STR-018

#### Snapshots
| Title         | Description                                                                                                                                                                                                                                                                                                                                                                                                                                                             |
|:--------------|:------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| id            | TRF_TEMPLATE_SNAPSHOT145                                                                                                                                                                                                                                                                                                                                                                                                                                                |
| structure     | filesystem                                                                                                                                                                                                                                                                                                                                                                                                                                                              |
| reference     | main                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |
| source        | gitConnectorAzureTerraHashicorp                                                                                                                                                                                                                                                                                                                                                                                                                                         |
| collection    | terraformtemplate                                                                                                                                                                                                                                                                                                                                                                                                                                                       |
| type          | terraform                                                                                                                                                                                                                                                                                                                                                                                                                                                               |
| region        |                                                                                                                                                                                                                                                                                                                                                                                                                                                                         |
| resourceTypes | ['azurerm_availability_set', 'azurerm_storage_container', 'azurerm_network_security_group', 'azurerm_storage_account', 'azurerm_subnet', 'azurerm_resource_group', 'azurerm_virtual_machine', 'azurerm_network_interface', 'azurerm_virtual_network', 'azurerm_public_ip']                                                                                                                                                                                              |
| paths         | ['https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/virtual-machines/virtual_machine/spark-and-cassandra-on-centos/outputs.tf', 'https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/virtual-machines/virtual_machine/spark-and-cassandra-on-centos/variables.tf', 'https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/virtual-machines/virtual_machine/spark-and-cassandra-on-centos/main.tf'] |

- masterTestId: TEST_STORAGE_ACCOUNT_12
- masterSnapshotId: ['TRF_TEMPLATE_SNAPSHOT']
- type: rego
- rule: file(https://github.com/prancer-io/prancer-compliance-test/tree/master/azure/terraform/storageaccounts.rego)
- severity: High

tags
| Title      | Description                             |
|:-----------|:----------------------------------------|
| cloud      | git                                     |
| compliance | ['CIS', 'HIPAA', 'NIST 800', 'PCI-DSS'] |
| service    | ['terraform']                           |
----------------------------------------------------------------


### Test ID - PR-AZR-TRF-STR-018
Title: Ensure Azure Storage Account has latest version of tls configured\
Test Result: **failed**\
Description : This policy will identify the Azure Storage Account which dont have latest version of tls configured and give alert\

#### Test Details
- eval: data.rule.storage_account_latest_tls_configured
- id : PR-AZR-TRF-STR-018

#### Snapshots
| Title         | Description                                                                                                                                                                                                                                                                                               |
|:--------------|:----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| id            | TRF_TEMPLATE_SNAPSHOT146                                                                                                                                                                                                                                                                                  |
| structure     | filesystem                                                                                                                                                                                                                                                                                                |
| reference     | main                                                                                                                                                                                                                                                                                                      |
| source        | gitConnectorAzureTerraHashicorp                                                                                                                                                                                                                                                                           |
| collection    | terraformtemplate                                                                                                                                                                                                                                                                                         |
| type          | terraform                                                                                                                                                                                                                                                                                                 |
| region        |                                                                                                                                                                                                                                                                                                           |
| resourceTypes | ['azurerm_storage_container', 'azurerm_storage_account', 'azurerm_subnet', 'azurerm_resource_group', 'azurerm_network_interface', 'azurerm_virtual_network']                                                                                                                                              |
| paths         | ['https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/virtual-machines/virtual_machine/unmanaged-disks/basic/variables.tf', 'https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/virtual-machines/virtual_machine/unmanaged-disks/basic/1-dependencies.tf'] |

- masterTestId: TEST_STORAGE_ACCOUNT_12
- masterSnapshotId: ['TRF_TEMPLATE_SNAPSHOT']
- type: rego
- rule: file(https://github.com/prancer-io/prancer-compliance-test/tree/master/azure/terraform/storageaccounts.rego)
- severity: High

tags
| Title      | Description                             |
|:-----------|:----------------------------------------|
| cloud      | git                                     |
| compliance | ['CIS', 'HIPAA', 'NIST 800', 'PCI-DSS'] |
| service    | ['terraform']                           |
----------------------------------------------------------------


### Test ID - 
Title: Ensure Azure Storage Account has latest version of tls configured\
Test Result: **failed**\
Description : This policy will identify the Azure Storage Account which dont have latest version of tls configured and give alert\

#### Test Details
- eval: [{'id': 'PR-AZR-TRF-STR-018', 'eval': 'data.rule.storage_account_latest_tls_configured', 'message': 'data.rule.storage_account_latest_tls_configured_err', 'remediationDescription': "In 'azurerm_storage_account' resource, set min_tls_version = 'TLS1_2' to fix the issue. Visit <a href='https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/storage_account#min_tls_version' target='_blank'>here</a> for details.", 'remediationFunction': 'PR_AZR_TRF_STR_018.py'}]
- id : 

#### Snapshots
[]

- masterTestId: TEST_STORAGE_ACCOUNT_12
- masterSnapshotId: ['TRF_TEMPLATE_SNAPSHOT']
- type: rego
- rule: file(https://github.com/prancer-io/prancer-compliance-test/tree/master/azure/terraform/storageaccounts.rego)
- severity: High

tags
| Title      | Description                             |
|:-----------|:----------------------------------------|
| cloud      | git                                     |
| compliance | ['CIS', 'HIPAA', 'NIST 800', 'PCI-DSS'] |
| service    | ['terraform']                           |
----------------------------------------------------------------


### Test ID - PR-AZR-TRF-STR-018
Title: Ensure Azure Storage Account has latest version of tls configured\
Test Result: **failed**\
Description : This policy will identify the Azure Storage Account which dont have latest version of tls configured and give alert\

#### Test Details
- eval: data.rule.storage_account_latest_tls_configured
- id : PR-AZR-TRF-STR-018

#### Snapshots
| Title         | Description                                                                                                                                                                                                                                                          |
|:--------------|:---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| id            | TRF_TEMPLATE_SNAPSHOT154                                                                                                                                                                                                                                             |
| structure     | filesystem                                                                                                                                                                                                                                                           |
| reference     | main                                                                                                                                                                                                                                                                 |
| source        | gitConnectorAzureTerraHashicorp                                                                                                                                                                                                                                      |
| collection    | terraformtemplate                                                                                                                                                                                                                                                    |
| type          | terraform                                                                                                                                                                                                                                                            |
| region        |                                                                                                                                                                                                                                                                      |
| resourceTypes | ['azurerm_storage_account', 'azurerm_subnet', 'azurerm_resource_group', 'azurerm_windows_virtual_machine', 'azurerm_role_assignment', 'azurerm_network_interface', 'azurerm_virtual_network']                                                                        |
| paths         | ['https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/virtual-machines/windows/vm-role-assignment/vars.tf', 'https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/virtual-machines/windows/vm-role-assignment/main.tf'] |

- masterTestId: TEST_STORAGE_ACCOUNT_12
- masterSnapshotId: ['TRF_TEMPLATE_SNAPSHOT']
- type: rego
- rule: file(https://github.com/prancer-io/prancer-compliance-test/tree/master/azure/terraform/storageaccounts.rego)
- severity: High

tags
| Title      | Description                             |
|:-----------|:----------------------------------------|
| cloud      | git                                     |
| compliance | ['CIS', 'HIPAA', 'NIST 800', 'PCI-DSS'] |
| service    | ['terraform']                           |
----------------------------------------------------------------


### Test ID - PR-AZR-TRF-STR-018
Title: Ensure Azure Storage Account has latest version of tls configured\
Test Result: **failed**\
Description : This policy will identify the Azure Storage Account which dont have latest version of tls configured and give alert\

#### Test Details
- eval: data.rule.storage_account_latest_tls_configured
- id : PR-AZR-TRF-STR-018

#### Snapshots
| Title         | Description                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |
|:--------------|:----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| id            | TRF_TEMPLATE_SNAPSHOT155                                                                                                                                                                                                                                                                                                                                                                                                                                                    |
| structure     | filesystem                                                                                                                                                                                                                                                                                                                                                                                                                                                                  |
| reference     | main                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |
| source        | gitConnectorAzureTerraHashicorp                                                                                                                                                                                                                                                                                                                                                                                                                                             |
| collection    | terraformtemplate                                                                                                                                                                                                                                                                                                                                                                                                                                                           |
| type          | terraform                                                                                                                                                                                                                                                                                                                                                                                                                                                                   |
| region        |                                                                                                                                                                                                                                                                                                                                                                                                                                                                             |
| resourceTypes | ['azurerm_subnet_route_table_association', 'azurerm_firewall_application_rule_collection', 'azurerm_firewall_network_rule_collection', 'azurerm_route_table', 'azurerm_network_security_group', 'azurerm_storage_account', 'azurerm_subnet', 'azurerm_resource_group', 'azurerm_network_interface_security_group_association', 'azurerm_virtual_machine', 'azurerm_network_interface', 'azurerm_firewall', 'random_string', 'azurerm_virtual_network', 'azurerm_public_ip'] |
| paths         | ['https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/virtual-networks/azure-firewall/variables.tf', 'https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/virtual-networks/azure-firewall/main.tf']                                                                                                                                                                                                                           |

- masterTestId: TEST_STORAGE_ACCOUNT_12
- masterSnapshotId: ['TRF_TEMPLATE_SNAPSHOT']
- type: rego
- rule: file(https://github.com/prancer-io/prancer-compliance-test/tree/master/azure/terraform/storageaccounts.rego)
- severity: High

tags
| Title      | Description                             |
|:-----------|:----------------------------------------|
| cloud      | git                                     |
| compliance | ['CIS', 'HIPAA', 'NIST 800', 'PCI-DSS'] |
| service    | ['terraform']                           |
----------------------------------------------------------------


### Test ID - PR-AZR-TRF-STR-018
Title: Ensure Azure Storage Account has latest version of tls configured\
Test Result: **failed**\
Description : This policy will identify the Azure Storage Account which dont have latest version of tls configured and give alert\

#### Test Details
- eval: data.rule.storage_account_latest_tls_configured
- id : PR-AZR-TRF-STR-018

#### Snapshots
| Title         | Description                                                                                                                                                                                                                                               |
|:--------------|:----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| id            | TRF_TEMPLATE_SNAPSHOT169                                                                                                                                                                                                                                  |
| structure     | filesystem                                                                                                                                                                                                                                                |
| reference     | main                                                                                                                                                                                                                                                      |
| source        | gitConnectorAzureTerraHashicorp                                                                                                                                                                                                                           |
| collection    | terraformtemplate                                                                                                                                                                                                                                         |
| type          | terraform                                                                                                                                                                                                                                                 |
| region        |                                                                                                                                                                                                                                                           |
| resourceTypes | ['azurerm_linux_virtual_machine_scale_set', 'azurerm_storage_account', 'azurerm_subnet', 'azurerm_resource_group', 'azurerm_virtual_network']                                                                                                             |
| paths         | ['https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/vm-scale-set/linux/boot-diagnostics/variables.tf', 'https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/vm-scale-set/linux/boot-diagnostics/main.tf'] |

- masterTestId: TEST_STORAGE_ACCOUNT_12
- masterSnapshotId: ['TRF_TEMPLATE_SNAPSHOT']
- type: rego
- rule: file(https://github.com/prancer-io/prancer-compliance-test/tree/master/azure/terraform/storageaccounts.rego)
- severity: High

tags
| Title      | Description                             |
|:-----------|:----------------------------------------|
| cloud      | git                                     |
| compliance | ['CIS', 'HIPAA', 'NIST 800', 'PCI-DSS'] |
| service    | ['terraform']                           |
----------------------------------------------------------------


### Test ID - PR-AZR-TRF-STR-018
Title: Ensure Azure Storage Account has latest version of tls configured\
Test Result: **failed**\
Description : This policy will identify the Azure Storage Account which dont have latest version of tls configured and give alert\

#### Test Details
- eval: data.rule.storage_account_latest_tls_configured
- id : PR-AZR-TRF-STR-018

#### Snapshots
| Title         | Description                                                                                                                                                                                                                                                   |
|:--------------|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| id            | TRF_TEMPLATE_SNAPSHOT190                                                                                                                                                                                                                                      |
| structure     | filesystem                                                                                                                                                                                                                                                    |
| reference     | main                                                                                                                                                                                                                                                          |
| source        | gitConnectorAzureTerraHashicorp                                                                                                                                                                                                                               |
| collection    | terraformtemplate                                                                                                                                                                                                                                             |
| type          | terraform                                                                                                                                                                                                                                                     |
| region        |                                                                                                                                                                                                                                                               |
| resourceTypes | ['azurerm_storage_account', 'azurerm_subnet', 'azurerm_resource_group', 'azurerm_virtual_network', 'azurerm_windows_virtual_machine_scale_set']                                                                                                               |
| paths         | ['https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/vm-scale-set/windows/boot-diagnostics/variables.tf', 'https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/vm-scale-set/windows/boot-diagnostics/main.tf'] |

- masterTestId: TEST_STORAGE_ACCOUNT_12
- masterSnapshotId: ['TRF_TEMPLATE_SNAPSHOT']
- type: rego
- rule: file(https://github.com/prancer-io/prancer-compliance-test/tree/master/azure/terraform/storageaccounts.rego)
- severity: High

tags
| Title      | Description                             |
|:-----------|:----------------------------------------|
| cloud      | git                                     |
| compliance | ['CIS', 'HIPAA', 'NIST 800', 'PCI-DSS'] |
| service    | ['terraform']                           |
----------------------------------------------------------------


### Test ID - PR-AZR-TRF-STR-012
Title: Azure storage blob container should not have public access enabled\
Test Result: **passed**\
Description : 'Public access level' allows you to grant anonymous/public read access to a container and the blobs within Azure blob storage. By doing so, you can grant read-only access to these resources without sharing your account key, and without requiring a shared access signature.<br><br>This policy identifies blob containers within an Azure storage account that allow anonymous/public access ('CONTAINER' or 'BLOB') that also have Audit Log Retention set to less than 180 days.<br><br>As a best practice, do not allow anonymous/public access to blob containers unless you have a very good reason. Instead, you should consider using a shared access signature token for providing controlled and time-limited access to blob containers.\

#### Test Details
- eval: data.rule.storage_container_public_access_disabled
- id : PR-AZR-TRF-STR-012

#### Snapshots
| Title         | Description                                                                                                                                                                                                                                                                                                                        |
|:--------------|:-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| id            | TRF_TEMPLATE_SNAPSHOT2                                                                                                                                                                                                                                                                                                             |
| structure     | filesystem                                                                                                                                                                                                                                                                                                                         |
| reference     | main                                                                                                                                                                                                                                                                                                                               |
| source        | gitConnectorAzureTerraHashicorp                                                                                                                                                                                                                                                                                                    |
| collection    | terraformtemplate                                                                                                                                                                                                                                                                                                                  |
| type          | terraform                                                                                                                                                                                                                                                                                                                          |
| region        |                                                                                                                                                                                                                                                                                                                                    |
| resourceTypes | ['azurerm_storage_container', 'azurerm_storage_account', 'azurerm_resource_group', 'azurerm_app_service_plan', 'azurerm_app_service']                                                                                                                                                                                              |
| paths         | ['https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/app-service/backup/output.tf', 'https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/app-service/backup/variables.tf', 'https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/app-service/backup/main.tf'] |

- masterTestId: TEST_STORAGE_BLOB_CONTAINER
- masterSnapshotId: ['TRF_TEMPLATE_SNAPSHOT']
- type: rego
- rule: file(https://github.com/prancer-io/prancer-compliance-test/tree/master/azure/terraform/storageblobcontainers.rego)
- severity: High

tags
| Title      | Description                                           |
|:-----------|:------------------------------------------------------|
| cloud      | git                                                   |
| compliance | ['CIS', 'HITRUST', 'NIST 800', 'NIST CSF', 'PCI-DSS'] |
| service    | ['terraform']                                         |
----------------------------------------------------------------


### Test ID - PR-AZR-TRF-STR-012
Title: Azure storage blob container should not have public access enabled\
Test Result: **failed**\
Description : 'Public access level' allows you to grant anonymous/public read access to a container and the blobs within Azure blob storage. By doing so, you can grant read-only access to these resources without sharing your account key, and without requiring a shared access signature.<br><br>This policy identifies blob containers within an Azure storage account that allow anonymous/public access ('CONTAINER' or 'BLOB') that also have Audit Log Retention set to less than 180 days.<br><br>As a best practice, do not allow anonymous/public access to blob containers unless you have a very good reason. Instead, you should consider using a shared access signature token for providing controlled and time-limited access to blob containers.\

#### Test Details
- eval: data.rule.storage_container_public_access_disabled
- id : PR-AZR-TRF-STR-012

#### Snapshots
| Title         | Description                                                                                                                                                                                                                                                                  |
|:--------------|:-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| id            | TRF_TEMPLATE_SNAPSHOT25                                                                                                                                                                                                                                                      |
| structure     | filesystem                                                                                                                                                                                                                                                                   |
| reference     | main                                                                                                                                                                                                                                                                         |
| source        | gitConnectorAzureTerraHashicorp                                                                                                                                                                                                                                              |
| collection    | terraformtemplate                                                                                                                                                                                                                                                            |
| type          | terraform                                                                                                                                                                                                                                                                    |
| region        |                                                                                                                                                                                                                                                                              |
| resourceTypes | ['azurerm_storage_container', 'azurerm_storage_account', 'azurerm_subnet', 'azurerm_batch_pool', 'azurerm_resource_group', 'azurerm_image', 'azurerm_virtual_machine', 'azurerm_network_interface', 'azurerm_batch_account', 'azurerm_virtual_network', 'azurerm_public_ip'] |
| paths         | ['https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/batch/custom-image/variables.tf', 'https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/batch/custom-image/main.tf']                                                      |

- masterTestId: TEST_STORAGE_BLOB_CONTAINER
- masterSnapshotId: ['TRF_TEMPLATE_SNAPSHOT']
- type: rego
- rule: file(https://github.com/prancer-io/prancer-compliance-test/tree/master/azure/terraform/storageblobcontainers.rego)
- severity: High

tags
| Title      | Description                                           |
|:-----------|:------------------------------------------------------|
| cloud      | git                                                   |
| compliance | ['CIS', 'HITRUST', 'NIST 800', 'NIST CSF', 'PCI-DSS'] |
| service    | ['terraform']                                         |
----------------------------------------------------------------


### Test ID - PR-AZR-TRF-STR-012
Title: Azure storage blob container should not have public access enabled\
Test Result: **passed**\
Description : 'Public access level' allows you to grant anonymous/public read access to a container and the blobs within Azure blob storage. By doing so, you can grant read-only access to these resources without sharing your account key, and without requiring a shared access signature.<br><br>This policy identifies blob containers within an Azure storage account that allow anonymous/public access ('CONTAINER' or 'BLOB') that also have Audit Log Retention set to less than 180 days.<br><br>As a best practice, do not allow anonymous/public access to blob containers unless you have a very good reason. Instead, you should consider using a shared access signature token for providing controlled and time-limited access to blob containers.\

#### Test Details
- eval: data.rule.storage_container_public_access_disabled
- id : PR-AZR-TRF-STR-012

#### Snapshots
| Title         | Description                                                                                                                                                                                                                                 |
|:--------------|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| id            | TRF_TEMPLATE_SNAPSHOT43                                                                                                                                                                                                                     |
| structure     | filesystem                                                                                                                                                                                                                                  |
| reference     | main                                                                                                                                                                                                                                        |
| source        | gitConnectorAzureTerraHashicorp                                                                                                                                                                                                             |
| collection    | terraformtemplate                                                                                                                                                                                                                           |
| type          | terraform                                                                                                                                                                                                                                   |
| region        |                                                                                                                                                                                                                                             |
| resourceTypes | ['azurerm_eventgrid_event_subscription', 'azurerm_storage_container', 'azurerm_storage_account', 'azurerm_resource_group', 'azurerm_storage_queue', 'azurerm_storage_blob']                                                                 |
| paths         | ['https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/eventgrid/event-subscription/variables.tf', 'https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/eventgrid/event-subscription/main.tf'] |

- masterTestId: TEST_STORAGE_BLOB_CONTAINER
- masterSnapshotId: ['TRF_TEMPLATE_SNAPSHOT']
- type: rego
- rule: file(https://github.com/prancer-io/prancer-compliance-test/tree/master/azure/terraform/storageblobcontainers.rego)
- severity: High

tags
| Title      | Description                                           |
|:-----------|:------------------------------------------------------|
| cloud      | git                                                   |
| compliance | ['CIS', 'HITRUST', 'NIST 800', 'NIST CSF', 'PCI-DSS'] |
| service    | ['terraform']                                         |
----------------------------------------------------------------


### Test ID - PR-AZR-TRF-STR-012
Title: Azure storage blob container should not have public access enabled\
Test Result: **passed**\
Description : 'Public access level' allows you to grant anonymous/public read access to a container and the blobs within Azure blob storage. By doing so, you can grant read-only access to these resources without sharing your account key, and without requiring a shared access signature.<br><br>This policy identifies blob containers within an Azure storage account that allow anonymous/public access ('CONTAINER' or 'BLOB') that also have Audit Log Retention set to less than 180 days.<br><br>As a best practice, do not allow anonymous/public access to blob containers unless you have a very good reason. Instead, you should consider using a shared access signature token for providing controlled and time-limited access to blob containers.\

#### Test Details
- eval: data.rule.storage_container_public_access_disabled
- id : PR-AZR-TRF-STR-012

#### Snapshots
| Title         | Description                                                                                                                                                                                                                                                                                                                                                                                                                                                        |
|:--------------|:-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| id            | TRF_TEMPLATE_SNAPSHOT46                                                                                                                                                                                                                                                                                                                                                                                                                                            |
| structure     | filesystem                                                                                                                                                                                                                                                                                                                                                                                                                                                         |
| reference     | main                                                                                                                                                                                                                                                                                                                                                                                                                                                               |
| source        | gitConnectorAzureTerraHashicorp                                                                                                                                                                                                                                                                                                                                                                                                                                    |
| collection    | terraformtemplate                                                                                                                                                                                                                                                                                                                                                                                                                                                  |
| type          | terraform                                                                                                                                                                                                                                                                                                                                                                                                                                                          |
| region        |                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |
| resourceTypes | ['azurerm_subnet_network_security_group_association', 'azurerm_storage_container', 'azuread_group', 'azurerm_network_security_group', 'azurerm_storage_account', 'azurerm_virtual_network_dns_servers', 'azurerm_subnet', 'azurerm_resource_group', 'azurerm_role_assignment', 'azuread_user', 'azurerm_active_directory_domain_service', 'azurerm_user_assigned_identity', 'azurerm_hdinsight_hadoop_cluster', 'azurerm_virtual_network', 'azuread_group_member'] |
| paths         | ['https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/hdinsight/enterprise-security-package/providers.tf', 'https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/hdinsight/enterprise-security-package/variables.tf', 'https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/hdinsight/enterprise-security-package/main.tf']                                                                     |

- masterTestId: TEST_STORAGE_BLOB_CONTAINER
- masterSnapshotId: ['TRF_TEMPLATE_SNAPSHOT']
- type: rego
- rule: file(https://github.com/prancer-io/prancer-compliance-test/tree/master/azure/terraform/storageblobcontainers.rego)
- severity: High

tags
| Title      | Description                                           |
|:-----------|:------------------------------------------------------|
| cloud      | git                                                   |
| compliance | ['CIS', 'HITRUST', 'NIST 800', 'NIST CSF', 'PCI-DSS'] |
| service    | ['terraform']                                         |
----------------------------------------------------------------


### Test ID - PR-AZR-TRF-STR-012
Title: Azure storage blob container should not have public access enabled\
Test Result: **failed**\
Description : 'Public access level' allows you to grant anonymous/public read access to a container and the blobs within Azure blob storage. By doing so, you can grant read-only access to these resources without sharing your account key, and without requiring a shared access signature.<br><br>This policy identifies blob containers within an Azure storage account that allow anonymous/public access ('CONTAINER' or 'BLOB') that also have Audit Log Retention set to less than 180 days.<br><br>As a best practice, do not allow anonymous/public access to blob containers unless you have a very good reason. Instead, you should consider using a shared access signature token for providing controlled and time-limited access to blob containers.\

#### Test Details
- eval: data.rule.storage_container_public_access_disabled
- id : PR-AZR-TRF-STR-012

#### Snapshots
| Title         | Description                                                                                                                                                                                                                           |
|:--------------|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| id            | TRF_TEMPLATE_SNAPSHOT108                                                                                                                                                                                                              |
| structure     | filesystem                                                                                                                                                                                                                            |
| reference     | main                                                                                                                                                                                                                                  |
| source        | gitConnectorAzureTerraHashicorp                                                                                                                                                                                                       |
| collection    | terraformtemplate                                                                                                                                                                                                                     |
| type          | terraform                                                                                                                                                                                                                             |
| region        |                                                                                                                                                                                                                                       |
| resourceTypes | ['azurerm_storage_account', 'azurerm_storage_container', 'azurerm_resource_group']                                                                                                                                                    |
| paths         | ['https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/storage/storage-container/variables.tf', 'https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/storage/storage-container/main.tf'] |

- masterTestId: TEST_STORAGE_BLOB_CONTAINER
- masterSnapshotId: ['TRF_TEMPLATE_SNAPSHOT']
- type: rego
- rule: file(https://github.com/prancer-io/prancer-compliance-test/tree/master/azure/terraform/storageblobcontainers.rego)
- severity: High

tags
| Title      | Description                                           |
|:-----------|:------------------------------------------------------|
| cloud      | git                                                   |
| compliance | ['CIS', 'HITRUST', 'NIST 800', 'NIST CSF', 'PCI-DSS'] |
| service    | ['terraform']                                         |
----------------------------------------------------------------


### Test ID - PR-AZR-TRF-STR-012
Title: Azure storage blob container should not have public access enabled\
Test Result: **passed**\
Description : 'Public access level' allows you to grant anonymous/public read access to a container and the blobs within Azure blob storage. By doing so, you can grant read-only access to these resources without sharing your account key, and without requiring a shared access signature.<br><br>This policy identifies blob containers within an Azure storage account that allow anonymous/public access ('CONTAINER' or 'BLOB') that also have Audit Log Retention set to less than 180 days.<br><br>As a best practice, do not allow anonymous/public access to blob containers unless you have a very good reason. Instead, you should consider using a shared access signature token for providing controlled and time-limited access to blob containers.\

#### Test Details
- eval: data.rule.storage_container_public_access_disabled
- id : PR-AZR-TRF-STR-012

#### Snapshots
| Title         | Description                                                                                                                                                                                                         |
|:--------------|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| id            | TRF_TEMPLATE_SNAPSHOT111                                                                                                                                                                                            |
| structure     | filesystem                                                                                                                                                                                                          |
| reference     | main                                                                                                                                                                                                                |
| source        | gitConnectorAzureTerraHashicorp                                                                                                                                                                                     |
| collection    | terraformtemplate                                                                                                                                                                                                   |
| type          | terraform                                                                                                                                                                                                           |
| region        |                                                                                                                                                                                                                     |
| resourceTypes | ['azurerm_storage_container', 'azurerm_storage_account', 'azurerm_stream_analytics_job', 'azurerm_resource_group', 'azurerm_stream_analytics_reference_input_blob']                                                 |
| paths         | ['https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/stream-analytics/variables.tf', 'https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/stream-analytics/main.tf'] |

- masterTestId: TEST_STORAGE_BLOB_CONTAINER
- masterSnapshotId: ['TRF_TEMPLATE_SNAPSHOT']
- type: rego
- rule: file(https://github.com/prancer-io/prancer-compliance-test/tree/master/azure/terraform/storageblobcontainers.rego)
- severity: High

tags
| Title      | Description                                           |
|:-----------|:------------------------------------------------------|
| cloud      | git                                                   |
| compliance | ['CIS', 'HITRUST', 'NIST 800', 'NIST CSF', 'PCI-DSS'] |
| service    | ['terraform']                                         |
----------------------------------------------------------------


### Test ID - PR-AZR-TRF-STR-012
Title: Azure storage blob container should not have public access enabled\
Test Result: **passed**\
Description : 'Public access level' allows you to grant anonymous/public read access to a container and the blobs within Azure blob storage. By doing so, you can grant read-only access to these resources without sharing your account key, and without requiring a shared access signature.<br><br>This policy identifies blob containers within an Azure storage account that allow anonymous/public access ('CONTAINER' or 'BLOB') that also have Audit Log Retention set to less than 180 days.<br><br>As a best practice, do not allow anonymous/public access to blob containers unless you have a very good reason. Instead, you should consider using a shared access signature token for providing controlled and time-limited access to blob containers.\

#### Test Details
- eval: data.rule.storage_container_public_access_disabled
- id : PR-AZR-TRF-STR-012

#### Snapshots
| Title         | Description                                                                                                                                                                                                                                                                                                                                                                                                                                                             |
|:--------------|:------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| id            | TRF_TEMPLATE_SNAPSHOT145                                                                                                                                                                                                                                                                                                                                                                                                                                                |
| structure     | filesystem                                                                                                                                                                                                                                                                                                                                                                                                                                                              |
| reference     | main                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |
| source        | gitConnectorAzureTerraHashicorp                                                                                                                                                                                                                                                                                                                                                                                                                                         |
| collection    | terraformtemplate                                                                                                                                                                                                                                                                                                                                                                                                                                                       |
| type          | terraform                                                                                                                                                                                                                                                                                                                                                                                                                                                               |
| region        |                                                                                                                                                                                                                                                                                                                                                                                                                                                                         |
| resourceTypes | ['azurerm_availability_set', 'azurerm_storage_container', 'azurerm_network_security_group', 'azurerm_storage_account', 'azurerm_subnet', 'azurerm_resource_group', 'azurerm_virtual_machine', 'azurerm_network_interface', 'azurerm_virtual_network', 'azurerm_public_ip']                                                                                                                                                                                              |
| paths         | ['https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/virtual-machines/virtual_machine/spark-and-cassandra-on-centos/outputs.tf', 'https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/virtual-machines/virtual_machine/spark-and-cassandra-on-centos/variables.tf', 'https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/virtual-machines/virtual_machine/spark-and-cassandra-on-centos/main.tf'] |

- masterTestId: TEST_STORAGE_BLOB_CONTAINER
- masterSnapshotId: ['TRF_TEMPLATE_SNAPSHOT']
- type: rego
- rule: file(https://github.com/prancer-io/prancer-compliance-test/tree/master/azure/terraform/storageblobcontainers.rego)
- severity: High

tags
| Title      | Description                                           |
|:-----------|:------------------------------------------------------|
| cloud      | git                                                   |
| compliance | ['CIS', 'HITRUST', 'NIST 800', 'NIST CSF', 'PCI-DSS'] |
| service    | ['terraform']                                         |
----------------------------------------------------------------


### Test ID - PR-AZR-TRF-STR-012
Title: Azure storage blob container should not have public access enabled\
Test Result: **passed**\
Description : 'Public access level' allows you to grant anonymous/public read access to a container and the blobs within Azure blob storage. By doing so, you can grant read-only access to these resources without sharing your account key, and without requiring a shared access signature.<br><br>This policy identifies blob containers within an Azure storage account that allow anonymous/public access ('CONTAINER' or 'BLOB') that also have Audit Log Retention set to less than 180 days.<br><br>As a best practice, do not allow anonymous/public access to blob containers unless you have a very good reason. Instead, you should consider using a shared access signature token for providing controlled and time-limited access to blob containers.\

#### Test Details
- eval: data.rule.storage_container_public_access_disabled
- id : PR-AZR-TRF-STR-012

#### Snapshots
| Title         | Description                                                                                                                                                                                                                                                                                               |
|:--------------|:----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| id            | TRF_TEMPLATE_SNAPSHOT146                                                                                                                                                                                                                                                                                  |
| structure     | filesystem                                                                                                                                                                                                                                                                                                |
| reference     | main                                                                                                                                                                                                                                                                                                      |
| source        | gitConnectorAzureTerraHashicorp                                                                                                                                                                                                                                                                           |
| collection    | terraformtemplate                                                                                                                                                                                                                                                                                         |
| type          | terraform                                                                                                                                                                                                                                                                                                 |
| region        |                                                                                                                                                                                                                                                                                                           |
| resourceTypes | ['azurerm_storage_container', 'azurerm_storage_account', 'azurerm_subnet', 'azurerm_resource_group', 'azurerm_network_interface', 'azurerm_virtual_network']                                                                                                                                              |
| paths         | ['https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/virtual-machines/virtual_machine/unmanaged-disks/basic/variables.tf', 'https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/virtual-machines/virtual_machine/unmanaged-disks/basic/1-dependencies.tf'] |

- masterTestId: TEST_STORAGE_BLOB_CONTAINER
- masterSnapshotId: ['TRF_TEMPLATE_SNAPSHOT']
- type: rego
- rule: file(https://github.com/prancer-io/prancer-compliance-test/tree/master/azure/terraform/storageblobcontainers.rego)
- severity: High

tags
| Title      | Description                                           |
|:-----------|:------------------------------------------------------|
| cloud      | git                                                   |
| compliance | ['CIS', 'HITRUST', 'NIST 800', 'NIST CSF', 'PCI-DSS'] |
| service    | ['terraform']                                         |
----------------------------------------------------------------

