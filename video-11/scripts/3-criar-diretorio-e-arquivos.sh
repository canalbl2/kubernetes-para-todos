# Vamos criar um diretório que será gravando na camada de escrita do container
kubectl exec $(kubectl get pods -l app=server -o name) -c nginx -it -- mkdir /usr/share/nginx/html/camadaEscrita/

# Vamos também criar um arquivo html no diretório do emptyDir
kubectl exec $(kubectl get pods -l app=server -o name) -c nginx -it -- /bin/sh -c "echo '<html><body><h1>EmptyDir</h1></body></html>' > /usr/share/nginx/html/emptyDir/index.html"

# Vamos também criar um arquivo html no diretório do camadaEscrita
kubectl exec $(kubectl get pods -l app=server -o name) -c nginx -it -- /bin/sh -c "echo '<html><body><h1>Camada de Escrita</h1></body></html>' > /usr/share/nginx/html/camadaEscrita/index.html"
