package rule

# https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticmapreduce-cluster.html#cfn-elasticmapreduce-cluster-securityconfiguration
#
# PR-AWS-0218-TRF
#

default emr_security = null

aws_issue["emr_security"] {
    resource := input.resources[i]
    lower(resource.type) == "aws_emr_cluster"
    not resource.properties.security_configuration
}

aws_issue["emr_security"] {
    resource := input.resources[i]
    lower(resource.type) == "aws_emr_cluster"
    count(resource.properties.security_configuration) == 0
}

aws_issue["emr_security"] {
    resource := input.resources[i]
    lower(resource.type) == "aws_emr_cluster"
    resource.properties.security_configuration == null
}

emr_security {
    lower(input.resources[i].type) == "aws_emr_cluster"
    not aws_issue["emr_security"]
}

emr_security = false {
    aws_issue["emr_security"]
}

emr_security = "AWS EMR cluster is not configured with security configuration" {
    aws_issue["emr_security"]
}

emr_security_metadata := {
    "Policy Code": "PR-AWS-0218-TRF",
    "Type": "IaC",
    "Product": "AWS",
    "Language": "Terraform",
    "Policy Title": "AWS EMR cluster is not configured with security configuration",
    "Policy Description": "This policy identifies EMR clusters which are not configured with security configuration. With Amazon EMR release version 4.8.0 or later, you can use security configurations to configure data encryption, Kerberos authentication, and Amazon S3 authorization for EMRFS.",
    "Resource Type": "",
    "Policy Help URL": "",
    "Resource Help URL": "https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticmapreduce-cluster.html#cfn-elasticmapreduce-cluster-securityconfiguration"
}


#
# PR-AWS-0219-TRF
#

default emr_kerberos = null

aws_issue["emr_kerberos"] {
    resource := input.resources[i]
    lower(resource.type) == "aws_emr_cluster"
    kerberos_attributes := resource.properties.kerberos_attributes[_]
    not kerberos_attributes.realm
}

aws_issue["emr_kerberos"] {
    resource := input.resources[i]
    lower(resource.type) == "aws_emr_cluster"
    kerberos_attributes := resource.properties.kerberos_attributes[_]
    kerberos_attributes.realm == null
}

aws_issue["emr_kerberos"] {
    resource := input.resources[i]
    lower(resource.type) == "aws_emr_cluster"
    kerberos_attributes := resource.properties.kerberos_attributes[_]
    count(kerberos_attributes.realm) == 0
}

emr_kerberos {
    lower(input.resources[i].type) == "aws_emr_cluster"
    not aws_issue["emr_kerberos"]
}

emr_kerberos = false {
    aws_issue["emr_kerberos"]
}

emr_kerberos_err = "AWS EMR cluster is not configured with Kerberos Authentication" {
    aws_issue["emr_kerberos"]
}

emr_kerberos_metadata := {
    "Policy Code": "PR-AWS-0219-TRF",
    "Type": "IaC",
    "Product": "AWS",
    "Language": "Terraform",
    "Policy Title": "AWS EMR cluster is not configured with Kerberos Authentication",
    "Policy Description": "This policy identifies EMR clusters which are not configured with Kerberos Authentication. Kerberos uses secret-key cryptography to provide strong authentication so that passwords or other credentials aren't sent over the network in an unencrypted format.",
    "Resource Type": "",
    "Policy Help URL": "",
    "Resource Help URL": "https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticmapreduce-cluster.html#cfn-elasticmapreduce-cluster-kerberosattributes"
}


#
# PR-AWS-0220-TRF
#

default emr_s3_encryption = null

aws_issue["emr_s3_encryption"] {
    resource := input.resources[i]
    lower(resource.type) == "aws_emr_security_configuration"
    configuration := resource.properties.configuration[_]
    EncryptionConfiguration := configuration.EncryptionConfiguration[_]
    AtRestEncryptionConfiguration := EncryptionConfiguration.AtRestEncryptionConfiguration[_]
    S3EncryptionConfiguration := AtRestEncryptionConfiguration.S3EncryptionConfiguration[_]
    not S3EncryptionConfiguration.EncryptionMode
}

aws_issue["emr_s3_encryption"] {
    resource := input.resources[i]
    lower(resource.type) == "aws_emr_security_configuration"
    configuration := resource.properties.configuration[_]
    EncryptionConfiguration := configuration.EncryptionConfiguration[_]
    AtRestEncryptionConfiguration := EncryptionConfiguration.AtRestEncryptionConfiguration[_]
    S3EncryptionConfiguration := AtRestEncryptionConfiguration.S3EncryptionConfiguration[_]
    count(S3EncryptionConfiguration.EncryptionMode) == 0
}

