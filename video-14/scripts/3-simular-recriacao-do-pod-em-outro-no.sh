kubectl scale --replicas=0 deployment/server-com-host-path 

docker cp video-14/codigos/html/index_old.html minikube:/home/video-14/codigos/html/index.html

kubectl scale --replicas=1 deployment/server-com-host-path 

kubectl port-forward deployment/server-com-host-path  8090:80