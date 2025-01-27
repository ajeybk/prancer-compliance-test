package rule

#
# PR-K8S-0015-DCL
#

default run_pod_as_root = null

k8s_issue["run_pod_as_root"] {
    lower(input.kind) == "pod"
    input.spec.template.spec.containers[_].securityContext.runAsNonRoot == false
}

source_path[{"run_pod_as_root":metadata}] {
    lower(input.kind) == "pod"
    input.spec.template.spec.containers[i].securityContext.runAsNonRoot == false
    metadata:= {
        "resource_path": [["spec","template","spec","containers",i,"securityContext","runAsNonRoot"]]
    }
}

k8s_issue["run_pod_as_root"] {
    lower(input.kind) == "daemonset"
    input.spec.template.spec.containers[_].securityContext.runAsNonRoot == false
}

source_path[{"run_pod_as_root":metadata}] {
    lower(input.kind) == "daemonset"
    input.spec.template.spec.containers[i].securityContext.runAsNonRoot == false
    metadata:= {
        "resource_path": [["spec","template","spec","containers",i,"securityContext","runAsNonRoot"]]
    }
}

k8s_issue["run_pod_as_root"] {
    lower(input.kind) == "daemonset"
    input.spec.template.spec.containers[_].securityContext.runAsUser == 0
}

source_path[{"run_pod_as_root":metadata}] {
    lower(input.kind) == "daemonset"
    input.spec.template.spec.containers[i].securityContext.runAsUser == 0
    metadata:= {
        "resource_path": [["spec","template","spec","containers",i,"securityContext","runAsUser"]]
    }
}

k8s_issue["run_pod_as_root"] {
    lower(input.kind) == "deployment"
    input.spec.template.spec.containers[_].securityContext.runAsNonRoot == false
}

source_path[{"run_pod_as_root":metadata}] {
    lower(input.kind) == "deployment"
    input.spec.template.spec.containers[i].securityContext.runAsNonRoot == false
    metadata:= {
        "resource_path": [["spec","template","spec","containers",i,"securityContext","runAsNonRoot"]]
    }
}

k8s_issue["run_pod_as_root"] {
    lower(input.kind) == "deployment"
    input.spec.template.spec.containers[_].securityContext.runAsUser == 0
}

source_path[{"run_pod_as_root":metadata}] {
    lower(input.kind) == "deployment"
    input.spec.template.spec.containers[i].securityContext.runAsUser == 0
    metadata:= {
        "resource_path": [["spec","template","spec","containers",i,"securityContext","runAsUser"]]
    }
}

k8s_issue["run_pod_as_root"] {
    lower(input.kind) == "statefulset"
    input.spec.template.spec.containers[_].securityContext.runAsNonRoot == false
}

source_path[{"run_pod_as_root":metadata}] {
    lower(input.kind) == "statefulset"
    input.spec.template.spec.containers[i].securityContext.runAsNonRoot == false
    metadata:= {
        "resource_path": [["spec","template","spec","containers",i,"securityContext","runAsNonRoot"]]
    }
}


k8s_issue["run_pod_as_root"] {
    lower(input.kind) == "statefulset"
    input.spec.template.spec.containers[_].securityContext.runAsUser == 0
}

source_path[{"run_pod_as_root":metadata}] {
    lower(input.kind) == "statefulset"
    input.spec.template.spec.containers[i].securityContext.runAsUser == 0
    metadata:= {
        "resource_path": [["spec","template","spec","containers",i,"securityContext","runAsUser"]]
    }
}

run_pod_as_root {
    lower(input.kind) == "daemonset"
    not k8s_issue["run_pod_as_root"]
}

run_pod_as_root {
    lower(input.kind) == "deployment"
    not k8s_issue["run_pod_as_root"]
}

run_pod_as_root {
    lower(input.kind) == "statefulset"
    not k8s_issue["run_pod_as_root"]
}

run_pod_as_root = false {
    k8s_issue["run_pod_as_root"]
}

