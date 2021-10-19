package rule

# https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ecs-taskdefinition.html

#
# PR-AWS-CFR-ECS-001
#

default ecs_task_evelated = null

aws_bool_issue["ecs_task_evelated"] {
    resource := input.Resources[i]
    lower(resource.Type) == "aws::ecs::taskdefinition"
    resource.Properties.ContainerDefinitions
    resource.Properties.ContainerDefinitions[j].Privileged == true
}

source_path[{"ecs_task_evelated": metadata}] {
    resource := input.Resources[i]
    lower(resource.Type) == "aws::ecs::taskdefinition"
    resource.Properties.ContainerDefinitions
    resource.Properties.ContainerDefinitions[j].Privileged == true
    metadata := {
        "resource_path": [
            ["Resources", i, "Properties", "ContainerDefinitions", j, "Privileged"]
        ],
    }
}

aws_issue["ecs_task_evelated"] {
    resource := input.Resources[i]
    lower(resource.Type) == "aws::ecs::taskdefinition"
    resource.Properties.ContainerDefinitions
    lower(resource.Properties.ContainerDefinitions[j].Privileged) == "true"
}

source_path[{"ecs_task_evelated": metadata}] {
    resource := input.Resources[i]
    lower(resource.Type) == "aws::ecs::taskdefinition"
    resource.Properties.ContainerDefinitions
    lower(resource.Properties.ContainerDefinitions[j].Privileged) == "true"
    metadata := {
        "resource_path": [
            ["Resources", i, "Properties", "ContainerDefinitions", j, "Privileged"]
        ],
    }
}

ecs_task_evelated {
    lower(input.Resources[i].Type) == "aws::ecs::taskdefinition"
    not aws_issue["ecs_task_evelated"]
    not aws_bool_issue["ecs_task_evelated"]
}

ecs_task_evelated = false {
    aws_issue["ecs_task_evelated"]
}

ecs_task_evelated = false {
    aws_bool_issue["ecs_task_evelated"]
}

ecs_task_evelated_err = "AWS ECS task definition elevated privileges enabled" {
    aws_issue["ecs_task_evelated"]
} else = "AWS ECS task definition elevated privileges enabled" {
    aws_bool_issue["ecs_task_evelated"]
}

ecs_task_evelated_metadata := {
    "Policy Code": "PR-AWS-CFR-ECS-001",
    "Type": "IaC",
    "Product": "AWS",
    "Language": "AWS Cloud formation",
    "Policy Title": "AWS ECS task definition elevated privileges enabled",
    "Policy Description": "Ensure your ECS containers are not given elevated privileges on the host container instance. When the Privileged parameter is true, the container is given elevated privileges on the host container instance (similar to the root user). This policy checks the security configuration of your task definition and alerts if elevated privileges are enabled. Note: This parameter is not supported for Windows containers or tasks using the Fargate launch type.",
    "Resource Type": "",
    "Policy Help URL": "",
    "Resource Help URL": "https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ecs-taskdefinition.html"
}

#
# PR-AWS-CFR-ECS-002
#

default ecs_exec = null

aws_issue["ecs_exec"] {
    resource := input.Resources[i]
    lower(resource.Type) == "aws::ecs::taskdefinition"
    not resource.Properties.ExecutionRoleArn
    not resource.Properties.TaskRoleArn
}

source_path[{"ecs_exec": metadata}] {
    resource := input.Resources[i]
    lower(resource.Type) == "aws::ecs::taskdefinition"
    not resource.Properties.ExecutionRoleArn
    not resource.Properties.TaskRoleArn
    metadata := {
        "resource_path": [
            ["Resources", i, "Properties", "TaskRoleArn"]
        ],
    }
}

aws_issue["ecs_exec"] {
    resource := input.Resources[i]
    lower(resource.Type) == "aws::ecs::taskdefinition"
    resource.Properties.ExecutionRoleArn
    not startswith(lower(resource.Properties.ExecutionRoleArn), "arn:aws:")
}