emr_s3_encryption {
    lower(input.resources[i].type) == "aws_emr_security_configuration"
    not aws_issue["emr_s3_encryption"]
}

emr_s3_encryption = false {
    aws_issue["emr_s3_encryption"]
}

emr_s3_encryption_err = "AWS EMR cluster is not configured with CSE CMK for data at rest encryption (Amazon S3 with EMRFS)" {
    aws_issue["emr_s3_encryption"]
}

emr_s3_encryption_metadata := {
    "Policy Code": "PR-AWS-0220-TRF",
    "Type": "IaC",
    "Product": "AWS",
    "Language": "Terraform",
    "Policy Title": "AWS EMR cluster is not configured with CSE CMK for data at rest encryption (Amazon S3 with EMRFS)",
    "Policy Description": "This policy identifies EMR clusters which are not configured with Client Side Encryption with Customer Master Keys(CSE CMK) for data at rest encryption of Amazon S3 with EMRFS. As a best practice, use Customer Master Keys (CMK) to encrypt the data in your EMR cluster and ensure full control over your data.",
    "Resource Type": "",
    "Policy Help URL": "",
    "Resource Help URL": "https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticmapreduce-cluster.html#cfn-elasticmapreduce-cluster-securityconfiguration"
}


#
# PR-AWS-0221-TRF
#

default emr_local_encryption_cmk = null

aws_issue["emr_local_encryption_cmk"] {
    resource := input.resources[i]
    lower(resource.type) == "aws_emr_security_configuration"
    configuration := resource.properties.configuration[_]
    EncryptionConfiguration := configuration.EncryptionConfiguration[_]
    AtRestEncryptionConfiguration := EncryptionConfiguration.AtRestEncryptionConfiguration[_]
    LocalDiskEncryptionConfiguration := AtRestEncryptionConfiguration.LocalDiskEncryptionConfiguration[_]
    not LocalDiskEncryptionConfiguration.EncryptionKeyProviderType
}

aws_issue["emr_local_encryption_cmk"] {
    resource := input.resources[i]
    lower(resource.type) == "aws_emr_security_configuration"
    configuration := resource.properties.configuration[_]
    EncryptionConfiguration := configuration.EncryptionConfiguration[_]
    AtRestEncryptionConfiguration := EncryptionConfiguration.AtRestEncryptionConfiguration[_]
    LocalDiskEncryptionConfiguration := AtRestEncryptionConfiguration.LocalDiskEncryptionConfiguration[_]
    count(LocalDiskEncryptionConfiguration.EncryptionKeyProviderType) == 0
}

aws_issue["emr_local_encryption_cmk"] {
    resource := input.resources[i]
    lower(resource.type) == "aws_emr_security_configuration"
    configuration := resource.properties.configuration[_]
    EncryptionConfiguration := configuration.EncryptionConfiguration[_]
    AtRestEncryptionConfiguration := EncryptionConfiguration.AtRestEncryptionConfiguration[_]
    LocalDiskEncryptionConfiguration := AtRestEncryptionConfiguration.LocalDiskEncryptionConfiguration[_]
    lower(LocalDiskEncryptionConfiguration.EncryptionKeyProviderType) != "awskms"
}

emr_local_encryption_cmk {
    lower(input.resources[i].type) == "aws_emr_security_configuration"
    not aws_issue["emr_local_encryption_cmk"]
}

emr_local_encryption_cmk = false {
    aws_issue["emr_local_encryption_cmk"]
}

emr_local_encryption_cmk_err = "AWS EMR cluster is not enabled with local disk encryption using CMK" {
    aws_issue["emr_local_encryption_cmk"]
}

emr_local_encryption_cmk_metadata := {
    "Policy Code": "PR-AWS-0221-TRF",
    "Type": "IaC",
    "Product": "AWS",
    "Language": "Terraform",
    "Policy Title": "AWS EMR cluster is not enabled with local disk encryption using CMK",
    "Policy Description": "This policy identifies AWS EMR clusters that are not enabled with local disk encryption using CMK(Customer Managed Key). Applications using the local file system on each cluster instance for intermediate data throughout workloads, where data could be spilled to disk when it overflows memory. With Local disk encryption at place, data at rest can be protected.",
    "Resource Type": "",
    "Policy Help URL": "",
    "Resource Help URL": "https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticmapreduce-cluster.html#cfn-elasticmapreduce-cluster-securityconfiguration"
}


#
# PR-AWS-0222-TRF
#

default emr_local_encryption = null

aws_issue["emr_local_encryption"] {
    resource := input.resources[i]
    lower(resource.type) == "aws_emr_security_configuration"
    configuration := resource.properties.configuration[_]
    EncryptionConfiguration := configuration.EncryptionConfiguration[_]
    AtRestEncryptionConfiguration := EncryptionConfiguration.AtRestEncryptionConfiguration[_]
    LocalDiskEncryptionConfiguration := AtRestEncryptionConfiguration.LocalDiskEncryptionConfiguration[_]
    not LocalDiskEncryptionConfiguration.EncryptionKeyProviderType
}

