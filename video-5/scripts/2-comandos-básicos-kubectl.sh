#!/usr/bin/env bash

# Exibe o contexto atual do kubectl
minikube kubectl -- config current-context

# Exibe os contextos do kubectl, destacando o atual com *
minikube kubectl -- config get-contexts

# Define o contexto atual
minikube kubectl -- config use-context minikube

# Mostra as versões do kubectl (client) e do kubernetes (server)
minikube kubectl -- version

# Mostra os recursos da API que estão disponíveis
minikube kubectl -- api-resources

# Mostra a lista de namespaces do clsuter
minikube kubectl -- get namespaces

# Mostra os pods existentes no namespace kubernetes-dashboard
minikube kubectl -- get pods --namespace=kubernetes-dashboard