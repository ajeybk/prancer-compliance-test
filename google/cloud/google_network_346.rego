package rule
default rulepass = true

# GCP project is configured with legacy network
# if GCP project is configured with legacy network 

# API and Response Reference : https://cloud.google.com/compute/docs/reference/rest/v1/networks/list

rulepass = false {                                      
   count(networksname) == 1
}

networksname[input.id] {
   input.autoCreateSubnetworks == true
}