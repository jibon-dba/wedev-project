# Kubernetes GitOps Setup with FluxCD

This repository contains a complete GitOps setup for a Kubernetes cluster using FluxCD.

## Prerequisites

- k3s installed on local machine
- kubectl configured to access the cluster
- flux CLI installed
- age for secret encryption
- GitHub account and repository

## Setup Instructions

1. Clone this repository
2. Install k3s: `curl -sfL https://get.k3s.io | sh -`
3. Configure kubectl: `export KUBECONFIG=/etc/rancher/k3s/k3s.yaml`
4. Generate age key pair: `age-keygen -o age.key`
5. Encrypt secrets with SOPS using the age public key
6. Bootstrap FluxCD:
   ```bash
   flux bootstrap github \
     --owner=your-username \
     --repository=kubernetes-gitops-setup \
     --branch=main \
     --path=./clusters/local \
     --personal