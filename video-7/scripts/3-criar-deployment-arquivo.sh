# Criar arquivo do deployment
kubectl create deployment server --image=nginx --dry-run=client -o yaml > server.yaml

# Visualizar conteúdo do arquivo
cat server.yaml

# Implantar deployment com arquivo (modo configuração de objeto declarativa)
kubectl apply -f server.yaml