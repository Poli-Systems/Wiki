# Sauvegarde avec Duplicati vers Poli Systems S3

Cette page wiki vous guidera dans la configuration des sauvegardes avec Duplicati sur notre service S3. Notre service S3 offre une triple réplication dans deux centres de données différents en Suisse et un chiffrement AES-256 au niveau des disques. À la fin de ce guide, vous aurez configuré vos sauvegardes Duplicati.

Cet article se réfère à Duplicati - 2.0.8.1 utilisant un PC sous Windows. Cependant, les étapes devraient être les mêmes pour Linux, Mac, ou d'autres systèmes.

Les prints screen's de cet articles sont en Anglais, mais Duplicati est également disponible en Français.
Ce Wiki est tiré de notre article Anglais et à été traduis par IA.

## Qu'est-ce que Duplicati ?

Duplicati est un client de sauvegarde gratuit, open-source et hautement configurable qui stocke de manière sécurisée des sauvegardes chiffrées, incrémentielles et compressées sur des services de stockage cloud et des serveurs de fichiers distants. C'est une alternative populaire aux solutions de sauvegarde commerciales, offrant un moyen robuste et flexible de protéger vos données.

## Commander Votre Stockage S3

Tout d'abord, vous devez calculer l'espace de stockage S3 dont vous avez besoin. Vous pouvez choisir un plan S3 sur notre site ici : [https://polisystems.ch/en/s3](https://polisystems.ch/en/s3)

Assurez-vous d'évaluer correctement l'espace de stockage dont vous avez besoin pour vos sauvegardes.

## Installer Duplicati sur Votre Ordinateur

Rendez-vous sur le site officiel de Duplicati : [https://duplicati.com/download](https://duplicati.com/download). Choisissez le système sur lequel vous souhaitez installer Duplicati et téléchargez le logiciel.

Installez Duplicati sur votre ordinateur en suivant les étapes fournies lors de l'installation.

### Accéder à la Page Par Défaut de Duplicati

Une fois installé, ouvrez la page Duplicati. Si l'installateur n'a pas ouvert la page automatiquement, allez à [http://localhost:8200/](http://localhost:8200/) dans un navigateur pour accéder à la page de démarrage de Duplicati.

## Créer Votre Premier Plan de Sauvegarde

Cliquez sur le bouton "Ajouter une sauvegarde" dans le volet de gauche.

![Ajouter une Sauvegarde](https://i.imgur.com/OLSEBIU.png)

Cliquez sur "Suivant" sur la page suivante.

![Suivant](https://i.imgur.com/Nr2Gmw4.png)

### Général

Configurez les paramètres suivants :
- **Nom de la Sauvegarde** : Choisissez un nom pour votre sauvegarde.
- **Chiffrement** : Vous pouvez choisir de chiffrer votre sauvegarde. Nous recommandons d'activer le chiffrement pour plus de sécurité. Si vous activez le chiffrement, assurez-vous de sauvegarder votre "Phrase secrète".

Dans cet exemple, nous nommerons la sauvegarde "Test" et utiliserons une phrase secrète aléatoire.

![Paramètres Généraux](https://i.imgur.com/5ojOcHQ.png)

### Destination

Configurez votre destination (S3 de Poli Systems dans notre cas). Sélectionnez "Compatible S3" dans la liste "Type de stockage".

![Compatible S3](https://i.imgur.com/hKanLho.png)

Ensuite, configurez les options suivantes :
- **Utiliser SSL** : Coché
- **Serveur** : Poli Systems - 02 (CH) ou Poli Systems - 03 (CH) selon ce qui vous a été fourni
- **Nom du Bucket** : Cela peut être n'importe quoi, mais idéalement quelque chose comme le nom de l'ordinateur
- **Région de Création du Bucket** : Laisser tel quel
- **Classe de Stockage** : Laisser tel quel
- **Chemin du Dossier** : Le chemin où vos sauvegardes seront dans le bucket. Nous recommandons le nom de votre travail, pour nous ce sera "Test"
- **ID d'Accès AWS** : L'ID d'accès AWS de votre service S3 Poli Systems, disponible dans votre espace client sous le service concerné
- **Clé d'Accès AWS** : L'ID de clé AWS de votre service S3 Poli Systems, disponible dans votre espace client sous le service concerné
- **Bibliothèque Client à Utiliser** : Laisser tel quel

Avant de continuer, effectuez une étape importante pour que la sauvegarde fonctionne correctement. Dans la section "Options Avancées", ajoutez une option avancée. Ajoutez "s3-disable-chunk-encoding" et cochez-la.

![Options Avancées](https://i.imgur.com/etVGdcN.png)
![Désactiver le Codage par Blocs](https://i.imgur.com/OfixPBQ.png)

Maintenant, vous êtes prêt ! Vos paramètres devraient ressembler à ceci :

![Résumé des Paramètres](https://i.imgur.com/Wss5u5Q.png)

### Données Sources

Cliquez sur "Suivant" et choisissez les données que vous souhaitez sauvegarder. Cela peut être n'importe quoi, même votre ordinateur entier.

![Données Sources](https://i.imgur.com/Wqzd8WA.png)

Dans cet exemple, je vais juste sauvegarder mon dossier GitHub.

### Planification

Cliquez sur "Suivant" et choisissez quand vous souhaitez que les données soient sauvegardées.

![Planification](https://i.imgur.com/SNErbwf.png)

### Options

Ici, vous pouvez choisir les rétentions de sauvegarde et d'autres options de réglage fin comme la taille du volume distant. Les options par défaut fonctionnent bien.

![Options](https://i.imgur.com/p3edKta.png)

Cliquez sur "Suivant". Si des avertissements apparaissent, lisez-les et acceptez-les. Par exemple, le nom du bucket doit être en minuscules dans notre cas.

## Exécuter la Première Sauvegarde

Retournez dans le menu "Accueil" et exécutez votre première sauvegarde.

![Exécuter Sauvegarde](https://i.imgur.com/3rUk0lP.png)

Une fois terminé, vous pourriez avoir un avertissement. C'est normal car il s'agit de la première sauvegarde ; vous pouvez l'ignorer en toute sécurité.

Votre machine est maintenant sécurisée avec Duplicati sur nos services S3. N'oubliez pas de sauvegarder votre phrase secrète si vous avez utilisé le chiffrement dans votre travail, car sans elle vous ne pourrez pas restaurer les données.

## Remarques sur Duplicati

Duplicati est un logiciel open-source robuste, toujours marqué comme Beta mais très stable après des années de développement. Vous pouvez facilement restaurer vos sauvegardes dans la section réservée à cet effet. L'équipe de Poli Systems est fière d'être un fournisseur officiel de S3 pour ce projet excellent.

La chose la plus importante à retenir pour faire fonctionner Duplicati avec notre système est de désactiver "s3-disable-chunk-encoding" comme expliqué dans la section "Destination".