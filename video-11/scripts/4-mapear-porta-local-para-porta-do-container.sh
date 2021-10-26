# Agora vamos mapear a porta 8080 da nossa máquina, para a porta 80 do container
kubectl port-forward $(kubectl get pods -l app=server -o name) 8080:80