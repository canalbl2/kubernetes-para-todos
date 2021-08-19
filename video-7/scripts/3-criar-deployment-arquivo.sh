# Criar arquivo do deployment
kubectl create deployment NOME_DO_DEPLOYMENT --image=nginx --dry-run=client -o yaml > server.xml deployment-arquivo.yaml

# Visualizar conteúdo do arquivo
cat deployment-arquivo.yaml

# Implantar deployment com arquivo (modo configuração de objeto declarativa)
kubectl apply -f deployment-arquivo.yaml