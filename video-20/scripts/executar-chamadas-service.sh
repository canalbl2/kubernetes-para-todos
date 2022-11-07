# No mesmo namespace
siege -d1 -r10 -c25 http://meu-backend:7070 

# Em outro namespace
siege -d1 -r10 -c25 http://meu-backend.service-clusterip:7070 