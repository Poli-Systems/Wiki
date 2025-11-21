# Comment configurer le NTP

## Qu'est-ce que le NTP ?

Le Network Time Protocol (NTP) synchronise votre appareil avec plusieurs serveurs de temps à travers le monde. Vous pouvez les définir manuellement ou automatiquement. Une heure précise est essentielle pour les journaux, les certificats et de nombreux services qui s'appuient sur des horodatages cohérents.

## Sur Windows

1. Ouvrez le **Panneau de configuration**.

![](https://i.imgur.com/pFiEIrD.png)

2. Allez dans la section **Horloge et Région**.

![](https://i.imgur.com/X2cR64S.png)

3. Cliquez sur **Date et heure**.

![](https://i.imgur.com/lc5aA5V.png)

4. Sélectionnez l'onglet **Heure Internet**.

![](https://i.imgur.com/xHQokH4.png)

5. Cliquez sur **Modifier les paramètres...**

![](https://i.imgur.com/y3dDaRy.png)

6. Remplacez le **Serveur** par :

![](https://i.imgur.com/0gvdBtR.png)
   - `ntp1.polisystems.ch` (Allemagne)
   - `ntp2.polisystems.ch` (Suisse)

Toutes nos machines sont synchronisées avec différentes horloges atomiques en Suisse et en Allemagne. Vous pouvez donc utiliser indifféremment l'un ou l'autre serveur.

7. Cliquez sur **Mettre à jour maintenant**, puis sur **OK**.

![](https://i.imgur.com/J5DwOeV.png)

Votre machine Windows est maintenant configurée avec une heure fiable.

## Sur Linux

Sous Linux, la configuration en ligne de commande est très simple.

1. Installez le paquet NTP si nécessaire :

   ```bash
   apt install ntp -y
   # ou
   yum install ntp -y
   ```

2. Éditez `/etc/ntp.conf` :

   ```bash
   nano /etc/ntp.conf
   ```

3. Remplacez les lignes `server` :

   ```bash
   server ntp1.polisystems.ch
   server ntp2.polisystems.ch
   ```

4. Redémarrez le service :

   ```bash
   service ntp restart
   ```

Vous pouvez aussi exécuter `ntpdate -u ntp1.polisystems.ch` pour réaliser une synchronisation ponctuelle si vous avez besoin d'une correction immédiate.

## Sur macOS

1. Ouvrez **Préférences Système > Date et heure** (ou **Réglages Système** sur les versions récentes).
2. Cliquez sur le cadenas pour déverrouiller le panneau si nécessaire.
3. Activez **Régler la date et l'heure automatiquement**.
4. Entrez les adresses IP ou DNS de vos serveurs de temps préférés, séparées par des virgules, par exemple : `ntp1.polisystems.ch., ntp2.polisystems.ch.`

# Notes finales

Votre machine reste maintenant synchronisée avec une heure fiable.

Ressources pour macOS : [https://www.ctrl.blog/entry/tutorial-macos-ntp-config.html](https://www.ctrl.blog/entry/tutorial-macos-ntp-config.html)
