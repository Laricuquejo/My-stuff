#!/bin/bash

# Define variables
export PROJECT_ID="robotic-heaven-430515-g6"
export ZONE="us-central1-a"
export INSTANCE_NAME="teste"
export MACHINE_TYPE="e2-micro"
export IMAGE="projects/debian-cloud/global/images/debian-12-bookworm-v20240709"
export NETWORK_TIER="STANDARD"
export STACK_TYPE="IPV4_ONLY"
export SUBNET="default"
export SERVICE_ACCOUNT="309166871037-compute@developer.gserviceaccount.com"
export SCOPES="https://www.googleapis.com/auth/devstorage.read_only,https://www.googleapis.com/auth/logging.write,https://www.googleapis.com/auth/monitoring.write,https://www.googleapis.com/auth/service.management.readonly,https://www.googleapis.com/auth/servicecontrol,https://www.googleapis.com/auth/trace.append"
export DISK_TYPE="projects/robotic-heaven-430515-g6/zones/us-central1-a/diskTypes/pd-balanced"
export DISK_SIZE="10"

# Authenticate and set the project (if not already authenticated)
gcloud auth login
gcloud config set project $PROJECT_ID

# Create the VM instance
gcloud compute instances create $INSTANCE_NAME \
  --zone=$ZONE \
  --machine-type=$MACHINE_TYPE \
  --network-interface=network-tier=$NETWORK_TIER,stack-type=$STACK_TYPE,subnet=$SUBNET \
  --maintenance-policy=MIGRATE \
  --provisioning-model=STANDARD \
  --service-account=$SERVICE_ACCOUNT \
  --scopes=$SCOPES \
  --create-disk=auto-delete=yes,boot=yes,device-name=$INSTANCE_NAME,image=$IMAGE,mode=rw,size=$DISK_SIZE,type=$DISK_TYPE \
  --no-shielded-secure-boot \
  --shielded-vtpm \
  --shielded-integrity-monitoring \
  --labels=goog-ec-src=vm_add-gcloud \
  --reservation-affinity=any

# Output the instance details
gcloud compute instances describe $INSTANCE_NAME --zone=$ZONE
