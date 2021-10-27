# Podemos verificar o nome dos pods que estão rodando que tenham a label app com valor server
kubectl get pods -l app=server -o name

# Vamos atualizar o pod que tínhamos definido nos vídeos passados
kubectl apply -f server.yaml








