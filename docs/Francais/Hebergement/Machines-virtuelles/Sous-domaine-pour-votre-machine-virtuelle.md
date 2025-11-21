#  Sous-domaine pour votre machine virtuelle
Depuis le 30.04.2020 (et sur toutes les machines), un sous-domaine gratuit est livré avec la machine que vous pouvez utiliser pour connecter votre serveur et avoir une connexion HTTPS vers celui-ci.

Il n'y a pas de certificat SSL émis avec, et il pointe directement vers votre IPV4.

Voici un exemple :

**192.168.1.1.polisystems.cloud va vers 192.168.1.1.**

Vos RDNS sont également automatiquement définis sur static.yourip.clients.polisystems.cloud.

Cela signifie qu'il vous suffit de mettre votre IP en face de polisystems.cloud.

Bien sûr, vous pouvez utiliser ce domaine au quotidien, et par exemple, appliquer un certificat SSL en utilisant let's encrypt.

Nous espérons que cela vous aidera à mettre en place vos machines.
