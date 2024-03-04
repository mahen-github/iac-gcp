#!/bin/bash

# Set the env variable
PROJECT_ID=$(gcloud config get-value project)

# Make the bucket
gsutil mb gs://${PROJECT_ID}-tfstate
gcloud storage buckets create --location us   gs://mahendran-tf-state-backend   --project data-proc-poc  --default-storage-class STANDARD

# Enable the versioning
gsutil versioning set on gs://${PROJECT_ID}-tfstate

#Set the Lifecycle
gsutil lifecycle set tf-backend-storage-lifecycle.json gs://${PROJECT_ID}-tfstate
