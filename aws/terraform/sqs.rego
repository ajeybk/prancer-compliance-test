package rule


#
# PR-AWS-TRF-SQS-001
#

default sqs_deadletter = null

aws_issue["sqs_deadletter"] {
    resource := input.resources[i]
    lower(resource.type) == "aws_sqs_queue"
    not resource.properties.redrive_policy.deadLetterTargetArn
}

source_path[{"sqs_deadletter": metadata}] {
    resource := input.resources[i]
    lower(resource.type) == "aws_sqs_queue"
    not resource.properties.redrive_policy.deadLetterTargetArn

    metadata := {
        "resource_path": [
            ["resources", i, "properties", "redrive_policy", "deadLetterTargetArn"]
        ],
    }
}

sqs_deadletter {
    lower(input.resources[i].type) == "aws_sqs_queue"
    not aws_issue["sqs_deadletter"]
}

sqs_deadletter = false {
    aws_issue["sqs_deadletter"]
}

sqs_deadletter_err = "AWS SQS does not have a dead letter queue configured" {
    aws_issue["sqs_deadletter"]
}

sqs_deadletter_metadata := {
    "Policy Code": "PR-AWS-TRF-SQS-001",
    "Type": "IaC",
    "Product": "AWS",
    "Language": "Terraform",
    "Policy Title": "AWS SQS does not have a dead letter queue configured",
    "Policy Description": "This policy identifies AWS Simple Queue Services (SQS) which does not have dead letter queue configured. Dead letter queues are useful for debugging your application or messaging system because they let you isolate problematic messages to determine why their processing doesn't succeed.",
    "Resource Type": "aws_sqs_queue",
    "Policy Help URL": "",
    "Resource Help URL": "https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sqs-queues.html"
}

#
# PR-AWS-TRF-SQS-002
#

default sqs_encrypt_key = null

aws_issue["sqs_encrypt_key"] {
    resource := input.resources[i]
    lower(resource.type) == "aws_sqs_queue"
    resource.properties.kms_master_key_id
    resource.properties.kms_master_key_id != null
    contains(lower(resource.properties.kms_master_key_id), "alias/aws/sqs")
}

source_path[{"sqs_encrypt_key": metadata}] {
    resource := input.resources[i]
    lower(resource.type) == "aws_sqs_queue"
    resource.properties.kms_master_key_id
    resource.properties.kms_master_key_id != null
    contains(lower(resource.properties.kms_master_key_id), "alias/aws/sqs")

    metadata := {
        "resource_path": [
            ["resources", i, "properties", "kms_master_key_id"]
        ],
    }
}

sqs_encrypt_key {
    lower(input.resources[i].type) == "aws_sqs_queue"
    not aws_issue["sqs_encrypt_key"]
    not aws_attribute_absence["sqs_encrypt_key"]
}

sqs_encrypt_key = false {
    aws_issue["sqs_encrypt_key"]
}

sqs_encrypt_key = false {
    aws_attribute_absence["sqs_encrypt_key"]
}

sqs_encrypt_key_err = "AWS SQS queue encryption using default KMS key instead of CMK" {
    aws_issue["sqs_encrypt_key"]
} else = "SQS Queue attribute kms_master_key_id missing in the resource" {
    aws_attribute_absence["sqs_encrypt_key"]
}

sqs_encrypt_key_metadata := {
    "Policy Code": "PR-AWS-TRF-SQS-002",
    "Type": "IaC",
    "Product": "AWS",
    "Language": "Terraform",
    "Policy Title": "AWS SQS queue encryption using default KMS key instead of CMK",
    "Policy Description": "This policy identifies CloudFront web distributions which have a default SSL certificate to access CloudFront content. It is a best practice to use custom SSL Certificate to access CloudFront content. It gives you full control over the content data. custom SSL certificates also allow your users to access your content by using an alternate domain name. You can use a certificate stored in AWS Certificate Manager (ACM) or you can use a certificate stored in IAM.",
    "Resource Type": "aws_sqs_queue",
    "Policy Help URL": "",
    "Resource Help URL": "https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sqs-queues.html"
}

#
# PR-AWS-TRF-SQS-003
#

default sqs_encrypt = null

