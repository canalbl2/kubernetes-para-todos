# Ao mapearmos a porta nossa máquina para o POD já existente, conseguimos acessar http://localhost:8080/emptyDir
kubectl port-forward POD_CRIADO_ANTERIORMENTE 8080:80

# Ao mapearmos a porta nossa máquina para o POD recém criado, ao acessar http://localhost:8080/emptyDir recebemos o código 403
kubectl port-forward POD_CRIADO_ANTERIORMENTE 8080:80