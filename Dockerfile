FROM debian:latest

WORKDIR ~

#Installation des eventuels mise à jour
RUN apt-get update
RUN apt-get -y upgrade

#Installation des services nécessaires
RUN apt -y install proftpd

#Copie du fichier de configuration
#RUN echo " ServerName "" Equipe 14 Server"" \n\
#         DisplayLogin "" Bienvenu sur Equipe 14 Server "" \n\
#        UseIPv6 off   \n\
#         Port 80  \n\
#         RootLogin on \n\
#         MaxClients 3  "  >> /etc/proftpd/conf.d/config.conf \n\
#         <Limit Login>
#               DenyGroup !ftp2100
