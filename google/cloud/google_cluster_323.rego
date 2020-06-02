package rule
default rulepass = false

# Kubernetes cluster intra-node visibility disabled
# If intra-node visibility is enabled then test will pass

# API Reference : https://cloud.google.com/kubernetes-engine/docs/reference/rest/v1/projects.zones.clusters/get

# Response will be Cluster Object: 
# https://cloud.google.com/kubernetes-engine/docs/reference/rest/v1/projects.locations.clusters#Cluster

rulepass = true {                                      
   count(introNodeVisibility) == 1
}

# 'networkConfig.enableIntraNodeVisibility is equals to true'
introNodeVisibility["intranode_visibility_enabled"] {
   input.networkConfig.enableIntraNodeVisibility = true
}
