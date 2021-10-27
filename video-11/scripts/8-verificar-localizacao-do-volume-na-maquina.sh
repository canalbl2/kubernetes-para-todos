#Obter uid do pod desejado
kubectl get pod/NOME_DO_POD -o jsonpath='{.metadata.uid}'

# Entrar no container do minikube
docker exec -it minikube /bin/bash

# Entrar no diretório de pods
cd /var/lib/kubelet/pods

# Entrar no diretório do pod desejado (uid obtido no primeiro comando)
cd POD_UID 

# Entrar no diretório dos volumes EmptyDir
cd volumes/kubernetes.io~empty-dir

# Entrar no diretório do EmptyDir
cd NOME_DO_VOLUME_EMPTY_DIR