source_path[{"ecs_exec": metadata}] {
    resource := input.Resources[i]
    lower(resource.Type) == "aws::ecs::taskdefinition"
    resource.Properties.ExecutionRoleArn
    not startswith(lower(resource.Properties.ExecutionRoleArn), "arn:aws:")
    metadata := {
        "resource_path": [
            ["Resources", i, "Properties", "ExecutionRoleArn"]
        ],
    }
}

aws_issue["ecs_exec"] {
    resource := input.Resources[i]
    lower(resource.Type) == "aws::ecs::taskdefinition"
    resource.Properties.TaskRoleArn
    not startswith(lower(resource.Properties.TaskRoleArn), "arn:aws:")
}

source_path[{"ecs_exec": metadata}] {
    resource := input.Resources[i]
    lower(resource.Type) == "aws::ecs::taskdefinition"
    resource.Properties.TaskRoleArn
    not startswith(lower(resource.Properties.TaskRoleArn), "arn:aws:")
    metadata := {
        "resource_path": [
            ["Resources", i, "Properties", "TaskRoleArn"]
        ],
    }
}

ecs_exec {
    lower(input.Resources[i].Type) == "aws::ecs::taskdefinition"
    not aws_issue["ecs_exec"]
}

ecs_exec = false {
    aws_issue["ecs_exec"]
}

ecs_exec_err = "AWS ECS/Fargate task definition execution IAM Role not found" {
    aws_issue["ecs_exec"]
}

ecs_exec_metadata := {
    "Policy Code": "PR-AWS-CFR-ECS-002",
    "Type": "IaC",
    "Product": "AWS",
    "Language": "AWS Cloud formation",
    "Policy Title": "AWS ECS/Fargate task definition execution IAM Role not found",
    "Policy Description": "The execution IAM Role is required by tasks to pull container images and publish container logs to Amazon CloudWatch on your behalf. This policy generates an alert if a task execution role is not found in your task definition.",
    "Resource Type": "",
    "Policy Help URL": "",
    "Resource Help URL": "https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ecs-taskdefinition.html"
}

#
# PR-AWS-CFR-ECS-003
#

default ecs_root_user = null

aws_issue["ecs_root_user"] {
    resource := input.Resources[i]
    lower(resource.Type) == "aws::ecs::taskdefinition"
    lower(resource.Properties.ContainerDefinitions[j].User) == "root"
}

source_path[{"ecs_root_user": metadata}] {
    resource := input.Resources[i]
    lower(resource.Type) == "aws::ecs::taskdefinition"
    lower(resource.Properties.ContainerDefinitions[j].User) == "root"
    metadata := {
        "resource_path": [
            ["Resources", i, "Properties", "ContainerDefinitions", j, "User"]
        ],
    }
}

ecs_root_user {
    lower(input.Resources[i].Type) == "aws::ecs::taskdefinition"
    not aws_issue["ecs_root_user"]
}

ecs_root_user = false {
    aws_issue["ecs_root_user"]
}

ecs_root_user_err = "AWS ECS/Fargate task definition root user found" {
    aws_issue["ecs_root_user"]
}

ecs_root_user_metadata := {
    "Policy Code": "PR-AWS-CFR-ECS-003",
    "Type": "IaC",
    "Product": "AWS",
    "Language": "AWS Cloud formation",
    "Policy Title": "AWS ECS/ Fargate task definition root user found",
    "Policy Description": "The user name to use inside the container should not be root. This policy generates an alert if root user is found in your container definition. The User parameter maps to User in the Create a container section of the Docker Remote API and the --user option to docker run Note: This parameter is not supported for Windows containers.",
    "Resource Type": "",
    "Policy Help URL": "",
    "Resource Help URL": "https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ecs-taskdefinition.html"
}

#
# PR-AWS-CFR-ECS-004
#

default ecs_root_filesystem = null

aws_bool_issue["ecs_root_filesystem"] {
    resource := input.Resources[i]
    lower(resource.Type) == "aws::ecs::taskdefinition"
    container_definition := resource.Properties.ContainerDefinitions[j]
    not container_definition.ReadonlyRootFilesystem
}

source_path[{"ecs_root_filesystem": metadata}] {
    resource := input.Resources[i]
    lower(resource.Type) == "aws::ecs::taskdefinition"
    container_definition := resource.Properties.ContainerDefinitions[j]
    not container_definition.ReadonlyRootFilesystem
    metadata := {
        "resource_path": [
            ["Resources", i, "Properties", "ContainerDefinitions", j, "ReadonlyRootFilesystem"]
        ],
    }
}

