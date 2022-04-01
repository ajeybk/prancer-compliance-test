package rego


# https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/AWS_IAM.html
#
# PR-AWS-CLD-IAM-001
#
default iam_wildcard_resource = true

iam_wildcard_resource = false {
    # lower(resource.Type) == "aws::iam::policy"
    statement := input.PolicyVersion.Document.Statement[j]
    lower(statement.Resource) == "*"
}

iam_wildcard_resource_err = "Ensure no wildcards are specified in IAM policy with 'Resource' section" {
    not iam_wildcard_resource
}

iam_wildcard_resource_metadata := {
    "Policy Code": "PR-AWS-CLD-IAM-001",
    "Type": "cloud",
    "Product": "AWS",
    "Language": "AWS Cloud",
    "Policy Title": "Ensure no wildcards are specified in IAM policy with 'Resource' section",
    "Policy Description": "Using a wildcard in the Resource element in a role's trust policy would allow any IAM user in an account to access all Resources. This is a significant security gap and can be used to gain access to sensitive data.",
    "Resource Type": "",
    "Policy Help URL": "",
    "Resource Help URL": "https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-policy.html"
}

#
# PR-AWS-CLD-IAM-002
#
default iam_wildcard_action = true

iam_wildcard_action = false {
    # lower(resource.Type) == "aws::iam::managedpolicy"
    statement := input.PolicyVersion.Document.Statement[j]
    lower(statement.Action) == "*"
}


iam_wildcard_action = false {
    # lower(resource.Type) == "aws::iam::policy"
    statement := input.PolicyVersion.Document.Statement[j]
    lower(statement.Action) == "*"
}

iam_wildcard_action_err = "Ensure no wildcards are specified in IAM policy with 'Action' section" {
    not iam_wildcard_action
}

iam_wildcard_action_metadata := {
    "Policy Code": "PR-AWS-CLD-IAM-002",
    "Type": "cloud",
    "Product": "AWS",
    "Language": "AWS Cloud",
    "Policy Title": "Ensure no wildcards are specified in IAM policy with 'Action' section",
    "Policy Description": "Using a wildcard in the Action element in a role's trust policy would allow any IAM user in an account to Manage all resources and a user can manipulate data. This is a significant security gap and can be used to gain access to sensitive data.",
    "Resource Type": "",
    "Policy Help URL": "",
    "Resource Help URL": "https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-policy.html"
}



#
# PR-AWS-CLD-IAM-003
#
default iam_wildcard_principal = true

iam_wildcard_principal = false {
    # lower(resource.Type) == "aws::iam::role"
    statement := input.PolicyVersion.Document.Statement[j]
    lower(statement.Principal) == "*"
}

iam_wildcard_principal_err = "Ensure no wildcards are specified in IAM trust-relationship policy with 'Principal' section" {
    not iam_wildcard_principal
}

iam_wildcard_principal_metadata := {
    "Policy Code": "PR-AWS-CLD-IAM-003",
    "Type": "cloud",
    "Product": "AWS",
    "Language": "AWS Cloud",
    "Policy Title": "Ensure no wildcards are specified in IAM trust-relationship policy with 'Principal' section",
    "Policy Description": "Using a wildcard in the Principal element in a role's trust policy would allow any IAM user in any account to access the role. This is a significant security gap and can be used to gain access to sensitive data.",
    "Resource Type": "",
    "Policy Help URL": "",
    "Resource Help URL": "https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-role.html"
}


#
# PR-AWS-CLD-IAM-004
#
default iam_resource_format = true

iam_resource_format = false {
    statement := input.PolicyVersion.Document.Statement[j]
    lower(statement.Resource) == "arn:aws:*:*"
}

iam_resource_format_err = "Ensure no IAM policy has a resource specified in the following format:'arn:aws:*:*'" {
    not iam_resource_format
}

iam_resource_format_metadata := {
    "Policy Code": "PR-AWS-CLD-IAM-004",
    "Type": "cloud",
    "Product": "AWS",
    "Language": "AWS Cloud",
    "Policy Title": "Ensure no IAM policy has a resource specified in the following format:'arn:aws:*:*'",
    "Policy Description": "Ensure no IAM policy has a resource specified in the following format:'arn:aws:*:*' AWS only allows fully qualified ARNs or '*'. The above mentioned ARN is not supported in an identity-based policy",
    "Resource Type": "",
    "Policy Help URL": "",
    "Resource Help URL": "https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-policy.html"
}



#
# PR-AWS-CLD-IAM-005
#
default iam_assume_permission = true

iam_assume_permission = false {
    # lower(resource.Type) == "aws::iam::policy"
    statement := input.PolicyVersion.Document.Statement[j]
    lower(statement.Effect) == "allow"
    contains(lower(statement.Action), "sts:assumerole")
    statement.Condition == "*"
}

