package rule

# https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-restapi-endpointconfiguration.html

#
# PR-AWS-0202-CFR
#

default gateway_private = null

aws_attribute_absence["gateway_private"] {
    resource := input.Resources[i]
    lower(resource.Type) == "aws::apigateway::restapi"
    not resource.Properties.EndpointConfiguration.Types
}

aws_issue["gateway_private"] {
    resource := input.Resources[i]
    lower(resource.Type) == "aws::apigateway::restapi"
    count(resource.Properties.EndpointConfiguration.Types) == 0
}

aws_issue["gateway_private"] {
    resource := input.Resources[i]
    lower(resource.Type) == "aws::apigateway::restapi"
    type := resource.Properties.EndpointConfiguration.Types[_]
    count([c | lower(type)== "private"; c:=1]) == 0
}

gateway_private {
    lower(input.Resources[i].Type) == "aws::apigateway::restapi"
    not aws_issue["gateway_private"]
    not aws_attribute_absence["gateway_private"]
}

gateway_private = false {
    aws_issue["gateway_private"]
}

gateway_private = false {
    aws_attribute_absence["gateway_private"]
}

gateway_private_err = "AWS RestApi EndpointConfiguration types not contains private" {
    aws_issue["gateway_private"]
} else = "AWS RestApi EndpointConfiguration.Type is absent" {
    aws_attribute_absence["gateway_private"]
}

gateway_private_metadata := {
    "Policy Code": "PR-AWS-0202-CFR",
    "Type": "IaC",
    "Product": "AWS",
    "Language": "AWS Cloud formation",
    "Policy Title": "AWS RestApi EndpointConfiguration types not contains private",
    "Policy Description": "Ensure that the Api endpoint type in api gateway is set to private and Is not exposed to the public internet",
    "Resource Type": "",
    "Policy Help URL": "",
    "Resource Help URL": "https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-restapi-endpointconfiguration.html"
}


#
# PR-AWS-0203-CFR
#

default gateway_validate_parameter = null

aws_bool_issue["gateway_validate_parameter"] {
    resource := input.Resources[i]
    lower(resource.Type) == "aws::apigateway::requestvalidator"
    not resource.Properties.ValidateRequestParameters
}

aws_issue["gateway_validate_parameter"] {
    resource := input.Resources[i]
    lower(resource.Type) == "aws::apigateway::requestvalidator"
    lower(resource.Properties.ValidateRequestParameters) == "false"
}

gateway_validate_parameter {
    lower(input.Resources[i].Type) == "aws::apigateway::requestvalidator"
    not aws_issue["gateway_validate_parameter"]
    not aws_bool_issue["gateway_validate_parameter"]
}

gateway_validate_parameter = false {
    aws_issue["gateway_validate_parameter"]
}

gateway_validate_parameter = false {
    aws_bool_issue["gateway_validate_parameter"]
}

gateway_validate_parameter_err = "AWS API Gateway request parameter is not validated" {
    aws_issue["gateway_validate_parameter"]
} else = "AWS API Gateway request parameter is not validated" {
    aws_bool_issue["gateway_validate_parameter"]
}

gateway_validate_parameter_metadata := {
    "Policy Code": "PR-AWS-0203-CFR",
    "Type": "IaC",
    "Product": "AWS",
    "Language": "AWS Cloud formation",
    "Policy Title": "AWS API gateway request parameter is not validated",
    "Policy Description": "This policy identifies the AWS API gateways for with the request parameters are not validated. It is recommended to validate the request parameters in the URI, query string, and headers of an incoming request to focus on the validation efforts specific to your application.\n",
    "Resource Type": "",
    "Policy Help URL": "",
    "Resource Help URL": "https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-restapi-endpointconfiguration.html"
}


#
# PR-AWS-0204-CFR
#

default gateway_request_authorizer = null

aws_attribute_absence["gateway_request_authorizer"] {
    resource := input.Resources[i]
    lower(resource.Type) == "aws::apigateway::authorizer"
    not resource.Properties.Type
}

aws_issue["gateway_request_authorizer"] {
    resource := input.Resources[i]
    lower(resource.Type) == "aws::apigateway::authorizer"
    lower(resource.Properties.Type) != "request"
}

gateway_request_authorizer {
    lower(input.Resources[i].Type) == "aws::apigateway::authorizer"
    not aws_issue["gateway_request_authorizer"]
    not aws_attribute_absence["gateway_request_authorizer"]
}

gateway_request_authorizer = false {
    aws_issue["gateway_request_authorizer"]
}

gateway_request_authorizer = false {
    aws_attribute_absence["gateway_request_authorizer"]
}

gateway_request_authorizer_err = "AWS API gateway request authorisation is not set" {
    aws_issue["gateway_request_authorizer"]
} else = "AWS API Gateway Authorizer type is absent" {
    aws_attribute_absence["gateway_request_authorizer"]
}

gateway_request_authorizer_metadata := {
    "Policy Code": "PR-AWS-0204-CFR",
    "Type": "IaC",
    "Product": "AWS",
    "Language": "AWS Cloud formation",
    "Policy Title": "AWS API gateway request authorisation is not set",
    "Policy Description": "This policy identifies AWS API Gateways of protocol type REST for which the request authorisation is not set. The method request for API gateways takes the client input that is passed to the back end through the integration request. It is recommended to add authorization type to each of the method to add a layer of protection.",
    "Resource Type": "",
    "Policy Help URL": "",
    "Resource Help URL": "https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-restapi-endpointconfiguration.html"
}
