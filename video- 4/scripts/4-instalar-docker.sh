#!/usr/bin/env bash

# Atualiza pacotes de dependências e instala dependências do Docker
sudo apt update &&  sudo apt install -y \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg \
    lsb-release

# Download da chave gpg do docker
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg

# Adicionar repositório do Docker
echo \
  "deb [arch=amd64 signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

# Atualiza pacotes de dependências e instala Docker
sudo apt update && sudo apt-get install -y docker-ce docker-ce-cli containerd.io

# Confirmar que o docker está funcionando
sudo service docker status

# Adicionar usuário ao grupo do Docker
sudo usermod -aG docker $USER && newgrp docker

# Verificar containers rodando
docker ps