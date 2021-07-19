#!/usr/bin/env bash

# Apresenta a lista de nós do cluster com informações básicas
minikube kubectl -- get nodes

# Mostra informações básicas somente do nó minikube
minikube kubectl -- get nodes minikube

# Descreve o nó minikube
minikube kubectl -- describe nodes minikube

# Mostra os labels associados ao nó minikube
minikube kubectl -- get nodes minikube --show-labels

# Coloca o nó em um modo que não é possível agendar a criação de containers nele
minikube kubectl -- cordon minikube

# Torna possível novamente o agendamento da criação de containers no nó
minikube kubectl -- uncordon minikube

# Além de impedir o agendamento de containers no nó, ainda finaliza os containers existentes nele
minikube kubectl -- drain minikube