iam_assume_permission = false {
    # lower(resource.Type) == "aws::iam::policy"
    statement := input.PolicyVersion.Document.Statement[j]
    lower(statement.Effect) == "allow"
    contains(lower(statement.Action), "sts:assumerole")
    not statement.Condition
}

iam_assume_permission_err = "AWS IAM policy allows assume role permission across all services" {
    not iam_assume_permission
}

iam_assume_permission_metadata := {
    "Policy Code": "PR-AWS-CLD-IAM-005",
    "Type": "cloud",
    "Product": "AWS",
    "Language": "AWS Cloud",
    "Policy Title": "AWS IAM policy allows assume role permission across all services",
    "Policy Description": "This policy identifies AWS IAM policy which allows assume role permission across all services. Typically, AssumeRole is used if you have multiple accounts and need to access resources from each account then you can create long term credentials in one account and then use temporary security credentials to access all the other accounts by assuming roles in those accounts.",
    "Resource Type": "",
    "Policy Help URL": "",
    "Resource Help URL": "https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-policy.html"
}

#
# PR-AWS-CLD-IAM-006
#
default iam_all_traffic = true

iam_all_traffic = false {
    # lower(resource.Type) == "aws::iam::policy"
    statement := input.PolicyVersion.Document.Statement[j]
    source_ip := statement.Condition["ForAnyValue:IpAddress"]["aws:SourceIp"][k]
    lower(source_ip) == "0.0.0.0/0"
}

iam_all_traffic_err = "AWS IAM policy is overly permissive to all traffic via condition clause" {
    not iam_all_traffic
}

iam_all_traffic_metadata := {
    "Policy Code": "PR-AWS-CLD-IAM-006",
    "Type": "cloud",
    "Product": "AWS",
    "Language": "AWS Cloud",
    "Policy Title": "AWS IAM policy is overly permissive to all traffic via condition clause",
    "Policy Description": "This policy identifies IAM policies that have a policy that is overly permissive to all traffic via condition clause. If any IAM policy statement with a condition containing 0.0.0.0/0 or ::/0, it allows all traffic to resources attached to that IAM policy. It is highly recommended to have the least privileged IAM policy to protect the data leakage and unauthorized access.",
    "Resource Type": "",
    "Policy Help URL": "",
    "Resource Help URL": "https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-policy.html"
}

#
# PR-AWS-CLD-IAM-007
#
default iam_administrative_privileges = true

iam_administrative_privileges = false {
    # lower(resource.Type) == "aws::iam::policy"
    statement := input.PolicyVersion.Document.Statement[j]
    statement.Action == "*"
    statement.Resource == "*"
    lower(statement.Effect) == "allow"
}

iam_administrative_privileges_err = "AWS IAM policy allows full administrative privileges" {
    not iam_administrative_privileges
}

iam_administrative_privileges_metadata := {
    "Policy Code": "PR-AWS-CLD-IAM-007",
    "Type": "cloud",
    "Product": "AWS",
    "Language": "AWS Cloud",
    "Policy Title": "AWS IAM policy allows full administrative privileges",
    "Policy Description": "This policy identifies IAM policies with full administrative privileges. IAM policies are the means by which privileges are granted to users, groups, or roles. It is recommended and considered a standard security advice to grant least privilege like granting only the permissions required to perform a task. Determine what users need to do and then craft policies for them that let the users perform only those tasks, instead of allowing full administrative privileges.",
    "Resource Type": "",
    "Policy Help URL": "",
    "Resource Help URL": "https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-policy.html"
}


#
# PR-AWS-CLD-IAM-008
#
default iam_user_group_attach = true

iam_user_group_attach = false {
    # lower(resource.Type) == "aws::iam::usertogroupaddition"
    not input.PolicyVersion.Document
}

iam_user_group_attach = false {
    # lower(resource.Type) == "aws::iam::usertogroupaddition"
    count(input.PolicyVersion.Document) < 1
}

iam_user_group_attach_err = "Ensure IAM groups contains at least one IAM user" {
    not iam_user_group_attach
}

iam_user_group_attach_metadata := {
    "Policy Code": "PR-AWS-CLD-IAM-008",
    "Type": "cloud",
    "Product": "AWS",
    "Language": "AWS Cloud",
    "Policy Title": "Ensure IAM groups contains at least one IAM user",
    "Policy Description": "Ensure that your Amazon Identity and Access Management (IAM) users are members of at least one IAM group in order to adhere to IAM security best practices",
    "Resource Type": "",
    "Policy Help URL": "",
    "Resource Help URL": "https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-addusertogroup.html"
}