# Sécurité des commandes

Si vous n'êtes pas sûr de votre commande, vous pouvez tout d'abord nous contacter à tout moment !

Internet est un lieu de tous les dangers, et les escroqueries sont assez courantes. Nous utilisons les sécurités suivantes sur notre site web.

-   Notre site web est sécurisé partout avec un cryptage de bout en bout. Nous utilisons TLS 1.2 ou 1.3. Les versions en dessous ne sont pas acceptées pour éviter les problèmes de sécurité.
-   Vous passez par deux grands points de sécurité. Tout d'abord, vous passez par Cloudflare pour accéder à notre site web, ce qui empêche les attaques DDOS ou toute autre attaque en général.

![](https://i.imgur.com/LOpoFX1.png)

-   Par le biais de Cloudflare, vous allez sur leur serveur, puis dans un deuxième temps, vous passez de notre côté et arrivez chez nous avec un certificat SSL/TLS.
-   Tous nos serveurs sont protégés par une protection DDOS ultra-haute gamme, de sorte que votre commande ne sera pas arrêtée parce qu'un attaquant tente de mettre nos services hors service. Pour les attaques de niveau 7, nous vous recommandons de connecter votre site web à [Cloudflare](https://cloudflare.com).
-   Pour les paiements, nous utilisons les sites officiels des services de paiement pour nous assurer que vous êtes en sécurité. Par exemple, vous allez sur paypal.com lorsque vous payez avec PayPal. Pour Wallee, vous obtenez une lightbox de leur site web. Nous ne procédons donc pas au paiement. Ils le font pour nous.
-   Tous nos mots de passe administratifs de l'interface de messagerie et de gestion comportent au moins 24 caractères. Ils sont tous différents, il sera donc difficile de pirater nos utilisateurs administratifs quoi qu'il arrive.
-   Si vous utilisez un bloqueur de publicité, vous verrez sûrement un avis concernant Google Analytics. Nous utilisons Google Analytics pour voir où vont nos utilisateurs et aussi pour voir s'il y a des robots ou des personnes malveillantes autour.
-   Nous ne montrons jamais l'IP du serveur principal. Tout le trafic passe par Cloudflare, et il n'est pas possible de trouver l'IP de notre serveur principal, ce qui empêche les attaques par force brutale SSH ou les attaques de ce genre.
-   Nous avons essayé de tester notre site web avec des systèmes tels que SSLlab, Mail-tester, securi.
-   De nombreuses règles, telles que nosniff et same-origin, sont définies dans notre fichier .htaccess afin d'empêcher le détournement de clics et les téléchargements dérobée.
-   Nos machines utilisent des listes de bannissement FireHol personnalisées. Nous avons des pare-feu personnalisés pour empêcher les attaques DDoS.
-   Nous avons activé l'outil de balayage CSAM pour analyser nos billets afin de prévenir la présence de matériel pédopornographique (CSAM) dans ceux-ci. Si vous souhaitez l'activer sur votre site web, consultez cet article de blog [https://blog.cloudflare.com/the-csam-scanning-tool/](https://blog.cloudflare.com/the-csam-scanning-tool/)

Et pourquoi devriez-vous nous faire confiance pour acheter quelque chose ?

Eh bien, naturellement, nous avons un excellent support, nous avons des réponses rapides, et nous n'avons pas de mauvaise réputation. Vous pouvez toujours nous demander de l'aide si vous en avez besoin.

De nombreuses entreprises nous font déjà confiance, pourquoi pas vous ?

Nous vous recommandons également de rejoindre notre [discord](https://discord.gg/Hyh5ekP) pour obtenir plus d'aide. Vous pouvez également [ouvrir un ticket](https://polisystems.ch/manager/submitticket.php?step=2&deptid=2&language=french).
