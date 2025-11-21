# Connectez votre domaine à votre hébergement

Lorsque vous commandez un nouvel hébergement web, il est probable que votre domaine ne soit pas encore connecté à votre hébergement. Il existe plusieurs façons de le faire, et nous vous présenterons les méthodes les plus simples ici. Si vous avez besoin d'aide, n'hésitez pas à contacter notre support, nous serons heureux de vous assister.

Nos serveurs DNS pour l'hébergement web sont les suivants :

**ns1.polisystems.ch**  
**ns2.polisystems.ch**  
**ns3.polisystems.ch**  

## Changer vos enregistrements NS

Changer vos enregistrements NS est simple ! Suivez ces étapes pour gérer votre domaine. Dans ce guide, nous montrerons comment faire avec un domaine hébergé chez nous, mais la procédure est souvent similaire avec d'autres fournisseurs de domaine.

1. Dans votre interface client Poli Systems (https://polisystems.ch/manager/clientarea), cliquez sur "Mes Domaines".

   ![Mes Domaines](https://i.imgur.com/v2hOIeC.png)

2. Cliquez sur le domaine qui devrait être hébergé chez nous.

   ![Sélection du Domaine](https://i.imgur.com/mWPBtpi.png)

3. Dans le menu à droite, choisissez "Serveurs de noms".

   ![Menu des Serveurs de Noms](https://i.imgur.com/vEbIrn3.png)

4. Sélectionnez "Utiliser des serveurs de noms personnalisés" et entrez les noms suivants :

   **ns1.polisystems.ch**  
   **ns2.polisystems.ch**  
   **ns3.polisystems.ch**  

5. Appuyez sur "Changer les serveurs de noms".

   ![Changer les Serveurs de Noms](https://i.imgur.com/BhlmnPh.png)

## Changer vos enregistrements manuellement

Si vous préférez changer vos enregistrements manuellement, suivez ces étapes :

1. Sur votre serveur web (accessible depuis l'interface client), cliquez sur le bouton "Gestion DNS".

   ![Bouton de Gestion DNS](https://i.imgur.com/KoQqIfl.png)

2. Choisissez le domaine que vous souhaitez gérer et cliquez sur "Enregistrements DNS" en haut.

   ![Enregistrements DNS](https://i.imgur.com/REKA1oG.png)

3. Vous trouverez ici tous les enregistrements nécessaires à entrer dans vos paramètres DNS (qu'ils soient gérés par nous ou par un autre fournisseur).

   ![Liste des Enregistrements DNS](https://i.imgur.com/1p8NE79.png)

## Propagation

Les enregistrements DNS peuvent prendre jusqu'à 48 heures pour se propager, alors soyez patient ! Normalement, cela est plus rapide, mais si ce n'est pas le cas, attendez simplement un peu plus longtemps et les modifications prendront effet. Le TTL (Time to Live) peut également affecter la vitesse de propagation. Le TTL agit comme un "temps de cache" ; plus il est bas, plus tous les serveurs DNS demanderont une nouvelle réponse rapidement.
