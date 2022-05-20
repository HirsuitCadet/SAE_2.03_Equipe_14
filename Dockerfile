FROM debian:latest

WORKDIR ~

#Installation des eventuels mise à jour
RUN apt-get update
RUN apt-get -y upgrade

#Installation des services nécessaires
RUN apt -y install proftpd


COPY ./config.conf  /etc/proftpd/conf.d/
