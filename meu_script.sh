#!/bin/bash

echo "Atualizando o servidor..."
apt-get update
apt-get upgrade -y

packages=("apache2" "unzip")
for package in "${packages[@]}"; do
    echo "Instalando $package..."
    apt-get install "$package" -y
done

echo "Baixando e copiando os arquivos da aplicação..."

download_url="https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip"
temp_dir="/tmp"
app_dir="/var/www/html"

cd "$temp_dir" || exit
wget "$download_url"
unzip -q main.zip
cd linux-site-dio-main || exit
cp -R * "$app_dir"
