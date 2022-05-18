# Utiliser l'image debian officielle comme image parent
FROM debian:latest

RUN sudo apt-get install nfs-kernel-server \ 
    && mkdir home/nfs \
	&& service nfs-kernel-server restart

#Exporter le contenu sur le port 80
EXPOSE 80

#lancer le service nfs au démarrage du conteneur
CMD ["home/nfs","DOFREGROUND"]
