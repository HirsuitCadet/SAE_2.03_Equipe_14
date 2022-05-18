# Utiliser l'image debian officielle comme image parent
FROM debian:latest

RUN apt-get update && apt -y upgrade &&
    apt-get install sysvinit-utils \

RUN apt-get install -y nfs-kernel-server \ 

RUN service nfs-kernel-server restart

#Exporter le contenu sur le port 80
EXPOSE 80

#lancer le service nfs au démarrage du conteneur
CMD ["home/nfs","DOFREGROUND"]
