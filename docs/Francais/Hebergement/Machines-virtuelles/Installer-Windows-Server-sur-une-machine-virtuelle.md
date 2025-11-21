# Installer Windows Server sur une machine virtuelle

Lorsque vous commandez une nouvelle machine virtuelle, vous ne verrez aucune option pour choisir Windows comme système d'exploitation.

Ce guide semble long, mais il est très détaillé pour convenir même aux nouveaux utilisateurs. Les utilisateurs avancés peuvent se référer principalement aux images.

NOTE : Nous ne proposons pas de licences Windows, elles sont à votre charge, et nous n'acceptons que des licences légales. En cas d'abus des conditions de licence de Microsoft, votre serveur pourrait être directement résilié sans préavis.

![](https://i.imgur.com/EK5c8sR.png)

Cependant, il est tout à fait possible d'utiliser nos machines virtuelles avec Windows Server, notez que cela peut être lent sur des machines petites.

Nous ne le fournissons pas directement lors de la commande car l'installation doit être effectuée manuellement.

Dans ce guide, nous utiliserons une VM EPYC - M (4vCPU - 8GB RAM) et nous installerons Windows Server 2022. Vous pouvez installer Windows Server 2022 Standard ou Datacenter, avec ou sans interface graphique.

Windows Server est uniquement disponible en anglais, allemand et russe en tant qu'ISO. Vous pouvez installer une autre langue directement dans Windows une fois installé si nécessaire.

## Commander votre machine

Choisissez votre machine directement sur notre site web, cela peut être n'importe quelle machine, mais rappelez-vous que les machines plus petites peuvent être plus lentes.

Lors de la commande, vous êtes libre de choisir n'importe quelles options, concernant le système d'exploitation cela n'a pas d'importance, mettez ce que vous voulez, il ne sera pas utilisé.

## Gérer votre machine virtuelle

Si vous n'êtes pas familier avec notre panneau de gestion, une fois que vous avez commandé, vous pouvez simplement accéder à votre service (la machine virtuelle concernée) et il ouvrira un tableau de bord pour la gérer.

Par exemple, je vais cliquer sur la machine que je viens de commander pour ce guide.
![](https://i.imgur.com/oUqIo4t.png)

Dans ce tableau de bord, vous pouvez ouvrir des menus ci-dessous pour gérer votre nouvelle machine virtuelle.
![](https://i.imgur.com/Eg75nkQ.png)

Pendant ce guide, nous nous intéresserons à la section "Server Quick Actions", ouvrez-la (pour ce faire, cliquez sur le petit signe -).

## Installer Windows Server

Pour installer Windows sur votre machine virtuelle, vous devez suivre ces étapes, faites attention principalement pour les pilotes.

### Monter l'ISO et démarrer

Tout d'abord, vous devez aller dans la zone "Server Quick Actions" et appuyer sur le bouton "ISO Images".
![](https://i.imgur.com/PudmaT8.png)

Appuyez sur "confirmer" pour ouvrir la gestion des ISO.

![](https://i.imgur.com/UgmFKGR.png)

Ici, vous voyez plusieurs ISO et vous voyez qu'il y a plusieurs pages.
Vous pouvez installer Windows Server ainsi que Proxmox Mail Gateway ou d'autres images intéressantes.
Pour l'instant, nous voulons installer Windows Server 2022 (il inclut Datacenter et Standard dans le même ISO).
Comme vous pouvez le voir, il n'y a pas l'édition 2022 sur mon écran, vous pouvez la chercher dans la barre de recherche en haut à gauche ou simplement la chercher parmi les différentes pages.

Une fois que vous avez l'image que vous souhaitez, appuyez sur "Mount" et confirmez.
![](https://i.imgur.com/REuAgIO.png)

**Note : il ne peut y avoir qu'UNE SEULE image montée à la fois.**

Maintenant que l'image est montée, vous pouvez revenir à la gestion de votre machine virtuelle.
![](https://i.imgur.com/QsTiKDD.png)

Maintenant que vous êtes de retour dans la zone de gestion, dans la section "Server Quick Actions", vous pouvez appuyer sur redémarrer et confirmer.
![](https://i.imgur.com/0C0BaJ3.png)

![](https://i.imgur.com/X0g3t3o.png)

Votre serveur sera redémarré et il démarrera directement sur votre ISO sélectionné.
Vous pouvez maintenant ouvrir la "Console" dans la section "Server Quick Actions" et confirmer comme toujours.

Cela ouvrira la console dans une nouvelle fenêtre (vous devrez peut-être l'accepter).
![](https://i.imgur.com/bmMfPme.png)

### Installation de Windows

Maintenant que vous avez accès à la console virtuelle, vous pouvez voir que vous êtes directement sur une fenêtre classique d'installation de Windows.
Procédez comme vous le feriez normalement.
Par exemple, nous utiliserons la version anglaise de notre ISO et changerons simplement le "Time and format" en français (Suisse). Et appuyez sur "Next".

Dans la fenêtre suivante, appuyez simplement sur "Install now" et attendez quelques secondes.

![](https://i.imgur.com/gDykcYa.png)

Dans mon cas, je veux que ce soit aussi simple que possible, donc je choisirai Windows Server 2022 Standard (Desktop Experience).
Appuyez de nouveau sur suivant.

Vous devrez accepter les termes de la licence, acceptez-les et appuyez sur suivant.

### Charger les pilotes nécessaires
**Cette partie est importante.**

Sélectionnez l'installation personnalisée.
![](https://i.imgur.com/DmQOYEe.png)

Ici, vous verrez que vous ne voyez aucun disque.

Vous devrez retourner dans la zone ISO (si vous ne vous souvenez pas comment y aller, veuillez faire défiler ce document).

Dans la zone de gestion des ISO, démontez votre ISO actuel en appuyant sur le bouton "Unmount" en vert et confirmez.
![](https://i.imgur.com/QlPo9Sh.png)

Recherchez maintenant "virtio".
Et montez l'image concernée, et confirmez.
![](https://i.imgur.com/NpXhCjR.png)

Une fois monté, retournez dans votre console virtuelle.
Appuyez sur "Load driver".

![](https://i.imgur.com/T0BNGXw.png)

Appuyez sur "Browse".

![](https://i.imgur.com/gX5RtIG.png)

Ouvrez maintenant le "CD Driver (D:)"

![](https://i.imgur.com/eEVfscT.png)

Vous devrez installer plusieurs pilotes.
Il y aura trois pilotes :
 - Balloon
 - NetKVM
 - VioSCSI

Pour ce faire, ouvrez le dossier concerné (je le ferai avec NetKVM par exemple).
Et allez avec la version de serveur concernée. Comme vous pouvez le voir dans mon cas spécifique, il n'y a pas de dossiers 2k22, dans ce cas, prenez simplement le plus récent, donc j'irai dans le dossier 2k19.

Appuyez sur le dossier amd64 et appuyez sur "OK".

![](https://i.imgur.com/WAL5mX4.png)

Il peut y avoir un avertissement indiquant que les pilotes ne sont pas signés, passez outre en appuyant sur ok.

Appuyez sur suivant une fois le premier pilote chargé :
![](https://i.imgur.com/IvyjEdK.png)

Et répétez ce que nous venons de faire pour les 2 autres pilotes.
Dans mon cas, je le ferai avec Balloon et VioSCSI.

Une fois que chaque pilote est installé, vous devriez voir magiquement les disques !

![](https://i.imgur.com/eqsnrab.png)

Nous devons maintenant remonter l'ISO Windows Server, car actuellement c'est l'ISO Virtio qui est monté.
Comme la dernière fois, démontez l'ISO actuel et remontez l'ISO Windows Server que vous avez pris.
![](https://i.imgur.com/DkeOsoh.png)

Vous pouvez alors supprimer toutes les partitions.
![](https://i.imgur.com/TytHnUh.png)

Et appuyez simplement sur "Next" avec le disque d'installation sélectionné.

![](https://i.imgur.com/KxHjANT.png)

L'installation de Windows se déroulera pendant quelques minutes.
Prenez une pause et revenez une fois que c'est prêt.

## Installer les pilotes sur Windows

Une fois que votre machine virtuelle a terminé l'installation et redémarré, vous aurez les questions classiques de configuration des identifiants.
Nous n'écrirons pas de guide pour cela car il est assez courant de le faire sur les machines Windows, si vous êtes perdu, regardez simplement quelques vidéos YouTube pour cela.

Pour vous connecter, vous pouvez simplement appuyer sur "Send Ctrl+Alt+Del" et vous pouvez taper votre mot de passe pour vous connecter.

![](https://i.imgur.com/V7nb60x.png)

Remontez l'ISO virtio.
![](https://i.imgur.com/JpHkdIS.png)

Dans le CD Virtio, installez les "virtio-win-guest-tools".

![](https://i.imgur.com/uIlWxfH.png)

Suivez simplement les étapes pour l'installer.

Parfait, votre nouvelle machine virtuelle Windows est maintenant prête et fonctionne, avec tous les pilotes nécessaires.
Si vous le souhaitez, vous pouvez démonter l'ISO virtuel.
