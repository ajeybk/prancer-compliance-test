package rule

default rulepass = true

# API: https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetBucketPolicy.html
# ID: 143

rulepass = false {
   policy := input.Policy.Statement[_]
   policy.Principal == "*"
   startswith(lower(policy.Action), "s3:put")
   lower(policy.Effect) == "allow"
}

rulepass = false {
   policy := input.Policy.Statement[_]
   policy.Principal == "*"
   policy.Action == "*"
   lower(policy.Effect) == "allow"
}

rulepass = false {
   policy := input.Policy.Statement[_]
   policy.Principal.AWS == "*"
   startswith(lower(policy.Action), "s3:put")
   lower(policy.Effect) == "allow"
}

rulepass = false {
   policy := input.Policy.Statement[_]
   policy.Principal.AWS == "*"
   policy.Action == "*"
   lower(policy.Effect) == "allow"
}