# Authentification à deux facteurs sur le Manager

## Qu'est-ce que l'A2F ?

L'**authentification à deux facteurs** (**A2F**), **authentification à double facteur** ou **vérification en deux étapes** (_two-factor authentication_ en anglais, ou _2FA_) est une méthode d'[authentification forte](https://fr.wikipedia.org/wiki/Authentification_forte "Authentification forte") où l'utilisateur fournit deux preuves d'identité distinctes pour accéder à une ressource informatique (ordinateur, téléphone intelligent ou [site web](https://fr.wikipedia.org/wiki/Site_web "Site web")). Par exemple, pour consulter un compte bancaire à un [guichet automatique bancaire](https://fr.wikipedia.org/wiki/Guichet_automatique_bancaire "Guichet automatique bancaire"), il faut la carte (possession) et le [numéro d'identification personnel](https://fr.wikipedia.org/wiki/Num%C3%A9ro_d%27identification_personnel "Numéro d'identification personnel") (connaissance).

**Source : Wikipedia.**
## Applications pour configurer l'A2F

De nombreuses applications peuvent générer des codes à usage unique pour l'A2F. Vous pouvez utiliser n'importe quel client compatible ; voici quelques recommandations :

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

1. [Connectez-vous à votre compte Poli Systems Manager](https://polisystems.ch/manager/index.php?rp=/login).

2. Une fois connecté, sélectionnez **Sécurité du compte / Votre profil**.

   ![Paramètres de sécurité](https://i.imgur.com/bcG5Jcm.png)

3. Cliquez sur **Paramètres de sécurité** dans la section de droite, puis sur **Cliquez ici pour activer**.

   ![Activer A2F](https://i.imgur.com/HCc8OUn.png)

4. Dans la section **Jetons temporels**, cliquez sur **Commencer >>**.

   ![Jetons temporels](https://i.imgur.com/qDCs5nu.png)

5. Scannez le code QR avec votre application préférée ou saisissez le code manuellement. Ensuite, entrez le code d'identification temporaire dans le champ **Entrer le code d'authentification**, puis appuyez sur **Envoyer**.

   *Note : pour vous authentifier depuis plusieurs appareils, scannez le code QR avec chacun d'eux.*

   ![QR Code pour Authy, Google Authentifcator, et applications 2AF](https://i.imgur.com/ppuWN50.png)

6. Votre connexion A2F devrait maintenant être prête. Conservez votre code de sauvegarde au cas où vous perdriez l'accès à votre téléphone. Pour plus de sécurité, enregistrez-le sur papier dans un endroit sûr.

   ![A2F authentification activée codes de backups](https://i.imgur.com/ytu4yAQ.png)

7. Pour vous connecter avec l'A2F, rendez-vous sur la page de connexion, saisissez vos identifiants puis validez. Quand l'authentification à deux facteurs s'affiche, entrez le code depuis votre application.

   ![Page de connexion](https://i.imgur.com/AoTrNr0.png)
   ![A2F login](https://i.imgur.com/Zr7G9Dx.png)

## Désactiver l'A2F sur le Manager

1. Retournez à la page **Paramètres de sécurité** comme indiqué aux étapes 1 et 2 de « Activer l'A2F sur le Manager ».
2. Appuyez sur le gros bouton rouge **Cliquez ici pour désactiver**.

   ![Button de désactivation de A2F](https://i.imgur.com/q8rbHm3.png)
3. Entrez votre mot de passe pour désactiver l'A2F et appuyez sur **Désactiver l'authentification à deux facteurs**.

   ![Désactiver l'authentification à deux facteurs](https://i.imgur.com/lo1qjcy.png)
4. Une fois l'authentification à deux facteurs désactivée, vous devriez voir le message suivant.

   ![Authentification à deux facteurs désactivée](https://i.imgur.com/OudypOW.png)

## Conclusions

Le système d'authentification à deux facteurs est essentiel et nous vous recommandons fortement de l'activer. Il ajoute une couche supplémentaire de protection, surtout lorsqu'il est combiné avec un mot de passe robuste.

Nous assurons la sécurité de nos systèmes grâce à diverses mesures (captcha, etc.), mais appliquer les bonnes pratiques pour votre compte reste primordial. Si vous rencontrez des difficultés pour activer ce service, n'hésitez pas à nous contacter.
