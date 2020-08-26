package rule

default rulepass = false

# API Documentation: https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DescribeVolumes.html
# Id: 35

rulepass = true{
   input.Volumes[_].Attachments[_].State="attached"
}

rulepass = true{
   input.Volumes[_].Attachments[_]
}

# The value for the key input.Volumes[_].Attachments[_].State is equal to "attached" and the attachment list is not null. As both
# the above conditions are True. Therefore the test will pass.