package rule

# https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-eks-cluster.html

#
# PR-AWS-CFR-EKS-001
#

default eks_multiple_sg = null

aws_issue["eks_multiple_sg"] {
    resource := input.Resources[i]
    lower(resource.Type) == "aws::eks::cluster"
    not resource.Properties.ResourcesVpcConfig.SecurityGroupIds
}

aws_issue["eks_multiple_sg"] {
    resource := input.Resources[i]
    lower(resource.Type) == "aws::eks::cluster"
    count(resource.Properties.ResourcesVpcConfig.SecurityGroupIds) > 1
}

eks_multiple_sg {
    lower(input.Resources[i].Type) == "aws::eks::cluster"
    not aws_issue["eks_multiple_sg"]
}

eks_multiple_sg = false {
    aws_issue["eks_multiple_sg"]
}

eks_multiple_sg_err = "AWS EKS cluster control plane assigned multiple security groups" {
    aws_issue["eks_multiple_sg"]
}

eks_multiple_sg_metadata := {
    "Policy Code": "PR-AWS-CFR-EKS-001",
    "Type": "IaC",
    "Product": "AWS",
    "Language": "AWS Cloud formation",
    "Policy Title": "AWS EKS cluster control plane assigned multiple security groups",
    "Policy Description": "Amazon EKS strongly recommends that you use a dedicated security group for each cluster control plane (one per cluster). This policy checks the number of security groups assigned to your cluster's control plane and alerts if there are more than one.",
    "Resource Type": "",
    "Policy Help URL": "",
    "Resource Help URL": "https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-eks-cluster.html"
}

#
# PR-AWS-CFR-EKS-002
#

default eks_version = null

aws_issue["eks_version"] {
    resource := input.Resources[i]
    lower(resource.Type) == "aws::eks::cluster"
    startswith(lower(resource.Properties.Version), "1.9.")
}


eks_version {
    lower(input.Resources[i].Type) == "aws::eks::cluster"
    not aws_issue["eks_version"]
}

eks_version = false {
    aws_issue["eks_version"]
}

eks_version_err = "AWS EKS unsupported Master node version." {
    aws_issue["eks_version"]
}
eks_version_metadata := {
    "Policy Code": "PR-AWS-CFR-EKS-002",
    "Type": "IaC",
    "Product": "AWS",
    "Language": "AWS Cloud formation",
    "Policy Title": "AWS EKS unsupported Master node version.",
    "Policy Description": "Ensure your EKS Master node version is supported. This policy checks your EKS master node version and generates an alert if the version running is unsupported.",
    "Resource Type": "",
    "Policy Help URL": "",
    "Resource Help URL": "https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-eks-cluster.html#cfn-eks-cluster-version"
}


#
# PR-AWS-CFR-EKS-003
#

default eks_encryption_resources = null

aws_issue["eks_encryption_resources"] {
    resource := input.Resources[i]
    lower(resource.Type) == "aws::eks::cluster"
    EncryptionConfig := resource.Properties.EncryptionConfig[_]
    not EncryptionConfig.Resources
}

aws_issue["eks_encryption_resources"] {
    resource := input.Resources[i]
    lower(resource.Type) == "aws::eks::cluster"
    EncryptionConfig := resource.Properties.EncryptionConfig[_]
    count(EncryptionConfig.Resources) == 0
}


eks_encryption_resources {
    lower(input.Resources[i].Type) == "aws::eks::cluster"
    not aws_issue["eks_encryption_resources"]
}

eks_encryption_resources = false {
    aws_issue["eks_encryption_resources"]
}

eks_encryption_resources_err = "Ensure AWS EKS cluster has secrets encryption enabled" {
    aws_issue["eks_encryption_resources"]
}
eks_encryption_resources_metadata := {
    "Policy Code": "PR-AWS-CFR-EKS-003",
    "Type": "IaC",
    "Product": "AWS",
    "Language": "AWS Cloud formation",
    "Policy Title": "Ensure AWS EKS cluster has secrets encryption enabled",
    "Policy Description": "Secrets in Kubernetes enables managing sensitive information such as passwords and API keys using Kubernetes-native APIs. When creating a secret resource the Kubernetes API server stores it in etcd in a base64 encoded form.",
    "Resource Type": "",
    "Policy Help URL": "",
    "Resource Help URL": "https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-eks-cluster-encryptionconfig.html#cfn-eks-cluster-encryptionconfig-resources"
}



#
# PR-AWS-CFR-EKS-004
#

default eks_encryption_kms = null

aws_issue["eks_encryption_kms"] {
    resource := input.Resources[i]
    lower(resource.Type) == "aws::eks::cluster"
    EncryptionConfig := resource.Properties.EncryptionConfig[_]
    not EncryptionConfig.Provider.keyArn
}

aws_issue["eks_encryption_kms"] {
    resource := input.Resources[i]
    lower(resource.Type) == "aws::eks::cluster"
    EncryptionConfig := resource.Properties.EncryptionConfig[_]
    count(EncryptionConfig.Provider.keyArn) == 0
}


eks_encryption_kms {
    lower(input.Resources[i].Type) == "aws::eks::cluster"
    not aws_issue["eks_encryption_kms"]
}

eks_encryption_kms = false {
    aws_issue["eks_encryption_kms"]
}

eks_encryption_kms_err = "Ensure Kubernetes secrets are encrypted using CMKs managed in AWS KMS" {
    aws_issue["eks_encryption_kms"]
}
eks_encryption_kms_metadata := {
    "Policy Code": "PR-AWS-CFR-EKS-004",
    "Type": "IaC",
    "Product": "AWS",
    "Language": "AWS Cloud formation",
    "Policy Title": "Ensure Kubernetes secrets are encrypted using CMKs managed in AWS KMS",
    "Policy Description": "Application-layer Secrets Encryption provides an additional layer of security for sensitive data, such as user defined Secrets and Secrets required for the operation of the cluster, such as service account keys, which are all stored in etcd. Using this functionality, you can use a key, that you manage in AWS KMS, to encrypt data at the application layer",
    "Resource Type": "",
    "Policy Help URL": "",
    "Resource Help URL": "https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-eks-cluster-encryptionconfig.html#cfn-eks-cluster-encryptionconfig-provider"
}
