#!/bin/bash
#Instalacion de dependencias
sudo apt -y install build-essential && sudo apt -y build-dep libwacom
sudo apt install -y libgudev-1.0-dev libxml++2.6-dev
sudo apt install -y autoconf linux-headers-$(uname -r)
sudo apt install -y libtool
#sudo apt install -y git

#Cambio de directorio para clonar el repositorio
cd ~/Downloads
git clone https://github.com/linuxwacom/libwacom.git
cd libwacom

#Instalacion de los drivers mediante autogen
./autogen.sh --prefix=/usr --libdir=/usr/lib/x86_64-linux-gnu/
make
sudo make install
