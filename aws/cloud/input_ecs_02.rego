package rule

default rulepass = false

# API Documentation: https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_DescribeTaskDefinition.html
# Id: 49

rulepass = true{
   	not input.taskDefinition.containerDefinitions[0].user
}

rulepass = true{
   	input.taskDefinition.containerDefinitions[0].user!="root"
}