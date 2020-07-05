package rule

default rulepass = true

# API: https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DescribeSecurityGroups.html
# ID: 162

rulepass = false {
   ingress := input.SecurityGroups[_].IpPermissions[_]
   ingress.IpRanges[_].CidrIp == "0.0.0.0/0"
   to_number(ingress.FromPort) <= 20
   to_number(ingress.ToPort) >= 20
}

rulepass = false {
   ingress := input.SecurityGroups[_].IpPermissions[_]
   ingress.Ipv6Ranges[_].CidrIpv6="::/0"
   to_number(ingress.FromPort) <= 20
   to_number(ingress.ToPort) >= 20
}
