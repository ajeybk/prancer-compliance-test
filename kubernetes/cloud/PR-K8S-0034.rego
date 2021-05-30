package rule

#
# PR-K8S-0034
#

default rulepass = null

k8s_issue["rulepass"] {
    lower(input.kind) == "pod"
    input.spec.containers[_].name == "kube-controller-manager"
    input.metadata.namespace == "kube-system"
    count([
        c | regex.match("--root-ca-file=.*", input.spec.containers[_].command[_]);
        c := 1]) == 0
}

rulepass {
    lower(input.kind) == "pod"
    not k8s_issue["rulepass"]
}

rulepass = false {
    k8s_issue["rulepass"]
}

rulepass_err = "PR-K8S-0034: Ensure that the --root-ca-file argument is set as appropriate (Controller Manager)" {
    k8s_issue["rulepass"]
}

k8s_issue_metadata := {
    "Policy Code": "PR-K8S-0034",
    "Type": "Cloud",
    "Product": "Kubernetes",
    "Language": "Cloud",
    "Policy Title": "Ensure that the --root-ca-file argument is set as appropriate (Controller Manager) ",
    "Policy Description": "Ensure that the --root-ca-file argument is set as appropriate (Controller Manager) ",
    "Resource Type": "pod",
    "Policy Help URL": "",
    "Resource Help URL": ""
}