run_pod_as_root_err = "PR-K8S-0015-DCL: Do not generally permit containers to be run as the root user." {
    k8s_issue["run_pod_as_root"]
}

run_pod_as_root_metadata := {
    "Policy Code": "PR-K8S-0015-DCL",
    "Type": "IaC",
    "Product": "Kubernetes",
    "Language": "K8s DL",
    "Policy Title": "Do not generally permit containers to be run as the root user. ",
    "Policy Description": "Do not generally permit containers to be run as the root user. ",
    "Resource Type": "statefulset",
    "Policy Help URL": "",
    "Resource Help URL": ""
}

#
# PR-K8S-0018-DCL
#

default run_privileged_pod = null

k8s_issue["run_privileged_pod"] {
    lower(input.kind) == "pod"
    input.spec.template.spec.containers[_].securityContext.privileged == true
}

source_path[{"run_privileged_pod":metadata}] {
    lower(input.kind) == "pod"
    input.spec.template.spec.containers[i].securityContext.privileged == true
    metadata:= {
        "resource_path": [["spec","template","spec","containers",i,"securityContext","privileged"]]
    }
}

k8s_issue["run_privileged_pod"] {
    lower(input.kind) == "daemonset"
    input.spec.template.spec.containers[_].securityContext.privileged == true
}

source_path[{"run_privileged_pod":metadata}] {
    lower(input.kind) == "daemonset"
    input.spec.template.spec.containers[i].securityContext.privileged == true
    metadata:= {
        "resource_path": [["spec","template","spec","containers",i,"securityContext","privileged"]]
    }
}

k8s_issue["run_privileged_pod"] {
    lower(input.kind) == "deployment"
    input.spec.template.spec.containers[_].securityContext.privileged == true
}

source_path[{"run_privileged_pod":metadata}] {
    lower(input.kind) == "deployment"
    input.spec.template.spec.containers[i].securityContext.privileged == true
    metadata:= {
        "resource_path": [["spec","template","spec","containers",i,"securityContext","privileged"]]
    }
}

k8s_issue["run_privileged_pod"] {
    lower(input.kind) == "statefulset"
    input.spec.template.spec.containers[_].securityContext.privileged == true
}

source_path[{"run_privileged_pod":metadata}] {
    lower(input.kind) == "statefulset"
    input.spec.template.spec.containers[i].securityContext.privileged == true
    metadata:= {
        "resource_path": [["spec","template","spec","containers",i,"securityContext","privileged"]]
    }
}

run_privileged_pod {
    lower(input.kind) == "daemonset"
    not k8s_issue["run_privileged_pod"]
}

run_privileged_pod {
    lower(input.kind) == "deployment"
    not k8s_issue["run_privileged_pod"]
}

run_privileged_pod {
    lower(input.kind) == "statefulset"
    not k8s_issue["run_privileged_pod"]
}

run_privileged_pod = false {
    k8s_issue["run_privileged_pod"]
}

run_privileged_pod_err = "PR-K8S-0018-DCL: Ensure that Containers are not running in privileged mode" {
    k8s_issue["run_privileged_pod"]
}

run_privileged_pod_metadata := {
    "Policy Code": "PR-K8S-0015-DCL",
    "Type": "IaC",
    "Product": "Kubernetes",
    "Language": "K8s DL",
    "Policy Title": "Do not generally permit containers to be run as the root user. ",
    "Policy Description": "Do not generally permit containers to be run as the root user. ",
    "Resource Type": "statefulset",
    "Policy Help URL": "",
    "Resource Help URL": ""
}

#
# PR-K8S-0030-DCL
#

default pod_default_ns = null

k8s_issue["pod_default_ns"] {
    lower(input.kind) == "pod"
    input.namespace == "default"
}

source_path[{"pod_default_ns":metadata}] {
    lower(input.kind) == "pod"
    input.namespace == "default"
    metadata:= {
        "resource_path": [["namespace"]]
    }
}