aws_issue["emr_local_encryption"] {
    resource := input.resources[i]
    lower(resource.type) == "aws_emr_security_configuration"
    configuration := resource.properties.configuration[_]
    EncryptionConfiguration := configuration.EncryptionConfiguration[_]
    AtRestEncryptionConfiguration := EncryptionConfiguration.AtRestEncryptionConfiguration[_]
    LocalDiskEncryptionConfiguration := AtRestEncryptionConfiguration.LocalDiskEncryptionConfiguration[_]
    count(LocalDiskEncryptionConfiguration.EncryptionKeyProviderType) == 0
}

emr_local_encryption {
    lower(input.resources[i].type) == "aws_emr_security_configuration"
    not aws_issue["emr_local_encryption"]
}

emr_local_encryption = false {
    aws_issue["emr_local_encryption"]
}

emr_local_encryption_err = "AWS EMR cluster is not enabled with local disk encryption" {
    aws_issue["emr_local_encryption"]
}

emr_local_encryption_metadata := {
    "Policy Code": "PR-AWS-0222-TRF",
    "Type": "IaC",
    "Product": "AWS",
    "Language": "Terraform",
    "Policy Title": "AWS EMR cluster is not enabled with local disk encryption",
    "Policy Description": "This policy identifies AWS EMR clusters that are not enabled with local disk encryption. Applications using the local file system on each cluster instance for intermediate data throughout workloads, where data could be spilled to disk when it overflows memory. With Local disk encryption at place, data at rest can be protected.",
    "Resource Type": "",
    "Policy Help URL": "",
    "Resource Help URL": "https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticmapreduce-cluster.html#cfn-elasticmapreduce-cluster-securityconfiguration"
}


#
# PR-AWS-0223-TRF
#

default emr_rest_encryption = null

aws_issue["emr_rest_encryption"] {
    resource := input.resources[i]
    lower(resource.type) == "aws_emr_security_configuration"
    configuration := resource.properties.configuration[_]
    EncryptionConfiguration := configuration.EncryptionConfiguration[_]
    lower(EncryptionConfiguration.EnableAtRestEncryption) == "false"
}

aws_bool_issue["emr_rest_encryption"] {
    resource := input.resources[i]
    lower(resource.type) == "aws_emr_security_configuration"
    configuration := resource.properties.configuration[_]
    EncryptionConfiguration := configuration.EncryptionConfiguration[_]
    not EncryptionConfiguration.EnableAtRestEncryption
}

emr_rest_encryption {
    lower(input.resources[i].type) == "aws_emr_security_configuration"
    not aws_issue["emr_rest_encryption"]
    not aws_bool_issue["emr_rest_encryption"]
}

emr_rest_encryption = false {
    aws_issue["emr_rest_encryption"]
}

emr_rest_encryption = false {
    aws_bool_issue["emr_rest_encryption"]
}

emr_rest_encryption_err = "AWS EMR cluster is not enabled with data encryption at rest" {
    aws_issue["emr_rest_encryption"]
} else = "Ensure EMR cluster is enabled with data encryption at rest" {
    aws_bool_issue["emr_rest_encryption"]
}

emr_rest_encryption_metadata := {
    "Policy Code": "PR-AWS-0223-TRF",
    "Type": "IaC",
    "Product": "AWS",
    "Language": "Terraform",
    "Policy Title": "AWS EMR cluster is not enabled with data encryption at rest",
    "Policy Description": "This policy identifies AWS EMR clusters for which data encryption at rest is not enabled. Encryption of data at rest is required to prevent unauthorized users from accessing the sensitive information available on your  EMR clusters and associated storage systems.",
    "Resource Type": "",
    "Policy Help URL": "",
    "Resource Help URL": "https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticmapreduce-cluster.html#cfn-elasticmapreduce-cluster-securityconfiguration"
}



#
# PR-AWS-0224-TRF
#

default emr_s3_encryption_sse = null

aws_issue["emr_s3_encryption_sse"] {
    resource := input.resources[i]
    lower(resource.type) == "aws_emr_security_configuration"
    configuration := resource.properties.configuration[_]
    EncryptionConfiguration := configuration.EncryptionConfiguration[_]
    AtRestEncryptionConfiguration := EncryptionConfiguration.AtRestEncryptionConfiguration[_]
    S3EncryptionConfiguration := AtRestEncryptionConfiguration.S3EncryptionConfiguration[_]
    not S3EncryptionConfiguration.EncryptionMode
}

