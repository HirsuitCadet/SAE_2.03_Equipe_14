FROM debian:latest

WORKDIR ~

#Installation des eventuels mise à jour
RUN apt-get update
RUN apt-get -y upgrade

#Installation des services nécessaires
RUN apt -y install proftpd

#Copie du fichier de configuration
COPY ./config.conf  /etc/proftpd/conf.d/

#Création de notre groupe d'utilisateur
RUN groupadd ftp2100

EXPOSE 21
