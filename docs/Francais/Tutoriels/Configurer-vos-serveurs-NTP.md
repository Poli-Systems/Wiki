# Comment configurer le NTP

## Qu'est-ce que le NTP ?

En bref, le Network Time Protocol synchronise votre ordinateur avec plusieurs "serveurs de temps" dans le monde. Vous pouvez les définir manuellement ou automatiquement. Il permet à votre ordinateur, à votre téléphone et à tout autre appareil prenant en charge le protocole NTP d'avoir une heure vraiment précise, ce qui est nécessaire pour certains programmes ou applications.

## Sur Windows

Tout d'abord, ouvrez votre panneau de configuration.

![](https://i.imgur.com/pFiEIrD.png)

Ensuite, allez dans la section Horloge et Région.

![](https://i.imgur.com/X2cR64S.png)

Une fois que vous y êtes, cliquez sur "Date et heure".

![](https://i.imgur.com/lc5aA5V.png)

Cliquez sur l'heure internet

![](https://i.imgur.com/xHQokH4.png)

Une fois là, cliquez sur "Modifier les paramètres...".

![](https://i.imgur.com/y3dDaRy.png)

Ensuite, changez le "Serveur"

![](https://i.imgur.com/0gvdBtR.png)

Vous pouvez modifier cette valeur comme bon vous semble ou utiliser les serveurs NTP publics de Poli Systems :
ntp1.polisystems.ch pour des serveurs en Allemagne

ntp2.polisystesms.ch pour des serveurs en Suisse

Toutes nos machines sont synchronisées avec différentes horloges atomiques en Suisse et en Allemagne.
Enfin, cliquez sur "Mettre à jour maintenant" et OK.

![](https://i.imgur.com/J5DwOeV.png)

Vous avez terminé pour votre machine Windows !

## Sur Linux

Sous Linux, dans le CLI, c'est vraiment très facile à faire.

Installez le paquet NTP si nécessaire.

> apt install ntp -y
> 
> yum install ntp -y

Ensuite aller dans  `/etc/ntp.conf` 

> nano /etc/ntp.conf

Remplacez les lignes "server" par

> server ntp1.polisystems.ch
> 
> server ntp2.polisystems.ch

Et enfin faites...

> service ntp restart

Vous pouvez également exécuter `ntpdate -u ntp1.polisystems.ch` pour mettre à jour l'heure sur votre machine une fois.

## Sur MacOS

Malheureusement pour celui-ci, nous n'avons pas de captures d'écran mais voici comment faire !

macOS, ouvrez l'application Préférences Système : Date et heure

1.  Cliquez sur le verrou pour déverrouiller le volet des préférences, si nécessaire. 
2.  Activez l'option "Régler la date et l'heure automatiquement". 
3.  Entrez les adresses IP ou DNS de vos serveurs de temps préférés, suivies d'un point, et séparez les entrées multiples par des virgules. Par exemple, "ntp1.polisystems.ch., ntp2.polisystems.ch.".

# Notes finales

Voilà, vous serez toujours à l'heure, et votre ordinateur aussi !

ressources pour macOS : [https://www.ctrl.blog/entry/tutorial-macos-ntp-config.html](https://www.ctrl.blog/entry/tutorial-macos-ntp-config.html)