aws_issue["emr_s3_encryption_sse"] {
    resource := input.resources[i]
    lower(resource.type) == "aws_emr_security_configuration"
    configuration := resource.properties.configuration[_]
    EncryptionConfiguration := configuration.EncryptionConfiguration[_]
    AtRestEncryptionConfiguration := EncryptionConfiguration.AtRestEncryptionConfiguration[_]
    S3EncryptionConfiguration := AtRestEncryptionConfiguration.S3EncryptionConfiguration[_]
    count(S3EncryptionConfiguration.EncryptionMode) == 0
}

aws_issue["emr_s3_encryption_sse"] {
    resource := input.resources[i]
    lower(resource.type) == "aws_emr_security_configuration"
    configuration := resource.properties.configuration[_]
    EncryptionConfiguration := configuration.EncryptionConfiguration[_]
    AtRestEncryptionConfiguration := EncryptionConfiguration.AtRestEncryptionConfiguration[_]
    S3EncryptionConfiguration := AtRestEncryptionConfiguration.S3EncryptionConfiguration[_]
    S3EncryptionConfiguration.EncryptionMode
    lower(S3EncryptionConfiguration.EncryptionMode) != "sse-kms"
}

emr_s3_encryption_sse {
    lower(input.resources[i].type) == "aws_emr_security_configuration"
    not aws_issue["emr_s3_encryption_sse"]
}

emr_s3_encryption_sse = false {
    aws_issue["emr_s3_encryption_sse"]
}

emr_s3_encryption_sse_err = "AWS EMR cluster is not configured with SSE KMS for data at rest encryption (Amazon S3 with EMRFS)" {
    aws_issue["emr_s3_encryption_sse"]
}

emr_s3_encryption_sse_metadata := {
    "Policy Code": "PR-AWS-0224-TRF",
    "Type": "IaC",
    "Product": "AWS",
    "Language": "Terraform",
    "Policy Title": "AWS EMR cluster is not configured with SSE KMS for data at rest encryption (Amazon S3 with EMRFS)",
    "Policy Description": "This policy identifies EMR clusters which are not configured with Server Side Encryption(SSE KMS) for data at rest encryption of Amazon S3 with EMRFS. As a best practice, use SSE-KMS for server side encryption to encrypt the data in your EMR cluster and ensure full control over your data.",
    "Resource Type": "",
    "Policy Help URL": "",
    "Resource Help URL": "https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticmapreduce-cluster.html#cfn-elasticmapreduce-cluster-securityconfiguration"
}


#
# PR-AWS-0225-TRF
#

default emr_transit_encryption = null

aws_issue["emr_transit_encryption"] {
    resource := input.resources[i]
    lower(resource.type) == "aws_emr_security_configuration"
    configuration := resource.properties.configuration[_]
    EncryptionConfiguration := configuration.EncryptionConfiguration[_]
    lower(EncryptionConfiguration.EnableInTransitEncryption) == "false"
}

aws_bool_issue["emr_transit_encryption"] {
    resource := input.resources[i]
    lower(resource.type) == "aws_emr_security_configuration"
    configuration := resource.properties.configuration[_]
    EncryptionConfiguration := configuration.EncryptionConfiguration[_]
    not EncryptionConfiguration.EnableInTransitEncryption
}

emr_transit_encryption {
    lower(input.resources[i].type) == "aws_emr_security_configuration"
    not aws_issue["emr_transit_encryption"]
    not aws_bool_issue["emr_transit_encryption"]
}

emr_transit_encryption = false {
    aws_issue["emr_transit_encryption"]
}

emr_transit_encryption = false {
    aws_bool_issue["emr_transit_encryption"]
}

emr_transit_encryption_err = "AWS EMR cluster is not enabled with data encryption in transit" {
    aws_issue["emr_transit_encryption"]
} else = "AWS EMR cluster is not enabled with data encryption in transit" {
    aws_bool_issue["emr_transit_encryption"]
}

emr_transit_encryption_metadata := {
    "Policy Code": "PR-AWS-0225-TRF",
    "Type": "IaC",
    "Product": "AWS",
    "Language": "Terraform",
    "Policy Title": "AWS EMR cluster is not enabled with data encryption in transit",
    "Policy Description": "This policy identifies AWS EMR clusters which are not enabled with data encryption in transit. It is highly recommended to implement in-transit encryption in order to protect data from unauthorized access as it travels through the network, between clients and storage server. Enabling data encryption in-transit helps prevent unauthorized users from reading sensitive data between your EMR clusters and their associated storage systems.",
    "Resource Type": "",
    "Policy Help URL": "",
    "Resource Help URL": "https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticmapreduce-cluster.html#cfn-elasticmapreduce-cluster-securityconfiguration"
}
