package rule

#
# PR-K8S-0010
#

default rulepass = null

k8s_issue["rulepass"] {
    not input.spec.requiredDropCapabilities
}

k8s_issue["rulepass"] {
    rdc := input.spec.requiredDropCapabilities
    count([c | rdc[_] == "NET_RAW"; c := 1]) == 0
    count([c | rdc[_] == "ALL"; c := 1]) == 0
}

rulepass {
    not k8s_issue["rulepass"]
}

rulepass = false {
    k8s_issue["rulepass"]
}

rulepass_err = "PR-K8S-0010: Minimize the admission of containers with the NET_RAW capability (PSP)" {
    k8s_issue["rulepass"]
}
