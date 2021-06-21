#!/usr/bin/env bash

# Verificar status do cluster
minikube status

# Podemos ver o container do Minikube
docker ps

# Vamos executar um terminal no container do Minikube
docker exec -it minikube /bin/bash

# Agora dentro do container do Minikube, vamos olhar os containers do Kubernetes
docker ps

# Podemos sair do container
exit

# Vamos verificar os daemons do Docker sendo executados
ps aux | grep dockerd