k8s_issue["pod_default_ns"] {
    lower(input.kind) == "daemonset"
    input.namespace == "default"
}

source_path[{"pod_default_ns":metadata}] {
    lower(input.kind) == "daemonset"
    input.namespace == "default"
    metadata:= {
        "resource_path": [["namespace"]]
    }
}

k8s_issue["pod_default_ns"] {
    lower(input.kind) == "deployment"
    input.namespace == "default"
}

source_path[{"pod_default_ns":metadata}] {
    lower(input.kind) == "deployment"
    input.namespace == "default"
    metadata:= {
        "resource_path": [["namespace"]]
    }
}

k8s_issue["pod_default_ns"] {
    lower(input.kind) == "statefulset"
    input.namespace == "default"
}

source_path[{"pod_default_ns":metadata}] {
    lower(input.kind) == "statefulset"
    input.namespace == "default"
    metadata:= {
        "resource_path": [["namespace"]]
    }
}

pod_default_ns {
    lower(input.kind) == "daemonset"
    not k8s_issue["pod_default_ns"]
}

pod_default_ns {
    lower(input.kind) == "deployment"
    not k8s_issue["pod_default_ns"]
}

pod_default_ns {
    lower(input.kind) == "statefulset"
    not k8s_issue["pod_default_ns"]
}

pod_default_ns = false {
    k8s_issue["pod_default_ns"]
}

pod_default_ns_err = "PR-K8S-0018-DCL: The default namespace should not be used" {
    k8s_issue["pod_default_ns"]
}

pod_default_ns_metadata := {
    "Policy Code": "PR-K8S-0018-DCL",
    "Type": "IaC",
    "Product": "Kubernetes",
    "Language": "K8s DL",
    "Policy Title": "Do not generally permit containers to be run as the root user. ",
    "Policy Description": "Do not generally permit containers to be run as the root user. ",
    "Resource Type": "statefulset",
    "Policy Help URL": "",
    "Resource Help URL": ""
}

#
# PR-K8S-0057-DCL
#

default hostpath_mount = null

k8s_issue["hostpath_mount"] {
    lower(input.kind) == "pod"
    count(input.spec.template.spec.volumes[_].hostPath) > 0
}

source_path[{"hostpath_mount":metadata}] {
    lower(input.kind) == "pod"
    count(input.spec.template.spec.volumes[i].hostPath) > 0
    metadata:= {
        "resource_path": [["spec","template","spec","volumes",i,"hostPath"]]
    }
}

k8s_issue["hostpath_mount"] {
    lower(input.kind) == "daemonset"
    count(input.spec.template.spec.volumes[_].hostPath) > 0
}

source_path[{"hostpath_mount":metadata}] {
    lower(input.kind) == "daemonset"
    count(input.spec.template.spec.volumes[i].hostPath) > 0
    metadata:= {
        "resource_path": [["spec","template","spec","volumes",i,"hostPath"]]
    }
}

k8s_issue["hostpath_mount"] {
    lower(input.kind) == "deployment"
    count(input.spec.template.spec.volumes[_].hostPath) > 0
}

source_path[{"hostpath_mount":metadata}] {
    lower(input.kind) == "deployment"
    count(input.spec.template.spec.volumes[i].hostPath) > 0
    metadata:= {
        "resource_path": [["spec","template","spec","volumes",i,"hostPath"]]
    }
}

k8s_issue["hostpath_mount"] {
    lower(input.kind) == "statefulset"
    count(input.spec.template.spec.volumes[_].hostPath) > 0
}

source_path[{"hostpath_mount":metadata}] {
    lower(input.kind) == "statefulset"
    count(input.spec.template.spec.volumes[i].hostPath) > 0
    metadata:= {
        "resource_path": [["spec","template","spec","volumes",i,"hostPath"]]
    }
}

hostpath_mount {
    lower(input.kind) == "daemonset"
    not k8s_issue["hostpath_mount"]
}

hostpath_mount {
    lower(input.kind) == "deployment"
    not k8s_issue["hostpath_mount"]
}

