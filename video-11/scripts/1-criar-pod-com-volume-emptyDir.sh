# Podemos verificar o nome dos pods que estão rodando
kubectl get pods --no-headers -l app=server -o custom-columns=":metadata.name"

kubectl get pods -l app=server -o name

# Vamos atualizar o pod que tínhamos definido nos vídeos passados
kubectl apply -f server.yaml








