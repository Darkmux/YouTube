#!/bin/bash
#
# Created by: Termux Hacking
#
# YouTube
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
echo -e -n ${cyan}"
ESCRIBIR EL ENLACE DE SU VIDEO
DE YOUTUBE QUE DESEA DESCARGAR

${amarillo}Ejemplo ${rojo}>>> ${blanco}https://youtu.be/g9_mPcOEBGQ

${rojo}>>> ${blanco}"
read -r Enlace

YouTube
echo -e -n ${cyan}"
ESCRIBIR UN NOMBRE PARA SU
(VIDEO/MÚSICA) A DESCARGAR

${amarillo}Ejemplo ${rojo}>>> ${blanco}TermuxHacking

${rojo}>>> ${blanco}"
read -r Nombre

YouTube
echo -e -n ${cyan}"
ESCRIBIR LA RUTA QUE INDIQUE
DONDE SE DESCARGARÁ SU VIDEO

${amarillo}Ejemplo ${rojo}>>> ${blanco}/sdcard/Download

${rojo}>>> ${blanco}"
read -r Ruta

while :
do
YouTube
echo -e -n ${cyan}"
[SELECCIONAR OPCIÓN DE DESCARGA]

${rojo}|-------------------------------------|
${rojo}| ${amarillo}[${rojo}1${amarillo}]${rojo} | ${cyan}Video Completo (Todo)${rojo}  | ${amarillo}mp4${rojo}  |
${rojo}|-------------------------------------|
${rojo}| ${amarillo}[${rojo}2${amarillo}]${rojo} | ${cyan}Solo Video (Sin Audio)${rojo} | ${amarillo}webm${rojo} |
${rojo}|-------------------------------------|
${rojo}| ${amarillo}[${rojo}3${amarillo}]${rojo} | ${cyan}Solo Audio (Sin Video)${rojo} | ${amarillo}m4a${rojo}  |
${rojo}|-------------------------------------|

${amarillo}>>> ${blanco}"
read -r opcion_descarga

[ "$opcion_descarga" == "1" ]||[ "$opcion_descarga" == "2" ]||[ "$opcion_descarga" == "3" ] && break

echo -e ${rojo}"
¡OPCIÓN INCORRECTA!
"
sleep 1.5
clear
done

case $opcion_descarga in
1)
YouTube
echo -e "
${rojo}[${amarillo}√${rojo}]${cyan} Descargando Video Completo...
"${blanco}
youtube-dl -f mp4 $Enlace -o $Ruta/$Nombre.mp4 > /dev/null 2>&1
YouTube
echo -e ${cyan}"
VIDEO COMPLETO DESCARGADO CORRECTAMENTE
EN LA RUTA >>>${rojo} $Ruta ${cyan}
CON EL NOMBRE DE >>>${rojo} $Nombre.mp4
"${blanco}
;;
2)
YouTube
echo -e "
${rojo}[${amarillo}√${rojo}]${cyan} Descargando Video (Sin Audio)...
"${blanco}
youtube-dl -f webm $Enlace -o $Ruta/$Nombre.webm > /dev/null 2>&1
YouTube
echo -e ${cyan}"
VIDEO (SIN AUDIO) DESCARGADO CORRECTAMENTE
EN LA RUTA >>>${rojo} $Ruta ${cyan}
CON EL NOMBRE DE >>>${rojo} $Nombre.webm
"${blanco}
;;
3)
YouTube
echo -e "
${rojo}[${amarillo}√${rojo}]${cyan} Descargando Audio (Sin Video)...
"${blanco}
youtube-dl -f m4a $Enlace -o $Ruta/$Nombre.m4a > /dev/null 2>&1
echo -e ${cyan}"
AUDIO (SIN VIDEO) DESCARGADO CORRECTAMENTE
EN LA RUTA >>>${rojo} $Ruta ${cyan}
CON EL NOMBRE DE >>>${rojo} $Nombre.m4a
"${blanco}
esac
