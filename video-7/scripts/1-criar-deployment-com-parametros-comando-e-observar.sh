# Executar comando para observar resources do Kubernetes
watch -n 1 kubectl get all

# Em outra aba do terminal, criar deployment usando imagem do NGINX (modo comandos imperativos)
kubectl create deployment NOME_DO_DEPLOYMENT --image=nginx
