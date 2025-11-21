# Utiliser un domaine personnalisé pour rejoindre votre serveur Minecraft avec un enregistrement SRV

Si vous souhaitez connecter votre serveur Minecraft via votre propre domaine — par exemple **poli-mine.ch** — vous devez configurer un **enregistrement SRV**.

Vous devez créer les enregistrements DNS sur votre fournisseur DNS. Cela peut être Poli Systems, Cloudflare, eNom, ou tout autre service où votre domaine est enregistré ou géré.

## 1. Créer un enregistrement A ou AAAA  
Commencez par créer un enregistrement **A** (IPv4) ou **AAAA** (IPv6) pointant vers l’adresse IP de votre serveur.

Par exemple, si vous souhaitez que les joueurs se connectent via **join.poli-mine.ch**, créez :
- **A record** → `join.poli-mine.ch` → **1.1.1.1** (IP d'exemple)

## 2. Créer l’enregistrement SRV  
L’enregistrement SRV indique à Minecraft quel **port** utiliser lors de la connexion via votre domaine.

La structure d’un SRV est :
```bash
_minecraft._tcp.name TTL class SRV priority weight port target
```

### Exemple de configuration  
Si vous voulez que les joueurs rejoignent votre serveur via **join.poli-mine.ch**, créez un SRV avec :

- **Name :** `_minecraft._tcp.join`  
  - Combine le protocole/service (`_minecraft._tcp`) avec votre sous-domaine (`join`).  
  - Pour utiliser le domaine principal sans sous-domaine, utilisez : `_minecraft._tcp`.
- **TTL :** `14400` (modifiable si vous savez pourquoi)
- **Priority :** `0`
- **Weight :** `5`
- **Port :** Le port de votre serveur Minecraft (ex. `25565`, `25586`, `25598`)
- **Target :** `join.poli-mine.ch`  
  - Doit correspondre à l’enregistrement A/AAAA créé précédemment.

## 3. Connexion avec votre domaine  
Une fois les enregistrements créés et propagés, vous pourrez rejoindre votre serveur Minecraft directement avec :

**join.poli-mine.ch**

Les joueurs n’auront plus besoin d’entrer un port manuellement.
