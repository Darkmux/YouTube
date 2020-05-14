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
echo -e -n "${rojo}
┌══════════════════════════════┐
█ ${blanco}ESCRIBIR EL ENLACE DEL VIDEO ${rojo}█
└══════════════════════════════┘
┃
┃    ┌══════════════════════════════════════════┐
└═>>>█ Ejemplo >>> ${blanco}https://youtu.be/g9_mPcOEBGQ ${rojo}█
┃    └══════════════════════════════════════════┘
┃
└═>>> ${blanco}"
read -r Enlace

YouTube
echo -e -n "${rojo}
┌════════════════════════════┐
█ ${blanco}ESCRIBIR UN NOMBRE PARA SU ${rojo}█
█ ${blanco}(VIDEO/AUDIO) A DESCARGAR  ${rojo}█
└════════════════════════════┘
┃
┃    ┌═══════════════════════════════════════════┐
└═>>>█ Ejemplo >>> ${blanco}Termux_Hacking ${rojo}(Sin Espacios) █
┃    └═══════════════════════════════════════════┘
┃
└═>>> ${blanco}"

read -r Nombre

YouTube
echo -e -n "${rojo}
┌═══════════════════════════┐
█ ${blanco}ESCRIBIR LA RUTA DONDE SE ${rojo}█
█ ${blanco}GUARDARÁ SU (AUDIO/VIDEO) ${rojo}█
└═══════════════════════════┘
┃
┃    ┌══════════════════════════════┐
└═>>>█ Ejemplo >>> ${blanco}/sdcard/Download ${rojo}█
┃    └══════════════════════════════┘
┃
└═>>> ${blanco}"

read -r Ruta

while :
do
YouTube
echo -e -n "${rojo}
┌═════════════════════════════════┐
█ ${blanco}SELECCIONAR FORMATO DE DESCARGA ${rojo}█
└═════════════════════════════════┘

${rojo}┌═════════════════════════════════════┐
${rojo}█ [${blanco}1${rojo}] ┃ ${blanco}Video Completo (Todo)${rojo}  ┃ ${blanco}mp4${rojo}  █
${rojo}█═════════════════════════════════════█
${rojo}█ [${blanco}2${rojo}] ┃ ${blanco}Solo Video (Sin Audio)${rojo} ┃ ${blanco}webm${rojo} █
${rojo}█═════════════════════════════════════█
${rojo}█ [${blanco}3${rojo}] ┃ ${blanco}Solo Audio (Sin Video)${rojo} ┃ ${blanco}m4a${rojo}  █
${rojo}█═════════════════════════════════════█
${rojo}█ [${blanco}4${rojo}] ┃ ${blanco}Solo Audio (Sin Video)${rojo} ┃ ${blanco}mp3${rojo}  █
${rojo}└═════════════════════════════════════┘
┃
└═>>> ${blanco}"
read -r opcion_descarga

[ "$opcion_descarga" == "1" ]||[ "$opcion_descarga" == "2" ]||[ "$opcion_descarga" == "3" ]||[ "$opcion_descarga" == "4" ] && break

echo -e ${rojo}"
┌═════════════════════┐
█ ${blanco}¡OPCIÓN INCORRECTA! ${rojo}█
└═════════════════════┘
"
sleep 1.5
clear
done