aws_issue["ecs_root_filesystem"] {
    resource := input.Resources[i]
    lower(resource.Type) == "aws::ecs::taskdefinition"
    container_definition := resource.Properties.ContainerDefinitions[j]
    lower(container_definition.ReadonlyRootFilesystem) == "false"
}

source_path[{"ecs_root_filesystem": metadata}] {
    resource := input.Resources[i]
    lower(resource.Type) == "aws::ecs::taskdefinition"
    container_definition := resource.Properties.ContainerDefinitions[j]
    lower(container_definition.ReadonlyRootFilesystem) == "false"
    metadata := {
        "resource_path": [
            ["Resources", i, "Properties", "ContainerDefinitions", j, "ReadonlyRootFilesystem"]
        ],
    }
}

ecs_root_filesystem {
    lower(input.Resources[i].Type) == "aws::ecs::taskdefinition"
    not aws_issue["ecs_root_filesystem"]
    not aws_bool_issue["ecs_root_filesystem"]
}

ecs_root_filesystem = false {
    aws_issue["ecs_root_filesystem"]
}

ecs_root_filesystem = false {
    aws_bool_issue["ecs_root_filesystem"]
}

ecs_root_filesystem_err = "AWS ECS Task Definition readonlyRootFilesystem Not Enabled" {
    aws_issue["ecs_root_filesystem"]
} else = "AWS ECS Task Definition readonlyRootFilesystem Not Enabled" {
    aws_bool_issue["ecs_root_filesystem"]
}

ecs_root_filesystem_metadata := {
    "Policy Code": "PR-AWS-CFR-ECS-004",
    "Type": "IaC",
    "Product": "AWS",
    "Language": "AWS Cloud formation",
    "Policy Title": "AWS ECS Task Definition readonlyRootFilesystem Not Enabled",
    "Policy Description": "It is recommended that readonlyRootFilesystem is enabled for AWS ECS task definition. Please make sure your 'ContainerDefinitions' template has 'ReadonlyRootFilesystem' and is set to 'true'.",
    "Resource Type": "",
    "Policy Help URL": "",
    "Resource Help URL": "https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ecs-taskdefinition.html"
}


#
# PR-AWS-CFR-ECS-005
#

default ecs_resource_limit = null

aws_issue["ecs_resource_limit"] {
    resource := input.Resources[i]
    lower(resource.Type) == "aws::ecs::taskdefinition"
    not resource.Properties.Cpu
}

source_path[{"ecs_resource_limit": metadata}] {
    resource := input.Resources[i]
    lower(resource.Type) == "aws::ecs::taskdefinition"
    not resource.Properties.Cpu
    metadata := {
        "resource_path": [
            ["Resources", i, "Properties", "Cpu"]
        ],
    }
}

aws_issue["ecs_resource_limit"] {
    resource := input.Resources[i]
    lower(resource.Type) == "aws::ecs::taskdefinition"
    to_number(resource.Properties.Cpu) == 0
}

source_path[{"ecs_resource_limit": metadata}] {
    resource := input.Resources[i]
    lower(resource.Type) == "aws::ecs::taskdefinition"
    to_number(resource.Properties.Cpu) == 0
    metadata := {
        "resource_path": [
            ["Resources", i, "Properties", "Cpu"]
        ],
    }
}

aws_issue["ecs_resource_limit"] {
    resource := input.Resources[i]
    lower(resource.Type) == "aws::ecs::taskdefinition"
    container_definition := resource.Properties.ContainerDefinitions[j]
    not container_definition.Cpu
}

source_path[{"ecs_resource_limit": metadata}] {
    resource := input.Resources[i]
    lower(resource.Type) == "aws::ecs::taskdefinition"
    container_definition := resource.Properties.ContainerDefinitions[j]
    not container_definition.Cpu
    metadata := {
        "resource_path": [
            ["Resources", i, "Properties", "ContainerDefinitions", j, "Cpu"]
        ],
    }
}


