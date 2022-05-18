# docker-sae203

Pour commencer, rendez-vous dans le répertoire racine <br>
<code>cd ~</code> <br>
<br>
Créez un dossier nfs dans le répertoire home (celui dans lequel vous vous trouvez si vous avez suivi l'étape précédente) <br>
```mkdir /home/nfs ``` <br>
<br>
Vous allez maintenant éditer le fichier exports grâce à l'éditeur vi<br>
<code>vi etc/exports</code> <br>
<br>
Ajoutez-y la ligne suivante (qui va servir à indiquer où va arriver le fichier à partager) <br>
<code>/home/nfs <adresse ip du récupérateur du fichier>/<nombre de bit de l'adresse IP></code> <br>
  <strong>NB</strong> : Si vous ne saisissez aucune adresse IP, tout le monde aura accès au fichier.<br>
<br>
