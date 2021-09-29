# Criar arquivo do deployment
kubectl create deployment server --image=nginx --dry-run=client -o yaml > server.yml

# Visualizar conteúdo do arquivo
cat server.yml

# Implantar deployment com arquivo (modo configuração de objeto declarativa)
kubectl apply -f server.yml