aws_issue["ecs_resource_limit"] {
    resource := input.Resources[i]
    lower(resource.Type) == "aws::ecs::taskdefinition"
    container_definition := resource.Properties.ContainerDefinitions[j]
    to_number(container_definition.Cpu) == 0
}

source_path[{"ecs_resource_limit": metadata}] {
    resource := input.Resources[i]
    lower(resource.Type) == "aws::ecs::taskdefinition"
    container_definition := resource.Properties.ContainerDefinitions[j]
    to_number(container_definition.Cpu) == 0
    metadata := {
        "resource_path": [
            ["Resources", i, "Properties", "ContainerDefinitions", j, "Cpu"]
        ],
    }
}

aws_issue["ecs_resource_limit"] {
    resource := input.Resources[i]
    lower(resource.Type) == "aws::ecs::taskdefinition"
    not resource.Properties.Memory
}

source_path[{"ecs_resource_limit": metadata}] {
    resource := input.Resources[i]
    lower(resource.Type) == "aws::ecs::taskdefinition"
    not resource.Properties.Memory
    metadata := {
        "resource_path": [
            ["Resources", i, "Properties", "Memory"]
        ],
    }
}

aws_issue["ecs_resource_limit"] {
    resource := input.Resources[i]
    lower(resource.Type) == "aws::ecs::taskdefinition"
    to_number(resource.Properties.Memory) == 0
}

source_path[{"ecs_resource_limit": metadata}] {
    resource := input.Resources[i]
    lower(resource.Type) == "aws::ecs::taskdefinition"
    to_number(resource.Properties.Memory) == 0
    metadata := {
        "resource_path": [
            ["Resources", i, "Properties", "Memory"]
        ],
    }
}

aws_issue["ecs_resource_limit"] {
    resource := input.Resources[i]
    lower(resource.Type) == "aws::ecs::taskdefinition"
    container_definition := resource.Properties.ContainerDefinitions[j]
    not container_definition.Memory
}

source_path[{"ecs_resource_limit": metadata}] {
    resource := input.Resources[i]
    lower(resource.Type) == "aws::ecs::taskdefinition"
    container_definition := resource.Properties.ContainerDefinitions[j]
    not container_definition.Memory
    metadata := {
        "resource_path": [
            ["Resources", i, "Properties", "ContainerDefinitions", j, "Memory"]
        ],
    }
}

aws_issue["ecs_resource_limit"] {
    resource := input.Resources[i]
    lower(resource.Type) == "aws::ecs::taskdefinition"
    container_definition := resource.Properties.ContainerDefinitions[j]
    to_number(container_definition.Memory) == 0
}

source_path[{"ecs_resource_limit": metadata}] {
    resource := input.Resources[i]
    lower(resource.Type) == "aws::ecs::taskdefinition"
    container_definition := resource.Properties.ContainerDefinitions[j]
    to_number(container_definition.Memory) == 0
    metadata := {
        "resource_path": [
            ["Resources", i, "Properties", "ContainerDefinitions", j, "Memory"]
        ],
    }
}

ecs_resource_limit {
    lower(input.Resources[i].Type) == "aws::ecs::taskdefinition"
    not aws_issue["ecs_resource_limit"]
}

ecs_resource_limit = false {
    aws_issue["ecs_resource_limit"]
}

ecs_resource_limit_err = "AWS ECS task definition resource limits not set." {
    aws_issue["ecs_resource_limit"]
}

ecs_resource_limit_metadata := {
    "Policy Code": "PR-AWS-CFR-ECS-005",
    "Type": "IaC",
    "Product": "AWS",
    "Language": "AWS Cloud formation",
    "Policy Title": "AWS ECS task definition resource limits not set.",
    "Policy Description": "It is recommended that resource limits are set for AWS ECS task definition. Please make sure attributes 'Cpu' or 'Memory' exists and its value is not set to 0 under 'TaskDefinition' or 'ContainerDefinitions'.",
    "Resource Type": "",
    "Policy Help URL": "",
    "Resource Help URL": "https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ecs-taskdefinition.html"
}


#
# PR-AWS-CFR-ECS-006
#

default ecs_logging = null

