# docker-sae203

Pour commencer, lancez le Dockerfile <br>
    <code>docker run -it -p <port de la machine hôte>:21 proftpd-debian /bin/bash</code><br>
<strong>NB :</strong> le port 21 est obligatoire pour les serveurs ftp.<br>
<br>
Vous allez maintenant créer un utilisateur pour se connnecter au serveur <br>
    <code>adduser <nom d'utilisateur></code>
<br>
Puis créer un groupe d'utilisateur nommé "ftp2100", nom donné au serveur dans le Dockerfile<br>
    <code>addgroup ftp2100</code>
<br>
Vous allez ajouter l'utilisateur au groupe "ftp2100" <br>
    <code>adduser <nom d'utilisateur> ftp2100</code>
<br>
L'utilisateur est maintenant ajouté au groupe, lui permettant d'accéder au serveur<br>
<br>
Sous un système d'exploitation Linux, comme Debian par exemple, vous avez une option vous permettant de vous connecter sur un serveur via son IP ou identifiant. Cette option est généralement trouvable dans l'onglet "Emplacement".<br>
Une fois la fenêtre de connexion affichée, vérifiez que l'option de connexion avec identifiant est activée. <br>
Saisissez alors l'identifiant du serveur, <strong>di-docker</strong> dans notre cas, ou son IP, puis le port de connexion que vous avez renseigné lors du lancement du Dockerfile.<br>
Ne vous étonnez pas, le temps de connexion est assez long.
