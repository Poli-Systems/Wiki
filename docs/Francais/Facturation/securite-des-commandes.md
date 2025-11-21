# Sécurité des commandes

Si vous avez un doute concernant votre commande, vous pouvez nous contacter à tout moment.

Internet comporte des risques et les escroqueries sont fréquentes. Nous appliquons donc les protections suivantes sur notre site :

- Notre site est sécurisé partout avec un chiffrement de bout en bout. Nous utilisons TLS 1.2 ou 1.3 ; les versions inférieures sont bloquées pour éviter toute vulnérabilité.
- Vous traversez deux points de sécurité majeurs. Tout d'abord, Cloudflare filtre le trafic pour bloquer les attaques DDoS et autres menaces.

![Protection Cloudflare](https://i.imgur.com/LOpoFX1.png)

- Via Cloudflare, vous atteignez leurs serveurs puis vous vous connectez aux nôtres avec des certificats SSL/TLS.
- Tous nos serveurs disposent d'une protection DDoS avancée ; vos commandes ne sont donc pas perturbées par des tentatives d'attaque. Pour les attaques de niveau 7, nous recommandons de connecter votre site à [Cloudflare](https://cloudflare.com).
- Les paiements sont réalisés sur les pages officielles de chaque prestataire. Par exemple, PayPal est traité sur paypal.com et Wallee ouvre une fenêtre depuis son propre site. Nous ne manipulons jamais directement vos données de paiement.
- Les mots de passe administratifs pour la messagerie et les interfaces de gestion comportent au moins 24 caractères et sont uniques, ce qui les rend difficiles à compromettre.
- Nous utilisons reCAPTCHA (la petite roue en bas à droite) pour détecter l'activité suspecte et bloquer les robots.
- Si vous utilisez un bloqueur de publicité, vous verrez peut-être des avis concernant Google Analytics. Nous l'utilisons pour comprendre la navigation des utilisateurs et repérer tout comportement inhabituel ou malveillant.
- L'IP du serveur principal n'est jamais exposée : tout le trafic passe par Cloudflare, ce qui empêche les attaques par force brute SSH ou similaires.
- Nous testons régulièrement notre site avec des outils tels que SSL Labs, Mail-Tester et Sucuri afin de vérifier sa conformité et sa robustesse.
- Des en-têtes de sécurité comme `X-Content-Type-Options: nosniff` et `X-Frame-Options: SAMEORIGIN` sont configurés dans notre fichier `.htaccess` pour éviter le clickjacking et les téléchargements malveillants.
- L'accès aux serveurs se fait uniquement via des clés SSH (RSA4096 ou ED25519) avec authentification multifacteur.
- Des listes de blocage FireHol personnalisées et des pare-feux adaptés limitent encore davantage les risques de DDoS.
- Nous activons l'outil de détection CSAM de Cloudflare sur les tickets afin de prévenir la présence de contenu pédopornographique. Pour en savoir plus : [https://blog.cloudflare.com/the-csam-scanning-tool/](https://blog.cloudflare.com/the-csam-scanning-tool/).

### Pourquoi nous faire confiance ?

Nous offrons un support réactif, une réputation solide et travaillons déjà avec de nombreuses entreprises. Si vous avez besoin d'aide, il suffit de nous demander.

Rejoignez notre [Discord](https://discord.gg/Hyh5ekP) pour obtenir de l'aide plus rapidement, ou [ouvrez un ticket](https://polisystems.ch/manager/submitticket.php?step=2&deptid=2&language=french).
