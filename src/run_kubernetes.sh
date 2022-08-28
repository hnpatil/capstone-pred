#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath=hanmant031/ud_prediction:latest

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run prediction --image=$dockerpath --port=80

# Step 3:
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl port-forward prediction 8000:80
