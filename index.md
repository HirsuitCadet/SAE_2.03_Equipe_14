## Introduction

Notre equipe était composé de 3 membres: Brazeau Axel     B
                                         Houard  Killian  B
                                         Harel   Corentin B

Nous avons pour but de réaliser une installation réseau à l'aide de docker. Nous avons le libre choix de choisir le sujet du projet mais nous avons quelques contraintes à respecter. Le projet doit être basé sur dockerfile et héberger par un dépôt github. Il doit être codé à partir du langage système de debian, c’est-à-dire que la première ligne du Dockerfile devrait être FROM debian:latest. Et le projet doit être sur un seul serveur et non plusieurs.

## Le Sujet 

Pour ce qui est du sujet nous avons choisi le partage de fichier. Nous avons essayer de passer par le lamp "NFS" (Network file system). Mais nous avons rencontré un problème de permission majeur: La non-accessibilité au fichier "etc" de notre session debian, dans lequel nous devions placé le fichier de confifuration du serveur. Nous sommes donc passé par "proftpd", un lamp qui permet de crée un serveur ftp. Nous avons crée le fichier "config.conf" directement dans le fichier du dockerfile. Pour copier-celui ci dans l'image docker qui héberge le serveur. En passant par cette méthode nous n'avons pas rencontrer de problème et le serveur a fini par fonctionné correctement. 


[![Logo FTP](https://support.capconnect.com/wp-content/uploads/2020/09/file-transfer-protocol-min.png)



