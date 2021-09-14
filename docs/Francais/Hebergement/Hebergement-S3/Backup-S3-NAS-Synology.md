
# Backup S3 NAS Synology

Cette page de Wiki va vous guider pour la configuration des backups de votre NAS Synology sur notre service S3.
Ce service S3 est proposé par nous-mêmes, avec une triple réplication dans deux datacenters différents en Suisse et avec de l'encryptage AES-256.
À la fin de cette page de Wiki vous aurez configuré votre NAS Synology avec des backups chez nous en utilisant le service Hyper backup de Synology.

Cet article se réfère sur DSM 7.0 en utilisant un NAS Synology 1821+.

## Commander votre stockage S3

En  premier  il  vous  faut  calculer  votre  espace  de  stockage  S3 nécessaire.
Vous pouvez choisir un plan S3 sur notre site ici : https://polisystems.ch/fr/s3

Contrôler correctement l'espace de stockage dont vous avez besoin pour vos backups.

## Configurer votre NAS Synology

Une fois que vous êtes en possession de vos logins S3 (disponible dans l'espace client) rendez-vous sur votre NAS.

### Installer Hyper Backup

Premièrement rendez-vous dans le gestionnaire de paquets Synology et installer le paquet Hyper Backup s'il ne l'est pas encore.
![](https://i.imgur.com/bcYZyZr.png)
Dans notre cas il est déjà installé, si ce n'est pas le cas chez vous installer celui-ci et appuyer sur Ouvrir.

### Configurer Hyper Backup
Une fois que Hyper Backup est ouvert cliquer simplement sur "+" en haut à gauche.
Cliquer ensuite sur "Tâche de sauvegarde de données".
![](https://i.imgur.com/0scqEic.png)
Ensuite il vous suffit de sélectionner S3 Storage dans la liste.
![](https://i.imgur.com/QbpYEkK.png)

#### Remplir vos informations S3
Vous n'êtes pas loin d'avoir fini. 
Ici il vous suffit d'entrer vos informations S3 (disponible dans votre espace personnel Poli Systems).

![](https://i.imgur.com/px1oExF.png)

 - Adresse du serveur : s3.polisystems.ch
 - Signature Version : V4 ou V2
 - Type de requête : Type Chemin
 - Access Key : Votre clé d'accès S3
 - Secret Key : Votre clé secrète S3
 - Nom du Bucket : Soit default ou crée un nouveau bucket juste pour votre Synology
 - Répertoire : Le répertoire où sera stocké le backup du Synology

Ensuite appuyer simplement sur suivant.

Choisissez les dossiers que vous voulez backuper et appuyer sur le suivant à nouveau.
Choisissez les applications que vous voulez sauvegarder et appuyer sur le suivant.

#### Planifier les backups

![](https://i.imgur.com/s83dtlr.png)
Ici il vous faut choisir quand vous souhaitez que les sauvegardes soient faites.
Si vous le souhaitez vous pouvez activer la vérification de l'intégrité des fichiers.
**Vous pouvez également activer un chiffrement côté client, mais si vous perdez la clé ou le mot de passe vous ne pourrez plus récupérer vos données alors gardez ces informations précieusement en cas d'activation du chiffrement.**

Appuyer sur suivant à nouveau.

#### Configuration de la rotation des sauvegardes
![](https://i.imgur.com/MtAx415.png)
Concernant la rotation des sauvegardes nous vous recommandons d'activer Smart recycle si la place vous le permet.
Ceci vous permet d'avoir différentes versions de vos fichiers, par exemple si vous les supprimez.
Dans notre cas 50 versions nous permettent de retrouver nos fichiers jusqu'à 6 mois en arrière.

#### Votre sauvegarde est prête!
![](https://i.imgur.com/G1fYUWH.png)

Voilà votre NAS est désormais sauvegardé et sécurisé. Vous ne perdrez plus jamais vos données!
Une fois un backup effectué faites quelques tests dans hyper backup de restauration de fichiers unique en utilisant le bouton action sur l'écran au-dessus.
