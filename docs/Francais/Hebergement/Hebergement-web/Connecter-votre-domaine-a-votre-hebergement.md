# Connectez votre domaine à votre hébergement

Lorsque vous commandez un nouvel hébergement web, votre domaine n'est souvent pas encore relié. Voici les méthodes les plus simples pour pointer votre domaine vers votre hébergement. En cas de besoin, contactez notre support : nous serons heureux de vous aider.

Nos serveurs DNS pour l'hébergement web sont les suivants :

- **ns1.polisystems.ch**
- **ns2.polisystems.ch**
- **ns3.polisystems.ch**

## Changer vos enregistrements NS

Changer vos enregistrements NS est simple. Dans ce guide, nous montrons un domaine hébergé chez nous, mais la procédure est généralement similaire chez les autres registraires.

1. Dans votre interface client Poli Systems (https://polisystems.ch/manager/clientarea), cliquez sur **Mes Domaines**.

   ![Mes Domaines](https://i.imgur.com/v2hOIeC.png)

2. Cliquez sur le domaine que vous souhaitez pointer vers notre hébergement.

   ![Sélection du Domaine](https://i.imgur.com/mWPBtpi.png)

3. Dans le menu à droite, choisissez **Serveurs de noms**.

   ![Menu des Serveurs de Noms](https://i.imgur.com/vEbIrn3.png)

4. Sélectionnez **Utiliser des serveurs de noms personnalisés** et saisissez :

   - `ns1.polisystems.ch`
   - `ns2.polisystems.ch`
   - `ns3.polisystems.ch`

5. Cliquez sur **Changer les serveurs de noms**.

   ![Changer les Serveurs de Noms](https://i.imgur.com/BhlmnPh.png)

## Changer vos enregistrements manuellement

Si vous préférez changer vos enregistrements manuellement, suivez ces étapes :

1. Sur votre serveur web (accessible depuis l'interface client), cliquez sur **Gestion DNS**.

   ![Bouton de Gestion DNS](https://i.imgur.com/KoQqIfl.png)

2. Choisissez le domaine que vous souhaitez gérer et cliquez sur **Enregistrements DNS** en haut.

   ![Enregistrements DNS](https://i.imgur.com/REKA1oG.png)

3. Copiez ici les enregistrements nécessaires dans vos paramètres DNS (qu'ils soient gérés par nous ou par un autre fournisseur).

   ![Liste des Enregistrements DNS](https://i.imgur.com/1p8NE79.png)

## Propagation

Les enregistrements DNS peuvent prendre jusqu'à 48 heures pour se propager. Le plus souvent c'est plus rapide, mais la patience peut être nécessaire. Le TTL (Time to Live) influence également la propagation : plus il est bas, plus les serveurs DNS rafraîchissent rapidement les enregistrements.
