#!/bin/bash

# Actualizar la lista de paquetes disponibles
sudo apt-get update

# Instalar las dependencias necesarias
sudo apt-get install -y apt-transport-https dirmngr
sudo apt-key adv --keyserver hkp://keys.gnupg.net --recv-keys 9C73F9A9
echo 'deb https://deb.bloodhound.com/debian stretch main' | sudo tee /etc/apt/sources.list.d/bloodhound.list

# Actualizar la lista de paquetes disponibles después de añadir el repositorio de Bloodhound
sudo apt-get update

# Instalar Bloodhound
sudo apt-get install -y bloodhound
