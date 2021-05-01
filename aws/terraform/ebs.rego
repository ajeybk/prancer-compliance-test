package rule

# https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-ebs-volume.html

#
# PR-AWS-0041-TRF
#

default ebs_encrypt = null

aws_issue["ebs_encrypt"] {
    resource := input.resources[_]
    lower(resource.type) == "aws_ebs_volume"
    not resource.properties.encrypted
}

ebs_encrypt {
    lower(input.resources[_].type) == "aws_ebs_volume"
    not aws_issue["ebs_encrypt"]
}

ebs_encrypt = false {
    aws_issue["ebs_encrypt"]
}

ebs_encrypt_err = "AWS EBS volumes are not encrypted" {
    aws_issue["ebs_encrypt"]
}