aws_attribute_absence["sqs_encrypt"] {
    resource := input.resources[i]
    lower(resource.type) == "aws_sqs_queue"
    not resource.properties.kms_master_key_id
}

source_path[{"sqs_encrypt": metadata}] {
    resource := input.resources[i]
    lower(resource.type) == "aws_sqs_queue"
    not resource.properties.kms_master_key_id

    metadata := {
        "resource_path": [
            ["resources", i, "properties", "kms_master_key_id"]
        ],
    }
}

aws_attribute_absence["sqs_encrypt"] {
	resource := input.resources[i]
	lower(resource.type) == "aws_sqs_queue"
	resource.properties.kms_master_key_id == null
}

source_path[{"sqs_encrypt": metadata}] {
	resource := input.resources[i]
	lower(resource.type) == "aws_sqs_queue"
	resource.properties.kms_master_key_id == null

    metadata := {
        "resource_path": [
            ["resources", i, "properties", "kms_master_key_id"]
        ],
    }
}

aws_issue["sqs_encrypt"] {
    resource := input.resources[i]
    lower(resource.type) == "aws_sqs_queue"
    resource.properties.kms_master_key_id != null
    count(resource.properties.kms_master_key_id) == 0
}

source_path[{"sqs_encrypt": metadata}] {
    resource := input.resources[i]
    lower(resource.type) == "aws_sqs_queue"
    resource.properties.kms_master_key_id != null
    count(resource.properties.kms_master_key_id) == 0

    metadata := {
        "resource_path": [
            ["resources", i, "properties", "kms_master_key_id"]
        ],
    }
}

sqs_encrypt {
    lower(input.resources[i].type) == "aws_sqs_queue"
    not aws_issue["sqs_encrypt"]
    not aws_attribute_absence["sqs_encrypt"]
}

sqs_encrypt = false {
    aws_issue["sqs_encrypt"]
}

sqs_encrypt = false {
    aws_attribute_absence["sqs_encrypt"]
}

sqs_encrypt_err = "AWS SQS server side encryption not enabled" {
    aws_issue["sqs_encrypt"]
} else = "SQS Queue attribute kms_master_key_id missing in the resource" {
    aws_attribute_absence["sqs_encrypt"]
}

sqs_encrypt_metadata := {
    "Policy Code": "PR-AWS-TRF-SQS-003",
    "Type": "IaC",
    "Product": "AWS",
    "Language": "Terraform",
    "Policy Title": "AWS SQS server side encryption not enabled",
    "Policy Description": "SSE lets you transmit sensitive data in encrypted queues. SSE protects the contents of messages in Amazon SQS queues using keys managed in the AWS Key Management Service (AWS KMS). SSE encrypts messages as soon as Amazon SQS receives them. The messages are stored in encrypted form and Amazon SQS decrypts messages only when they are sent to an authorized consumer.<br><br>SQS SSE and the AWS KMS security standards can help you meet encryption-related compliance requirements.",
    "Resource Type": "aws_sqs_queue",
    "Policy Help URL": "",
    "Resource Help URL": "https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sqs-queues.html"
}

#
# PR-AWS-TRF-SQS-004
#

default sqs_policy_public = null

aws_issue["sqs_policy_public"] {
    resource := input.resources[i]
    lower(resource.type) == "aws_sqs_queue_policy"
    statement := resource.properties.policy.Statement[j]
    lower(statement.Effect) == "allow"
    statement.Principal == "*"
}

source_path[{"sqs_policy_public": metadata}] {
    resource := input.resources[i]
    lower(resource.type) == "aws_sqs_queue_policy"
    statement := resource.properties.policy.Statement[j]
    lower(statement.Effect) == "allow"
    statement.Principal == "*"
    metadata := {
        "resource_path": [
            ["resources", i, "properties", "policy", "Statement", j, "Principal"]
        ],
    }
}

aws_issue["sqs_policy_public"] {
    resource := input.resources[i]
    lower(resource.type) == "aws_sqs_queue_policy"
    statement := resource.properties.policy.Statement[j]
    lower(statement.Effect) == "allow"
    statement.Principal.AWS == "*"
}

