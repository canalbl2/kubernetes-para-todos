sudo docker cp codigos/html/index.html minikube:/app/data/
sudo docker exec -it minikube cat /app/data/index.html