#!/bin/bash

# Insere nodes no arquivo "/etc/hosts"
echo "127.0.0.1 localhost
192.168.200.120 server20.example.com server20
192.168.200.121 server21.example.com server21
192.168.200.122 server22.example.com server22
192.168.200.123 server23.example.com server23
192.168.200.124 server24.example.com server24" > /etc/hosts

# Instalação do Docker
curl -sSL https://get.docker.com/ | sh && sudo usermod -aG docker ubuntu && sudo usermod -aG docker vagrant
