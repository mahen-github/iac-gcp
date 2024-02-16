# iac-gcp
Infrastructure as a code to create, modify, and delete resource on Google Cloud Platform

# Setup the Terraform infra
  
    

1. Create the terraform back end bucket

2. Set the versioning on and set the lifecycle of the bucket

            {
              "lifecycle": {
                "rule": [
                  {
                    "action": {
                      "type": "SetStorageClass",
                      "storageClass": "NEARLINE"
                    },
                    "condition": {
                      "age": 5,
                      "matchesStorageClass": [
                        "STANDARD"
                      ]
                    }
                  }
                ]
              }
            }