#!/bin/bash

echo "Atualizando o servidor..."
apt-get update
apt-get upgrade -y

acho "Instalando Apache e Zip ..."
apt-get install apache2 -y
apt-get install unzip -y

echo "Baixando e descompactando os arquivos web..."
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip

echo "Copiando os arquivos web para a pasta do servidor..."
cd linux-site-dio-main
cp -R * /var/www/html/

echo "Finalizado! Servidor web funcionando corretamente!"
