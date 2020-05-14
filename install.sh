#!/bin/bash
#
# REQUISITOS
#
# VARIABLES
#
source $HOME/YouTube/Colors.sh
#
# FUNCIONES
#
function YouTube {
	sleep 0.5
	clear
echo -e ${rojo}"
▄▄▄    ▄▄▄                     ▄▄▄▄▄▄▄▄            ▄▄
 ██▄  ▄██                      ▀▀▀██▀▀▀            ██
  ██▄▄██    ▄████▄   ██    ██     ██     ██    ██  ██▄███▄    ▄████▄
   ▀██▀    ██▀  ▀██  ██    ██     ██     ██    ██  ██▀  ▀██  ██▄▄▄▄██
    ██     ██    ██  ██    ██     ██     ██    ██  ██    ██  ██▀▀▀▀▀▀
    ██     ▀██▄▄██▀  ██▄▄▄███     ██     ██▄▄▄███  ███▄▄██▀  ▀██▄▄▄▄█
    ▀▀       ▀▀▀▀     ▀▀▀▀ ▀▀     ▀▀      ▀▀▀▀ ▀▀  ▀▀ ▀▀▀      ▀▀▀▀▀
"${blanco}
}
#
# CÓDIGO
#
YouTube
echo -e "${rojo}
┌══════════════════════════════┐
█ ${blanco}Actualizando Repositorios... ${rojo}█
└══════════════════════════════┘
"
apt update && apt upgrade -y
YouTube
echo -e "${rojo}
┌════════════════════┐
█ ${blanco}Instalando curl... ${rojo}█
└════════════════════┘"
pkg install -y curl > /dev/null 2>&1
echo -e "${rojo}
┌════════════════════┐
█ ${blanco}Instalando wget... ${rojo}█
└════════════════════┘"
pkg install -y wget > /dev/null 2>&1
echo -e "${rojo}
┌══════════════════════┐
█ ${blanco}Instalando python... ${rojo}█
└══════════════════════┘"
pkg install -y python > /dev/null 2>&1
echo -e "${rojo}
┌═══════════════════════┐
█ ${blanco}Instalando python2... ${rojo}█
└═══════════════════════┘"
pkg install -y python2 > /dev/null 2>&1
echo -e "${rojo}
┌══════════════════════┐
█ ${blanco}Instalando ffmpeg... ${rojo}█
└══════════════════════┘"
pkg install -y ffmpeg > /dev/null 2>&1
echo -e "${rojo}
┌══════════════════════════┐
█ ${blanco}Instalando youtube-dl... ${rojo}█
└══════════════════════════┘
"
cd
curl -L https://yt-dl.org/downloads/latest/youtube-dl -o /data/data/com.termux/files/usr/bin/youtube-dl > /dev/null 2>&1
chmod a+rx /data/data/com.termux/files/usr/bin/youtube-dl > /dev/null 2>&1
cd $HOME/YouTube
chmod 711 YouTube.sh
YouTube
echo -e "${rojo}
┌═══════════════════════┐
█ ${blanco}REQUISITOS INSTALADOS ${rojo}█
█  ${blanco}EJECUTE EL COMANDO   ${rojo}█
└═══════════════════════┘
┃
┃    ┌══════════════┐
└═>>>█ ${blanco}./YouTube.sh ${rojo}█
     └══════════════┘
"${blanco}