source_path[{"sqs_policy_public": metadata}] {
    resource := input.resources[i]
    lower(resource.type) == "aws_sqs_queue_policy"
    statement := resource.properties.policy.Statement[j]
    lower(statement.Effect) == "allow"
    statement.Principal.AWS == "*"
    metadata := {
        "resource_path": [
            ["resources", i, "properties", "policy", "Statement", j, "Principal", "AWS"]
        ],
    }
}

aws_issue["sqs_policy_public"] {
    resource := input.resources[i]
    lower(resource.type) == "aws_sqs_queue_policy"
    statement := resource.properties.policy.Statement[j]
    lower(statement.Effect) == "allow"
    statement.Principal.AWS[k] = "*"
}

source_path[{"sqs_policy_public": metadata}] {
    resource := input.resources[i]
    lower(resource.type) == "aws_sqs_queue_policy"
    statement := resource.properties.policy.Statement[j]
    lower(statement.Effect) == "allow"
    statement.Principal.AWS[k] = "*"
    metadata := {
        "resource_path": [
            ["resources", i, "properties", "policy", "Statement", j, "Principal", "AWS", k]
        ],
    }
}

sqs_policy_public {
    lower(input.resources[i].type) == "aws_sqs_queue_policy"
    not aws_issue["sqs_policy_public"]
}

sqs_policy_public = false {
    aws_issue["sqs_policy_public"]
}

sqs_policy_public_err = "Ensure SQS queue policy is not publicly accessible" {
    aws_issue["sqs_policy_public"]
}

sqs_policy_public_metadata := {
    "Policy Code": "PR-AWS-TRF-SQS-004",
    "Type": "IaC",
    "Product": "AWS",
    "Language": "Terraform",
    "Policy Title": "Ensure SQS queue policy is not publicly accessible",
    "Policy Description": "Public SQS queues potentially expose existing interfaces to unwanted 3rd parties that can tap into an existing data stream, resulting in data leak to an unwanted party.",
    "Resource Type": "",
    "Policy Help URL": "",
    "Resource Help URL": "https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/sqs_queue_policy"
}


#
# PR-AWS-TRF-SQS-005
#

default sqs_policy_action = null

aws_issue["sqs_policy_action"] {
    resource := input.resources[i]
    lower(resource.type) == "aws_sqs_queue_policy"
    statement := resource.properties.policy.Statement[j]
    lower(statement.Effect) == "allow"
    statement.Action == "*"
}

source_path[{"sqs_policy_action": metadata}] {
    resource := input.resources[i]
    lower(resource.type) == "aws_sqs_queue_policy"
    statement := resource.properties.policy.Statement[j]
    lower(statement.Effect) == "allow"
    statement.Action == "*"
    metadata := {
        "resource_path": [
            ["resources", i, "properties", "policy", "Statement", j, "Action"]
        ],
    }
}

aws_issue["sqs_policy_action"] {
    resource := input.resources[i]
    lower(resource.type) == "aws_sqs_queue_policy"
    statement := resource.properties.policy.Statement[j]
    lower(statement.Effect) == "allow"
    statement.Action[k] == "*"
}

source_path[{"sqs_policy_action": metadata}] {
    resource := input.resources[i]
    lower(resource.type) == "aws_sqs_queue_policy"
    statement := resource.properties.policy.Statement[j]
    lower(statement.Effect) == "allow"
    statement.Action[k] == "*"
    metadata := {
        "resource_path": [
            ["resources", i, "properties", "policy", "Statement", j, "Action", k]
        ],
    }
}

sqs_policy_action {
    lower(input.resources[i].type) == "aws_sqs_queue_policy"
    not aws_issue["sqs_policy_action"]
}

sqs_policy_action = false {
    aws_issue["sqs_policy_action"]
}

sqs_policy_action_err = "Ensure SQS policy documents do not allow all actions" {
    aws_issue["sqs_policy_action"]
}

sqs_policy_action_metadata := {
    "Policy Code": "PR-AWS-TRF-SQS-005",
    "Type": "IaC",
    "Product": "AWS",
    "Language": "Terraform",
    "Policy Title": "Ensure SQS policy documents do not allow all actions",
    "Policy Description": "This level of access could potentially grant unwanted and unregulated access to anyone given this policy document setting. We recommend you to write a refined policy describing the specific action allowed or required by the specific policy holder",
    "Resource Type": "",
    "Policy Help URL": "",
    "Resource Help URL": "https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/sqs_queue_policy"
}