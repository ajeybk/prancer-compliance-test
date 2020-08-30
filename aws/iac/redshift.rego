package rule

# https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-redshift-cluster.html
# https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-redshift-clusterparametergroup.html

#
# Id: 133
#

default redshift_encrypt_key = null

aws_attribute_absence["redshift_encrypt_key"] {
    resource := input.resources[_]
    lower(resource.Type) == "aws::redshift::cluster"
    not resource.Properties.KmsKeyId
}

aws_issue["redshift_encrypt_key"] {
    resource := input.resources[_]
    lower(resource.Type) == "aws::redshift::cluster"
    not startswith(lower(resource.Properties.KmsKeyId), "arn:")
}

aws_issue["redshift_encrypt_key"] {
    resource := input.resources[_]
    lower(resource.Type) == "aws::redshift::cluster"
    not resource.Properties.Encrypted
}

redshift_encrypt_key {
    lower(input.resources[_].Type) == "aws::redshift::cluster"
    not aws_issue["redshift_encrypt_key"]
    not aws_attribute_absence["redshift_encrypt_key"]
}

redshift_encrypt_key = false {
    aws_issue["redshift_encrypt_key"]
}

redshift_encrypt_key = false {
    aws_attribute_absence["redshift_encrypt_key"]
}

redshift_encrypt_key_err = "AWS Redshift Cluster not encrypted using Customer Managed Key" {
    aws_issue["redshift_encrypt_key"]
}

redshift_encrypt_key_miss_err = "Redshift attribute KmsKeyId missing in the resource" {
    aws_attribute_absence["redshift_encrypt_key"]
}

#
# Id: 134
#

default redshift_public = null

aws_issue["redshift_public"] {
    resource := input.resources[_]
    lower(resource.Type) == "aws::redshift::cluster"
    resource.Properties.PubliclyAccessible
}

redshift_public {
    lower(input.resources[_].Type) == "aws::redshift::cluster"
    not aws_issue["redshift_public"]
}

redshift_public = false {
    aws_issue["redshift_public"]
}

redshift_public_err = "AWS Redshift clusters should not be publicly accessible" {
    aws_issue["redshift_public"]
}

#
# Id: 135
#

default redshift_audit = null

aws_attribute_absence["redshift_audit"] {
    resource := input.resources[_]
    lower(resource.Type) == "aws::redshift::cluster"
    not resource.Properties.LoggingProperties.BucketName
}

aws_issue["redshift_audit"] {
    resource := input.resources[_]
    lower(resource.Type) == "aws::redshift::cluster"
    count(resource.Properties.LoggingProperties.BucketName) == 0
}

redshift_audit {
    lower(input.resources[_].Type) == "aws::redshift::cluster"
    not aws_issue["redshift_audit"]
    not aws_attribute_absence["redshift_audit"]
}

redshift_audit = false {
    aws_issue["redshift_audit"]
}

redshift_audit = false {
    aws_attribute_absence["redshift_audit"]
}

redshift_audit_err = "AWS Redshift database does not have audit logging enabled" {
    aws_issue["redshift_audit"]
}

redshift_audit_miss_err = "Redshift attribute LoggingProperties.BucketName missing in the resource" {
    aws_attribute_absence["redshift_audit"]
}


#
# Id: 136
#

default redshift_require_ssl = null

aws_attribute_absence["redshift_require_ssl"] {
    resource := input.resources[_]
    lower(resource.Type) == "aws::redshift::clusterparametergroup"
    not resource.Properties.Parameters
}

aws_issue["redshift_require_ssl"] {
    resource := input.resources[_]
    lower(resource.Type) == "aws::redshift::clusterparametergroup"
    count([c | lower(resource.Properties.Parameters[_].ParameterName) == "require_ssl"; c := 1]) == 0
}

aws_issue["redshift_require_ssl"] {
    resource := input.resources[_]
    lower(resource.Type) == "aws::redshift::clusterparametergroup"
    params = resource.Properties.Parameters[_]
    lower(params.ParameterName) == "require_ssl"
    lower(params.ParameterValue) == "false"
}

redshift_require_ssl {
    lower(input.resources[_].Type) == "aws::redshift::clusterparametergroup"
    not aws_issue["redshift_require_ssl"]
    not aws_attribute_absence["redshift_require_ssl"]
}

redshift_require_ssl = false {
    aws_issue["redshift_require_ssl"]
}

redshift_require_ssl = false {
    aws_attribute_absence["redshift_require_ssl"]
}

redshift_require_ssl_err = "AWS Redshift does not have require_ssl configured" {
    aws_issue["redshift_require_ssl"]
}

redshift_require_ssl_miss_err = "Redshift attribute Properties missing in the resource" {
    aws_attribute_absence["redshift_require_ssl"]
}

#
# Id: 137
#

default redshift_encrypt = null

aws_issue["redshift_encrypt"] {
    resource := input.resources[_]
    lower(resource.Type) == "aws::redshift::cluster"
    not resource.Properties.Encrypted
}

redshift_encrypt {
    lower(input.resources[_].Type) == "aws::redshift::cluster"
    not aws_issue["redshift_encrypt"]
}

redshift_encrypt = false {
    aws_issue["redshift_encrypt"]
}

redshift_encrypt_err = "AWS Redshift instances are not encrypted" {
    aws_issue["redshift_encrypt"]
}