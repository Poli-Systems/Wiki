# Utiliser le sous-domaine intégré pour votre machine virtuelle

Depuis le 30.04.2020, chaque machine virtuelle est livrée avec un sous-domaine gratuit qui pointe directement vers votre adresse IPv4. Vous pouvez l'utiliser immédiatement pour atteindre votre serveur et activer le HTTPS dès que vous ajoutez un certificat.

**Exemple :** `192.168.1.1.polisystems.cloud` résout vers `192.168.1.1`.

### Ce qui est fourni
- Le sous-domaine est créé automatiquement : placez simplement votre IP avant `polisystems.cloud`.
- Le reverse DNS est préconfiguré sur `static.<votre-ip>.clients.polisystems.cloud`.

### SSL et conseils d'usage
- Aucun certificat SSL n'est émis par défaut. Générez-en un vous-même (par exemple avec Let's Encrypt) si vous avez besoin du HTTPS.
- Vous pouvez utiliser cet hôte pour l'accès quotidien, vos tests ou en attendant que votre propre domaine soit entièrement configuré.

Ce sous-domaine intégré doit vous permettre de mettre vos machines en ligne plus rapidement avec un nom d'hôte joignable.