case $opcion_descarga in
1)
YouTube
echo -e "${rojo}
┌══════════════════════════════════════┐
█ ${blanco}Descargando Video Completo (Todo)... ${rojo}█
└══════════════════════════════════════┘
"
youtube-dl -f mp4 $Enlace -o $Ruta/$Nombre.mp4 > /dev/null 2>&1
YouTube
echo -e "${rojo}
┌═════════════════════════════════════════┐
█ ${blanco}VIDEO COMPLETO DESCARGADO CORRECTAMENTE ${rojo}█
└═════════════════════════════════════════┘
┃
┌════════════┐
█ ${blanco}EN LA RUTA ${rojo}█
└════════════┘
┃
└═>>>${blanco} $Ruta
${rojo}┃
┌═══════════════┐
█ ${blanco}CON EL NOMBRE ${rojo}█
└═══════════════┘
┃
└═>>>${blanco} $Nombre.mp4
"
;;
2)
YouTube
echo -e "${rojo}
┌═══════════════════════════════════════┐
█ ${blanco}Descargando Solo Video (Sin Audio)... ${rojo}█
└═══════════════════════════════════════┘
"
youtube-dl -f webm $Enlace -o $Ruta/$Nombre.webm > /dev/null 2>&1
YouTube
echo -e "${rojo}
┌════════════════════════════════════════════┐
█ ${blanco}VIDEO (SIN AUDIO) DESCARGADO CORRECTAMENTE ${rojo}█
└════════════════════════════════════════════┘
┃
┌════════════┐
█ ${blanco}EN LA RUTA ${rojo}█
└════════════┘
┃
└═>>>${blanco} $Ruta
${rojo}┃
┌═══════════════┐
█ ${blanco}CON EL NOMBRE ${rojo}█
└═══════════════┘
┃
└═>>>${blanco} $Nombre.webm
"
;;
3)
YouTube
echo -e "${rojo}
┌═══════════════════════════════════════┐
█ ${blanco}Descargando Solo Audio (Sin Video)... ${rojo}█
└═══════════════════════════════════════┘
"
youtube-dl -f m4a $Enlace -o $Ruta/$Nombre.m4a > /dev/null 2>&1
YouTube
echo -e "${rojo}
┌════════════════════════════════════════════┐
█ ${blanco}AUDIO (SIN VIDEO) DESCARGADO CORRECTAMENTE ${rojo}█
└════════════════════════════════════════════┘
┃
┌════════════┐
█ ${blanco}EN LA RUTA ${rojo}█
└════════════┘
┃
└═>>>${blanco} $Ruta
${rojo}┃
┌═══════════════┐
█ ${blanco}CON EL NOMBRE ${rojo}█
└═══════════════┘
┃
└═>>>${blanco} $Nombre.m4a
"
;;
4)
YouTube
echo -e "${rojo}
┌═══════════════════════════════════════┐
█ ${blanco}Descargando Solo Audio (Sin Video)... ${rojo}█
└═══════════════════════════════════════┘
"
youtube-dl --extract-audio --audio-format mp3 $Enlace -o $Ruta/$Nombre.mp3 > /dev/null 2>&1
YouTube
echo -e "${rojo}
┌════════════════════════════════════════════┐
█ ${blanco}AUDIO (SIN VIDEO) DESCARGADO CORRECTAMENTE ${rojo}█
└════════════════════════════════════════════┘
┃
┌════════════┐
█ ${blanco}EN LA RUTA ${rojo}█
└════════════┘
┃
└═>>>${blanco} $Ruta
${rojo}┃
┌═══════════════┐
█ ${blanco}CON EL NOMBRE ${rojo}█
└═══════════════┘
┃
└═>>>${blanco} $Nombre.mp3
"
esac

while :
do
echo -e -n "${rojo}
┌═══════════════════════════════════════┐
█ ${blanco}¿QUIERE DESCARGAR OTRO (VIDEO/AUDIO)? ${rojo}█
└═══════════════════════════════════════┘

┌══════════════┐
█ [${blanco}1${rojo}] ┃${blanco}   SI${rojo}   █
█══════════════█
█ [${blanco}2${rojo}] ┃${blanco}   NO${rojo}   █
└══════════════┘
┃
└═>>> "${blanco}
read -r opcion_reiniciar

[ "$opcion_reiniciar" == "1" ]||[ "$opcion_reiniciar" == "2" ] && break

echo -e ${rojo}"
┌═════════════════════┐
█ ${blanco}¡OPCIÓN INCORRECTA! ${rojo}█
└═════════════════════┘
"
sleep 1
YouTube
done

case $opcion_reiniciar in
1)
source $HOME/YouTube/YouTube.sh
;;
2)
echo -e ""${blanco}
esac
