#!/usr/bin/env bash

# Obter arquivo do Minikube
curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64

# Instalar o Minikube em /usr/local/bin/minikube
sudo install minikube-linux-amd64 /usr/local/bin/minikube

# Remover arquivo do minikube
rm minikube-linux-amd64