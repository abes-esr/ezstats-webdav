# ezstats-webdav

## Image du conteneur Webdav de l'application EZStats

Les variables REALM (WebDav) et AUTH_TYPE (Digest) sont fixées en dur par rapport à l'image : bytemark/webdav:2.4

Les variable USERNAME et PASSWORD sont à définir pour spécifier un utilisateur admin.   
Sinon, on peut utiliser la commande : htdigest user.passwd WebDAV "user" pour définir d'autres utilisateurs dans le fichier /user.passwd (à monter en volume)

Un volume peut être monté sur /var/lib/dav pour le stockage des données

Le dav.conf a été amélioré avec l'ajout de nouveaux BrowserMatch (Microsoft-WebDAV-MiniRedir)