hostpath_mount {
    lower(input.kind) == "statefulset"
    not k8s_issue["hostpath_mount"]
}

hostpath_mount = false {
    k8s_issue["hostpath_mount"]
}

hostpath_mount_err = "PR-K8S-0057-DCL: Ensure pods outside of kube-system do not have access to node volume" {
    k8s_issue["hostpath_mount"]
}

hostpath_mount_metadata := {
    "Policy Code": "PR-K8S-0018-DCL",
    "Type": "IaC",
    "Product": "Kubernetes",
    "Language": "K8s DL",
    "Policy Title": "Do not generally permit containers to be run as the root user. ",
    "Policy Description": "Do not generally permit containers to be run as the root user. ",
    "Resource Type": "statefulset",
    "Policy Help URL": "",
    "Resource Help URL": ""
}

#
# PR-K8S-0084-DCL
#

default pod_selinux = null

k8s_issue["pod_selinux"] {
    lower(input.kind) == "pod"
    container := input.spec.template.spec.containers[_]
    not container.securityContext.seLinuxOptions
}

source_path[{"hostpath_mount":metadata}] {
    lower(input.kind) == "pod"
    container := input.spec.template.spec.containers[i]
    not container.securityContext.seLinuxOptions
    metadata:= {
        "resource_path": [["spec","template","spec","containers",i,"securityContext","seLinuxOptions"]]
    }
}

k8s_issue["pod_selinux"] {
    lower(input.kind) == "daemonset"
    container := input.spec.template.spec.containers[_]
    not container.securityContext.seLinuxOptions
}

source_path[{"hostpath_mount":metadata}] {
    lower(input.kind) == "daemonset"
    container := input.spec.template.spec.containers[i]
    not container.securityContext.seLinuxOptions
    metadata:= {
        "resource_path": [["spec","template","spec","containers",i,"securityContext","seLinuxOptions"]]
    }
}

k8s_issue["pod_selinux"] {
    lower(input.kind) == "deployment"
    container := input.spec.template.spec.containers[_]
    not container.securityContext.seLinuxOptions
}

source_path[{"hostpath_mount":metadata}] {
    lower(input.kind) == "deployment"
    container := input.spec.template.spec.containers[i]
    not container.securityContext.seLinuxOptions
    metadata:= {
        "resource_path": [["spec","template","spec","containers",i,"securityContext","seLinuxOptions"]]
    }
}

k8s_issue["pod_selinux"] {
    lower(input.kind) == "statefulset"
    container := input.spec.template.spec.containers[_]
    not container.securityContext.seLinuxOptions
}

source_path[{"hostpath_mount":metadata}] {
    lower(input.kind) == "statefulset"
    container := input.spec.template.spec.containers[i]
    not container.securityContext.seLinuxOptions
    metadata:= {
        "resource_path": [["spec","template","spec","containers",i,"securityContext","seLinuxOptions"]]
    }
}

pod_selinux {
    lower(input.kind) == "daemonset"
    not k8s_issue["pod_selinux"]
}

pod_selinux {
    lower(input.kind) == "deployment"
    not k8s_issue["pod_selinux"]
}

pod_selinux {
    lower(input.kind) == "statefulset"
    not k8s_issue["pod_selinux"]
}

pod_selinux = false {
    k8s_issue["pod_selinux"]
}

pod_selinux_err = "PR-K8S-0084-DCL: Apply Security Context to Your Pods and Containers" {
    k8s_issue["pod_selinux"]
}

pod_selinux_metadata := {
    "Policy Code": "PR-K8S-0030-DCL",
    "Type": "IaC",
    "Product": "Kubernetes",
    "Language": "K8s DL",
    "Policy Title": "Do not generally permit containers to be run as the root user. ",
    "Policy Description": "Do not generally permit containers to be run as the root user. ",
    "Resource Type": "statefulset",
    "Policy Help URL": "",
    "Resource Help URL": ""
}