aws_issue["ecs_logging"] {
    resource := input.Resources[i]
    lower(resource.Type) == "aws::ecs::taskdefinition"
    container_definition := resource.Properties.ContainerDefinitions[j]
    not container_definition.LogConfiguration.LogDriver
}

source_path[{"ecs_logging": metadata}] {
    resource := input.Resources[i]
    lower(resource.Type) == "aws::ecs::taskdefinition"
    container_definition := resource.Properties.ContainerDefinitions[j]
    not container_definition.LogConfiguration.LogDriver
    metadata := {
        "resource_path": [
            ["Resources", i, "Properties", "ContainerDefinitions", j, "LogConfiguration", "LogDriver"]
        ],
    }
}

aws_issue["ecs_logging"] {
    resource := input.Resources[i]
    lower(resource.Type) == "aws::ecs::taskdefinition"
    container_definition := resource.Properties.ContainerDefinitions[j]
    count(container_definition.LogConfiguration.LogDriver) == 0
}

source_path[{"ecs_logging": metadata}] {
    resource := input.Resources[i]
    lower(resource.Type) == "aws::ecs::taskdefinition"
    container_definition := resource.Properties.ContainerDefinitions[j]
    count(container_definition.LogConfiguration.LogDriver) == 0
    metadata := {
        "resource_path": [
            ["Resources", i, "Properties", "ContainerDefinitions", j, "LogConfiguration", "LogDriver"]
        ],
    }
}

ecs_logging {
    lower(input.Resources[i].Type) == "aws::ecs::taskdefinition"
    not aws_issue["ecs_logging"]
}

ecs_logging = false {
    aws_issue["ecs_logging"]
}

ecs_logging_err = "AWS ECS task definition logging not enabled." {
    aws_issue["ecs_logging"]
}

ecs_logging_metadata := {
    "Policy Code": "PR-AWS-CFR-ECS-006",
    "Type": "IaC",
    "Product": "AWS",
    "Language": "AWS Cloud formation",
    "Policy Title": "AWS ECS task definition logging not enabled.",
    "Policy Description": "It is recommended that logging is enabled for AWS ECS task definition. Please make sure your 'TaskDefinition' template has 'LogConfiguration' and 'LogDriver' configured.",
    "Resource Type": "",
    "Policy Help URL": "",
    "Resource Help URL": "https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ecs-taskdefinition.html"
}


#
# PR-AWS-CFR-ECS-007
#

default ecs_transit_enabled = null

aws_issue["ecs_transit_enabled"] {
    resource := input.Resources[i]
    lower(resource.Type) == "aws::ecs::taskdefinition"
    volume := resource.Properties.Volumes[j]
    not volume.EFSVolumeConfiguration.TransitEncryption
}

source_path[{"ecs_transit_enabled": metadata}] {
    resource := input.Resources[i]
    lower(resource.Type) == "aws::ecs::taskdefinition"
    volume := resource.Properties.Volumes[j]
    not volume.EFSVolumeConfiguration.TransitEncryption
    metadata := {
        "resource_path": [
            ["Resources", i, "Properties", "Volumes", j, "EFSVolumeConfiguration", "TransitEncryption"]
        ],
    }
}

aws_issue["ecs_transit_enabled"] {
    resource := input.Resources[i]
    lower(resource.Type) == "aws::ecs::taskdefinition"
    volume := resource.Properties.Volumes[j]
    lower(volume.EFSVolumeConfiguration.TransitEncryption) != "enabled"
}

source_path[{"ecs_transit_enabled": metadata}] {
    resource := input.Resources[i]
    lower(resource.Type) == "aws::ecs::taskdefinition"
    volume := resource.Properties.Volumes[j]
    lower(volume.EFSVolumeConfiguration.TransitEncryption) != "enabled"
    metadata := {
        "resource_path": [
            ["Resources", i, "Properties", "Volumes", j, "EFSVolumeConfiguration", "TransitEncryption"]
        ],
    }
}

ecs_transit_enabled {
    lower(input.Resources[i].Type) == "aws::ecs::taskdefinition"
    not aws_issue["ecs_transit_enabled"]
}

ecs_transit_enabled = false {
    aws_issue["ecs_transit_enabled"]
}


