
# Obter lista de deployments
kubectl get deployment

# Descrever o deployment que criamos
kubectl describe deployment/NOME_DO_DEPLOYMENT

# Listar replicaset criado a partir do deployment
kubectl get replicaset/NOME_DO_REPLICASET

# Descrever o replicaset criado a partir do deployment
kubectl describe replicaset/NOME_DO_REPLICASET

# Listar pod criado a partir do replicaset
kubectl get pod/NOME_DO_POD

# Descrever o pod criado a partir do deployment
kubectl describe pod/NOME_DO_POD

# Descrever o pod criado a partir do deployment
kubectl port-forward pod/NOME_DO_POD PORTA_DA_MAQUINA:PORTA_DO_CONTAINER

# Acessar o pod via terminal (e pelo browser)
curl http://localhost:PORTA_DA_MAQUINA

# Ver log do pod
kubectl logs pod/NOME_DO_POD

# Escalar para cima o deployment (2 instâncias)
kubectl scale deployment/NOME_DO_DEPLOYMENT --replicas=2

# Descrever novamente o deployment para ver alterações
kubectl describe deployment/NOME_DO_DEPLOYMENT

# Listar replicasets
kubectl get replicasets

# Listar pods existentes
kubectl get pods

# Gerar arquivo do deployment
kubectl get deployment/NOME_DO_DEPLOYMENT -o yaml > server.yaml 

# Alterar deployment com arquivo
kubectl replace deployment/NOME_DO_DEPLOYMENT -f server.yaml
