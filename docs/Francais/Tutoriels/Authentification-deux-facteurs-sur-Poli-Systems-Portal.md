# Authentification à deux facteurs sur le Manager

## Qu'est-ce que l'A2F ?

L'**authentification à deux facteurs** (**A2F**), **authentification à double facteur** ou **vérification en deux étapes** (_two-factor authentication_ en anglais, ou _2FA_) est une méthode d'[authentification forte](https://fr.wikipedia.org/wiki/Authentification_forte "Authentification forte") par laquelle un utilisateur peut accéder à une ressource informatique (un [ordinateur](https://fr.wikipedia.org/wiki/Ordinateur "Ordinateur"), un [téléphone intelligent](https://fr.wikipedia.org/wiki/T%C3%A9l%C3%A9phone_intelligent "Téléphone intelligent") ou encore un [site web](https://fr.wikipedia.org/wiki/Site_web "Site web")) après avoir présenté deux preuves d'identité distinctes à un mécanisme d'[authentification](https://fr.wikipedia.org/wiki/Authentification "Authentification"). Un exemple de ce processus est l'accès à un compte bancaire grâce à un [guichet automatique bancaire](https://fr.wikipedia.org/wiki/Guichet_automatique_bancaire "Guichet automatique bancaire") : seule la combinaison de la carte bancaire (que l'usager détient) et du [numéro d'identification personnel](https://fr.wikipedia.org/wiki/Num%C3%A9ro_d%27identification_personnel "Numéro d'identification personnel") (que l'usager connaît) permet de consulter le solde du compte et de retirer de l'argent.

**Source Wikipedia.
## Applications pour configurer l'A2F

Il existe de nombreuses applications capables de fournir des codes à usage unique pour A2F.
Vous pouvez utiliser n'importe quel client A2F compatible, mais voici quelques recommandations : 

**PC**

-   [Authy](https://www.authy.com/)
-   [Bitwarden](https://bitwarden.com/)

**Android**

-   [Google Authenticator](https://play.google.com/store/apps/details?id=com.google.android.apps.authenticator2&hl=en)
-   [Authy](https://play.google.com/store/apps/details?id=com.authy.authy&hl=fr_CH&gl=US)
-   [Duo](https://play.google.com/store/apps/details?id=com.duosecurity.duomobile)
-   [Bitwarden](https://play.google.com/store/apps/details?id=com.x8bit.bitwarden&hl=fr_CH&gl=US)

**iOS**

-   [Google Authenticator](https://itunes.apple.com/us/app/google-authenticator/id388497605?mt=8)
-   [Authy](https://apps.apple.com/us/app/twilio-authy/id494168017)
-   [Duo](https://apps.apple.com/us/app/duo-mobile/id422663827)
-   [Bitwarden](https://apps.apple.com/us/app/bitwarden-password-manager/id1137397744)

## Activer l'A2F sur le Manager

1. [Connectez-vous à votre compte Poli Systems Manager](https://polisystems.ch/manager/index.php?rp=/login)

2. Une fois connecté selectionner **Sécurité du compte / Votre profil**

 ![Paramètres de sécurité](https://i.imgur.com/bcG5Jcm.png)   
3. Cliquer sur **Paramètres de sécurité** dans les buttons de droite, et cliquez sur **Cliquez ici pour activer**.

 ![Activer A2F](https://i.imgur.com/HCc8OUn.png)   
4. Dans la section "Jetons temporels", cliquez sur **Commencer >>**. 

 ![Jetons temporels](https://i.imgur.com/qDCs5nu.png)  
5. Une fois que vous êtes ici, scannez simplement le code QR dans votre application préférée ou entrez le code manuellement.  Une fois que vous l'avez fait, entrez le code d'identification temporaire que vous avez obtenu dans l'application dans le champ "Entrer le code d'authentification" dans la zone de texte ci-dessous.  Appuyez simplement sur **Envoyer** une fois que c'est fait. 
*Note : Si vous voulez vous authentifier à partir de plusieurs appareils, vous devez scanner le code QR avec chaque appareil que vous voulez utiliserez.*

 ![QR Code pour Authy, Google Authentifcator, et applications 2AF](https://i.imgur.com/ppuWN50.png)   
6. Votre connexion A2F devrait maintenant être prête ! N'oubliez pas de conserver votre code de sauvegarde au cas où vous perdriez l'accès à votre téléphone portable. Il est préférable de le mettre sur papier pour une sécurité maximale. 

 ![A2F authentification activée codes de backups](https://i.imgur.com/ytu4yAQ.png)  
7. Pour vous connecter à l'aide de l'authentification à deux facteurs, il vous suffit de vous rendre sur la page de connexion, de saisir vos informations d'identification et d'appuyer sur la touche de connexion. Et lorsque vous obtenez une page d'authentification à deux facteurs, entrez le code d'authentification de votre application.

 ![Page de connexion](https://i.imgur.com/AoTrNr0.png)  
 ![A2F login](https://i.imgur.com/Zr7G9Dx.png)  

## Désactiver A2F sur le Manager

1. Retournez à la page "Paramètres de sécurité" comme mentionné dans les étapes 1 et 2 de "Activer le A2F sur votre compte du portail Poli Systems".

2. Appuyez sur le gros bouton rouge **Cliquez ici pour désactiver**.

 ![Button de désactivation de A2F](https://i.imgur.com/QE31oBK.png)  
3. Entrez votre mot de passe pour désactiver 2FA et appuyez sur **Disable Two-Factor Authentification**.

 ![Désactiver l'authentification à deux facteurs](https://i.imgur.com/lo1qjcy.png)  
4. Une fois que vous avez désactivé l'authentification à deux facteurs, vous devriez avoir le message suivant.

 ![Authentification à deux facteurs désactivée](https://i.imgur.com/OudypOW.png)

## Conclusions

Le système d'authentification à deux facteurs est important. Nous vous recommandons vivement de l'activer pour votre compte. 
Il ajoute des couches de sécurité supplémentaires pour votre compte et offre une meilleure sécurité.
N'oubliez pas d'utiliser un mot de passe fort avec l'authentification à deux facteurs.

Nous nous assurons que nos systèmes sont toujours sûrs en utilisant différents formulaires captcha sur notre site Web, mais il est vraiment important de suivre les meilleures pratiques pour votre compte. La sécurité nous tient à cœur. Si vous rencontrez des problèmes lors de l'activation de ce service, n'hésitez pas à nous contacter.
