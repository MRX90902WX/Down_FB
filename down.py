#!/usr/bin/env python
#-*- coding: utf-8 -*-

"""
Author: 𝔘𝔫𝔨𝔫𝔬𝔴𝔫
Descripcion:
    Descarga musica y videos facilmente en la mejor
    calidad y sonido
"""
import os, time, argparse

parser = argparse.ArgumentParser()
parser.add_argument("-v","--video",help="DESCARGAR VIDEO")
parser.add_argument("-m","--musica",help="DESCARGAR MUSICA")
parser.add_argument("-am","--archivom",help="ARCHIVO MUSICA")
parser.add_argument("-av","--archivov",help="ARCHIVO VIDEO")
parser = parser.parse_args()

listaCanciones = parser.archivom
listaVideos = parser.archivov

def main():
	try:
		file = open(".down","r")
		lectura = file.read()
		file.close()
		if lectura == "1":
			installer()
	except:
		install("pip install youtube-dl")
		install("apt install ffmpeg -y")
		file = open(".down","w")
		file.write("1")
		file.close()
		installer()

def install(x):
	os.system(x)

def installer():
    os.system("clear")
    if parser.archivom:
        try:
            file = open(listaCanciones,"r")
            for canciones in file:
                file = canciones.replace("\n","")
                os.system("youtube-dl -x -f bestaudio --audio-format mp3 "+file)
                print("\n")
            file.close()
        except:
            os.system("clear")
            time.sleep(2)
            print("\n  \033[1;32mLISTA DE MUSICA DESCARGADA\033[0;97m\n")
    elif parser.archivov:
        try:
            filev = open(listaVideos,"r")
            for cancionesv in filev:
                filev = cancionesv.replace("\n","")
                os.system("youtube-dl "+filev)
                print("\n")
            filev.close()
        except:
            os.system("clear")
            time.sleep(2)
            print("\n  \033[1;32mLISTA DE VIDEOS DESCARGADA\033[0;97m\n")
    elif parser.video:
        os.system("youtube-dl "+parser.video)
        os.system("clear")
        time.sleep(2)
        print("\n  \033[1;32mVIDEO DESCARGADO\033[0;97m\n")
    elif parser.musica:
        os.system("youtube-dl -x -f bestaudio --audio-format mp3 "+parser.musica)
        os.system("clear")
        time.sleep(2)
        print("\n  \033[1;32mMUSICA DESCARGADA\033[0;97m\n")
    else:
        print("\n  usage: python down.py --help\n")

if __name__ == '__main__':
    main()
