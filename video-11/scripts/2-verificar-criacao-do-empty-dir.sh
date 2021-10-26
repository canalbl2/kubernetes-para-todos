# Podemos verificar que o volume emptyDir foi criado
kubectl get pods -l app=server -o yaml

# Vamos verificar que foi mapeado o diretório do emptyDir no container
kubectl exec $(kubectl get pods -l app=server -o name) -c nginx -it -- ls -ltrah /usr/share/nginx/html/emptyDir/
