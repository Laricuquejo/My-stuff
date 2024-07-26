#!/bin/bash

# Define variables
PROJECT_ID="projeto-lari1"
ZONE="us-central1-a"
INSTANCE_NAME="teste"
MACHINE_TYPE="e2-micro"
IMAGE_FAMILY="debian-10"
IMAGE_PROJECT="debian-cloud"
NETWORK_TIER="STANDARD"
STACK_TYPE="IPV4_ONLY"
SUBNET="default"

# Authenticate and set the project (if not already authenticated)
gcloud auth login
gcloud config set project $PROJECT_ID

# Create the VM instance
gcloud compute instances create $INSTANCE_NAME \
  --zone=$ZONE \
  --machine-type=$MACHINE_TYPE \
  --network-interface=network-tier=$NETWORK_TIER,stack-type=$STACK_TYPE,subnet=$SUBNET \
  --image-family=$IMAGE_FAMILY \
  --image-project=$IMAGE_PROJECT

# Output the instance details
gcloud compute instances describe $INSTANCE_NAME --zone=$ZONE

