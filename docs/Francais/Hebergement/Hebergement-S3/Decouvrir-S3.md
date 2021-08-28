# Qu'est-ce que c'est S3?

De manière simple S3 est un système de fichiers. Au lieu de sauvegarder des données de manière conventionnelle, on sauvegarde des "objets" (comme des fichiers Word) dans des buckets (qui sont des sorte de dossiers).

Concrètement S3 est très pratique pour stocker de données de manière massive. Netflix s'en sert pour stocket les fichiers des films et des séries par exemple.

## Avantages et désavantages

Le gros atout de S3 et le fait qu'on puisse le stocker dans plusieurs emplacements facilement.
Il n'y a pas de limite de place, et c'est flexible.
On peut faire des versions des fichiers, ce qui permet de revenir en arrière.

Le désavantage principal de S3 et le fait que ce n'est pas très facile d'utilisation comparé à un simple dossier.
Mais nous allons résoudre ce problème ici!

## Cas d'utilisations

S3 peut être utilisé dans toutes sortes de cas voici quelques exemples :

- Stockage de très gros fichiers
- Stockage pour un Cloud privé
- Stockage de sauvegarde de manière hautement disponible
- Stockage de sauvegardes avec des versions (par exemple machines virtuelles)
- Stockage d'archives
- Stockage pour la sécurité et conformité (impôts,...)

Il existe énormément de manière d'utiliser S3. Mais le plus intéressant reste l'archivage, étant donné qu'il n'y a pas de limite de taille.

## Pourquoi avez-vous besoin d'un stockage S3

Premièrement ce service est peu cher selon les fournisseurs (comme chez nous).
Maintenir votre propre infrastructure de stockage peut s'avérer couteux, par exemple si un disque tombe en panne il est à votre charge.
C'est rassurant, vous n'aurez plus peur de perdre vos données.

Il y a bien d'autres raison mais nous vous laissons les découvrir par vous-même.

## Pourquoi S3 est moins cher

Il y a plusieurs facteurs qui rentrent en compte. 
Le premier est que vous payez uniquement ce dont vous avez besoin. Vous n'avez donc pas besoin de planifier ou payer pour une "future" utilisation.
Le second est que vous ne payez ni le matériel, ni l'électricité, ni le loyer, ni la connexion internet. Et oui ça devient vite cher si vous devez faire le calcul.
Le troisième c'est que dans le futur vous ne devrez pas racheter du matériel, malheureusement c'est nous qui allons devoir le payer pour vous!

Et finalement le prix par TB est même moins cher au final! 

## Comment utiliser S3 de manière simple

Pour vous connecter à votre premier service S3 nous vous recommandons d'utiliser https://s3browser.com/.
Ce logiciel est très simple d'utilisation. 

Installer le sur votre PC et ensuite aller dans votre espace client Poli Systems.
Choisissez le service S3 et prenez vos informations de connexions.

Ensuite remplissez les informations comme ici.
![](https://i.imgur.com/f8JjwVT.png)

Appuyer sur Save, et voilà vous êtes connecté à votre service S3.
![](https://i.imgur.com/72kHUf4.png)

Pour ajouter un fichier ou un dossier il vous suffit de le slider dans la fenêtre.

Sur la gauche vous trouverez vos buckets (par exemple ici j'ai uniquement le bucket default).