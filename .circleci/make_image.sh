#!/bin/bash

cat <<EOF >./kustomization.yaml
resources:
- predictions.yml
images:
- name: docker_image
  newName: 195081218760.dkr.ecr.us-east-1.amazonaws.com/predictions
  newTag: ${CIRCLE_SHA1}
EOF