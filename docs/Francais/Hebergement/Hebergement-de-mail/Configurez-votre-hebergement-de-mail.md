#Configurez votre hébergement de mail

Pour bien expliquer l'ensemble du processus, nous allons l'expliquer à partir du moment où vous commandez votre hébergement de messagerie jusqu'à ce que votre messagerie soit configurée.
Ce guide sera très détaillé, afin que même les nouveaux utilisateurs puissent mettre en place et faire fonctionner leur service de messagerie.
Pour les utilisateurs avancés, ce guide peut sembler long, mais vous le trouverez sûrement plus facile que vous ne le pensez.
Si vous avez besoin d'aide, vous pouvez toujours nous [contacter](https://portal.polisystems.ch/submitticket.php) et nous serons heureux de vous aider.

Notez que les prix et les paquets peuvent avoir changé au fil du temps.

##Ça a l'air compliqué mais ça ne l'est pas

Croyez-nous, ce guide est très détaillé et vous penserez sûrement que c'est vraiment difficile.
Ce n'est pas le cas. Une fois que vous l'aurez compris, vous nous direz sûrement que c'est plus facile que vous ne le pensiez.

##Commandez votre service de mail

Choisissez d'abord le paquet qui vous convient sur notre site web et appuyez sur "Acheter".

![Commande](https://i.imgur.com/HCu8P6o.png)

Entrez votre nom de domaine actuel, enregistrez ou transférez un nom de domaine.
Ici, nous allons utiliser notre domaine existant.
Note : **il ne sera pas nécessaire de mettre à jour vos serveurs de noms**.

![Commande](https://i.imgur.com/FKJOkjq.png)

Choisissez votre cycle de facturation et continuez.

![Commande](https://i.imgur.com/vLypOhZ.png)

Remplissez toutes les informations ou procédez à la commande avec votre compte.
Choisissez votre mode de paiement et n'oubliez pas de cliquer sur *J'ai lu et j'accepte les conditions d'utilisation* en bas de la page.

![Espace client](https://i.imgur.com/bLH00pv.png)

Rendez-vous maintenant dans l'espace client.

##Mail Important (configuration du domaine)

Cette section est très importante.
Vous allez recevoir un courrier important dans votre boîte de réception.

Dans ce mail, vous trouverez tout ce dont vous avez besoin pour configurer et gérer vos services de messagerie.
Il contient principalement toutes les informations que vous devez ajouter dans le DNS de votre domaine.

![Mail](https://i.imgur.com/YU9PDO9.png)

Maintenant, dirigez-vous vers votre domaine et configurez-le comme dans le mail.
Si vous n'avez pas acheté votre domaine par notre intermédiaire ou si vous utilisez Cloudflare, c'est la même chose.

Allez donc sur la page de vos domaines dans l'espace client, et gérez les enregistrements DNS.

![Ajouter des enregistrement dns partie 1](https://i.imgur.com/JZMbPXY.png)

**Gardez cette page ouverte, nous en aurons besoin plus tard pour DKIM**.
N'oubliez pas d'enlever les qotes s'il y en a.

Nous avons ajouté nos enregistrements DNS que nous avons reçus dans le courrier, donc les enregistrements MX et SPF.

C'était facile, non ?

Nous devons faire une dernière chose avec nos enregistrements DNS mais nous l'expliquerons plus tard dans ce tutoriel.

##Gérer votre service de mail

###Connectez-vous sur le panneau
Dans le mail dont nous avons parlé récemment, vous avez sûrement vu l'url de votre panneau de contrôle.

![Panneau de gestion des mails](https://i.imgur.com/MkX2H41.png)

Il y a deux façons de se connecter au panneau.
Vous pouvez vous connecter en utilisant les informations d'identification que nous vous avons envoyées par courrier.
Ou vous pouvez vous connecter sur votre espace client en cliquant sur "Connexion à DirectAdmin" sur la page produit de votre hébergement mail.

![Login via portal](https://i.imgur.com/9OQhHqe.png)

Il suffit de se connecter en utilisant l'une des deux méthodes suivantes.

![Panneau de gestion](https://i.imgur.com/ZC4ZZeD.png)

**Vous pouvez choisir votre langue ici, ou dans le menu en bas à gauche une fois connecter**

Génial, vous y êtes !
Ici, vous pouvez voir quelques éléments, l'espace disque, les e-mails et plus encore.

**Sur votre gauche, il y a quelques boutons. Ils expliquent ce qu'ils font.
Nous nous intéressons pour l'instant à la section *Gestion de compte*.

####Note sur les paquets multi-domaines

>Si vous avez un plan qui inclut plusieurs domaines, vous pouvez ajouter des domaines supplémentaires dans la section "Configuration du domaine".
>Il vous suffit de cliquer sur "Ajouter un nouveau", de remplir votre domaine et de cliquer sur "Créer".

>**Note : pour les utilisateurs ayant plusieurs domaines, vous pouvez changer de domaine en haut à droite.**
![Domaine](https://i.imgur.com/2CqsyzN.png)

###Configuration de DKIM

Vous avez presque terminé !

Allez à "Gestion de Compte -> DKIM Keys (ONLY USE DKIM KEY HERE)".

Vous voyez l'enregistrement x._domainkey ?

![Domain key DKIM](https://i.imgur.com/28PKrPD.png)

Prenez le premier enregistrement (x._domainkey) et ajoutez un enregistrement **TXT** à votre DNS (la page que vous n'avez pas fermée).
Prenez le deuxième enregistrement comme "v=DKIM1 ; k=rsa ; .....".
et collez-le comme adresse.

**ENLEVER LES QOTES de "v=DKIM**".

A la fin, cela devrait ressembler à ceci :

![DKIM](https://i.imgur.com/Cob5D25.png)


###Créer une nouvelle boîte aux lettres

Devinez ce que vous venez de terminer, maintenant c'est la partie cool !

Allez maintenant à "Gestion E-mail -> Comptes E-mail".

![Cree e-mail](https://i.imgur.com/Zb3Dlqd.png)

Cliquez sur Créer un compte.

![Cree e-mail 2](https://i.imgur.com/HP1ulaX.png)

Remplissez toutes les données dont vous avez besoin, limitez l'espace disque ou non. Ajoutez une limite d'envoi ou non.

Et enfin appuyez sur **Créer un compte**.

![Cree](https://i.imgur.com/ibKu9wl.png)

Vous venez de créer votre premier compte.
Ne tenez pas compte du serveur POP/IMAP/SMTP.

###Connectez-vous à votre boîte aux lettres et envoyez du courrier

Vous pouvez maintenant vous connecter sur votre boîte aux lettres.
Vous pouvez soit utiliser un client tel que outlook.
Ou vous pouvez utiliser notre super client web !

Pour vous connecter, vous pouvez cliquer sur "Webmail" dans la barre de droite ou demander à vos utilisateurs d'aller sur [mail.polisystems.ch](https://mail.polisystems.ch/).
Cela peut prendre jusqu'à 5 minutes pour que votre adresse e-mail soit utilisable.

###Fin

Vous avez terminé !

Vous pouvez maintenant envoyer/recevoir des mails librement.
Essayez de vous amuser avec notre Webmail, et principalement avec le panneau de gestion.
Vous trouverez des choses intéressantes, comme dans la section "Configuration de Spamassassin" où vous pouvez activer librement notre protection anti-spam pour vos mails !

Nous espérons que vous vous amuserez avec vos nouveaux mails.

