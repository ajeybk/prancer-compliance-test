package rule

# https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codedeploy-application.html#cfn-codedeploy-application-computeplatform
#
# PR-AWS-0206-CFR
#

default deploy_compute_platform = null

aws_attribute_absence["deploy_compute_platform"] {
    resource := input.Resources[i]
    lower(resource.Type) == "aws::codepipeline::pipeline"
    not resource.Properties.ArtifactStore.EncryptionKey.Id
}

aws_issue["deploy_compute_platform"] {
    resource := input.Resources[i]
    lower(resource.Type) == "aws::codepipeline::pipeline"
    resource.Properties.ArtifactStore.EncryptionKey.Id
    lower(resource.Properties.ArtifactStore.EncryptionKey.Type) != "kms"
}


deploy_compute_platform {
    lower(input.Resources[i].Type) == "aws::codepipeline::pipeline"
    not aws_issue["deploy_compute_platform"]
    not aws_attribute_absence["deploy_compute_platform"]
}

deploy_compute_platform = false {
    aws_issue["deploy_compute_platform"]
}

deploy_compute_platform = false {
    aws_attribute_absence["deploy_compute_platform"]
}

deploy_compute_platform_err = "Code Pipeline Encryption at rest with customer-managed key (CMK) should be enabled" {
    aws_issue["deploy_compute_platform"]
} else = "Code Pipeline EncryptionKey absent" {
    aws_attribute_absence["deploy_compute_platform"]
}


deploy_compute_platform_metadata := {
    "Policy Code": "PR-AWS-0206-CFR",
    "Type": "IaC",
    "Product": "AWS",
    "Language": "AWS Cloud formation",
    "Policy Title": "Code Pipeline Encryption at rest with customer-managed key (CMK) should be enabled",
    "Policy Description": "The type of encryption key When creating or updating a pipeline, the value must be cmk(customer-managed key)",
    "Resource Type": "",
    "Policy Help URL": "",
    "Resource Help URL": "https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codedeploy-application.html#cfn-codedeploy-application-computeplatform"
}
