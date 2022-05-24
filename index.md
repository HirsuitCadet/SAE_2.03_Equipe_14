## Compte Rendu



## Introduction

Notre equipe était composé de 3 membres: Brazeau Axel     B
                                         Houard  Killian  B
                                         Harel   Corentin B

Nous avons pour but de réaliser une installation réseau à l'aide de docker. Nous avons le libre choix de choisir le sujet du projet mais nous avons quelques contraintes à respecter. Le projet doit être basé sur dockerfile et héberger par un dépôt github. Il doit être codé à partir du langage système de debian, c’est-à-dire que la première ligne du Dockerfile devra être FROM debian:latest. Et le projet doit être sur un seul serveur.

## Le sujet 

Pour ce qui est du sujet nous avons choisi le partage de fichier. Nous avons essayer de passer par le lamp "NFS" (Network file system). Mais nous avons rencontré un problème de permission majeur: La non-accessibilité au fichier "etc" de notre session debian, dans lequel nous devions placé le fichier de confifuration du serveur. Nous sommes donc passé par "proftpd", un lamp qui permet de crée un serveur ftp. Nous avons crée le fichier "proftpd.conf" directement dans le fichier local du dockerfile. Pour copier-celui ci dans l'image docker qui héberge le serveur. En passant par cette méthode nous n'avons pas rencontrer de problème et le serveur a fini par fonctionné correctement. 


[![Logo FTP](https://support.capconnect.com/wp-content/uploads/2020/09/file-transfer-protocol-min.png)]

## Comment utiliser le serveur FTP

Je précise d'abord que la connexion n'est possible que sur une machine debian.

[Machine hôte] Dans le fichier de configuration nous avons autorisé que les utilisateurs faisant parti du groupe ftp2100 à accéder au serveur. Il faudra donc crée un utilisateur lamba, et l'ajouter au groupe ftp2100. <code> adduser xxx / adduser xxx ftp2100 </code>. [Machine distante] Ensuite sur la machine distante debian. Il vous faudrat vous connectez au serveur à l'aide de la fonctionalité "connexion à un serveur..". Puis sélectionner l'option "Serveur FTP avec identification". Puis y rentrer le nom du service (dans notre cas di-docker), le port, le nom de l'utilisateur et son mot de passe. Après cela vous êtes connecté au serveur et avez accès à tous les fichiers de la machine hôte vous pouvez d'ailleur, les ouvrir, les copier pour les transférer sur la machine distante. 

##Explication de notre dockerfile

<code>FROM debian:latest</code>

<code> WORKDIR ~ </code>

#Installation des eventuels mise à jour
<code>RUN apt-get update</code>
<code>RUN apt-get -y upgrade</code>

#Installation des services nécessaires
<code>RUN apt -y install proftpd</code>

#Copie du fichier de configuration
<code>COPY ./config.conf  /etc/proftpd/conf.d/</code>

#Création de notre groupe d'utilisateur
<code>RUN groupadd ftp2100</code>

<code>EXPOSE 21</code>


##Fichier de configuration du serveur

ServerName "di-docker"
DisplayLogin "Bienvenu sur le serveur de l'équipe 14"
UseIPv6 off
Port 21
RootLogin on
MaxClients 2
UseReverseDNS off
<Limit Login>
  DenyGroup !ftp2100
</Limit>
<IfModule mod_ident.c>
    IdentLookups off
</IfModule>



