# Copia o diretório video-14 para o container do Minikube
docker cp video-14 minikube:/home/

# Confirma que o arquivo foi copiado com sucesso
docker exec -it minikube cat /home/video-14/codigos/html/index.html