ecs_transit_enabled_err = "Ensure EFS volumes in ECS task definitions have encryption in transit enabled" {
    aws_issue["ecs_transit_enabled"]
}

ecs_transit_enabled_metadata := {
    "Policy Code": "PR-AWS-CFR-ECS-007",
    "Type": "IaC",
    "Product": "AWS",
    "Language": "AWS Cloud formation",
    "Policy Title": "Ensure EFS volumes in ECS task definitions have encryption in transit enabled",
    "Policy Description": "ECS task definitions that have volumes using EFS configuration should explicitly enable in transit encryption to prevent the risk of data loss due to interception.",
    "Resource Type": "",
    "Policy Help URL": "",
    "Resource Help URL": "https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-efsvolumeconfiguration.html#cfn-ecs-taskdefinition-efsvolumeconfiguration-transitencryption"
}


#
# PR-AWS-CFR-ECS-008
#

default ecs_container_insight_enable = null

aws_issue["ecs_container_insight_enable"] {
    resource := input.Resources[i]
    lower(resource.Type) == "aws::ecs::cluster"
    ClusterSettings := resource.Properties.ClusterSettings[j]
    lower(ClusterSettings.Name) == "containerinsights" 
    lower(ClusterSettings.Value) != "enabled"
}

source_path[{"ecs_container_insight_enable": metadata}] {
    resource := input.Resources[i]
    lower(resource.Type) == "aws::ecs::cluster"
    ClusterSettings := resource.Properties.ClusterSettings[j]
    lower(ClusterSettings.Name) == "containerinsights" 
    lower(ClusterSettings.Value) != "enabled"
    metadata := {
        "resource_path": [
            ["Resources", i, "Properties", "ClusterSettings", j, "Value"]
        ],
    }
}

aws_issue["ecs_container_insight_enable"] {
    resource := input.Resources[i]
    lower(resource.Type) == "aws::ecs::cluster"
    count([c | resource.Properties.ClusterSettings[j].Name == "containerinsights" ; c:=1]) == 0
}

source_path[{"ecs_container_insight_enable": metadata}] {
    resource := input.Resources[i]
    lower(resource.Type) == "aws::ecs::cluster"
    count([c | resource.Properties.ClusterSettings[j].Name == "containerinsights" ; c:=1]) == 0
    metadata := {
        "resource_path": [
            ["Resources", i, "Properties", "ClusterSettings"]
        ],
    }
}

aws_issue["ecs_container_insight_enable"] {
    resource := input.Resources[i]
    lower(resource.Type) == "aws::ecs::cluster"
    count(resource.Properties.ClusterSettings) == 0
}

source_path[{"ecs_container_insight_enable": metadata}] {
    resource := input.Resources[i]
    lower(resource.Type) == "aws::ecs::cluster"
    count(resource.Properties.ClusterSettings) == 0
    metadata := {
        "resource_path": [
            ["Resources", i, "Properties", "ClusterSettings"]
        ],
    }
}

ecs_container_insight_enable {
    lower(input.Resources[i].Type) == "aws::ecs::cluster"
    not aws_issue["ecs_container_insight_enable"]
}

ecs_container_insight_enable = false {
    aws_issue["ecs_container_insight_enable"]
}


ecs_container_insight_enable_err = "Ensure container insights are enabled on ECS cluster" {
    aws_issue["ecs_container_insight_enable"]
}

ecs_container_insight_enable_metadata := {
    "Policy Code": "PR-AWS-CFR-ECS-008",
    "Type": "IaC",
    "Product": "AWS",
    "Language": "AWS Cloud formation",
    "Policy Title": "Ensure container insights are enabled on ECS cluster",
    "Policy Description": "Container Insights can be used to collect, aggregate, and summarize metrics and logs from containerized applications and microservices. They can also be extended to collect metrics at the cluster, task, and service levels. Using Container Insights allows you to monitor, troubleshoot, and set alarms for all your Amazon ECS resources. It provides a simple to use native and fully managed service for managing ECS issues.",
    "Resource Type": "",
    "Policy Help URL": "",
    "Resource Help URL": "https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-cluster-clustersettings.html#cfn-ecs-cluster-clustersettings-name"
}
