# Ver arquivo do deployment
cat video-14/codigos/server-com-host-path.yaml

kubectl apply -f video-14/codigos/server-com-host-path.yaml

# Confirma que foi realizado o mapeamento
kubectl exec -it deployment/server-com-host-path -- df -h

# Confirma que o arquivo html foi copiado corretamente
kubectl exec -it deployment/server-com-host-path -- cat /usr/share/nginx/html/index.html

# Fazer mapeamento para a porta 8090 do host
kubectl port-forward deployment/server-com-host-path 8090:80








