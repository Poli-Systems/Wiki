# Qu'est-ce que c'est S3?

De manière simple S3 est un système de fichiers. Au lieu de sauvegarder des données de manière conventionnelle, on sauvegarde des "objets" (comme des fichiers Word) dans des buckets (qui sont une sorte de dossiers).

Concrètement, S3 est très pratique pour stocker des données de manière massive. Netflix s'en sert pour stocker les fichiers des films et des séries par exemple.

PS : Si vous cherchez à le configurer pour sauvegarder votre NAS Synology, voici le [guide](https://wiki.polisystems.ch/Francais/Hebergement/Hebergement-S3/Backup-S3-NAS-Synology/).

## Avantages et désavantages

L'atout principal de S3 est le fait qu'on puisse le stocker dans plusieurs emplacements très facilement.
Il n'y a pas de limite de place et c'est flexible.
On peut faire des versions de fichiers, ce qui permet de revenir en arrière à tout moment.

Le désavantage principal du S3 eet le fait que ce n'est pas très facile d'utilisation comparé à un simple dossier.
Mais nous allons résoudre ce problème ici!

## Cas d'utilisations

S3 peut être utilisé dans plusieurs situations dont voici quelques exemples :

- Stockage de très gros fichiers
- Stockage pour un Cloud privé
- Stockage de sauvegarde de manière hautement disponible
- Stockage de sauvegardes avec des versions (par exemple machines virtuelles)
- Stockage d'archives
- Stockage pour la sécurité et conformité (impôts,...)

Il existe énormément de manière d'utiliser le S3. Mais le plus intéressant reste l'archivage, étant donné qu'il n'y a pas de limite de taille.

## Pourquoi avez-vous besoin d'un stockage S3

Premièrement ce service est peu cher selon les fournisseurs (comme chez nous).
Maintenir votre propre infrastructure de stockage peut s'avérer coûteux, par exemple si un disque tombe en panne il est à votre charge.
C'est rassurant, vous n'aurez plus peur de perdre vos données.

Il y a bien d'autres raisons mais nous vous laissons les découvrir par vous-même.

## Pourquoi S3 est moins cher

Il y a plusieurs facteurs qui rentrent en compte. 
Le premier est que vous payez uniquement ce dont vous avez besoin. Vous n'avez donc pas besoin de planifier ou payer pour une "future" utilisation.
Le second est que vous ne payez ni le matériel, ni l'électricité, ni le loyer, ni la connexion internet. Et oui, ça devient vite cher si vous devez faire le calcul.
Le troisième est que dans le futur vous ne devrez pas racheter du matériel. C'est nous qui allons le payer pour vous!

Et finalement le prix par TB est même moins cher tout compte fait! 

## Comment utiliser S3 de manière simple

Pour vous connecter à votre premier service S3 nous vous recommandons d'utiliser https://s3browser.com/.
Ce logiciel est très simple d'utilisation. 

Installez le sur votre PC et ensuite allez dans votre espace client Poli Systems.
Choisissez le service S3 et prenez vos informations de connexion.

Ensuite remplissez les informations comme ici.
![](https://i.imgur.com/f8JjwVT.png)

Appuyer sur Save, et voilà vous êtes connectés à votre service S3.
![](https://i.imgur.com/72kHUf4.png)

Pour ajouter un fichier ou un dossier, il vous suffit de le slider dans la fenêtre.

Sur la gauche vous trouverez vos buckets (par exemple ici j'ai uniquement le bucket default).
