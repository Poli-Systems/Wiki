# Installer Windows Server sur une machine virtuelle

Windows n'apparaît pas comme option automatique lors de la commande d'une machine virtuelle, mais vous pouvez le déployer manuellement grâce à notre bibliothèque d'ISO. Suivez les étapes ci-dessous pour monter l'image, charger les pilotes VirtIO et terminer l'installation.

> **Rappel de licence :** Nous ne fournissons pas de licences Windows. Vous devez utiliser une clé valide. Tout abus des conditions de licence Microsoft peut entraîner une résiliation sans préavis.

Ces étapes utilisent une VM EPYC ‑ M (4 vCPU, 8 Go de RAM) et Windows Server 2022, mais le processus est similaire pour d'autres tailles et pour les éditions Standard ou Datacenter.

## 1) Commander votre machine
- Choisissez la taille de VM souhaitée. Les petites instances peuvent exécuter Windows mais seront plus lentes.
- Lors de la commande, le choix du système d'exploitation importe peu puisqu'il sera remplacé par l'installation manuelle.

## 2) Ouvrir le tableau de bord de gestion
- Dans le Manager, ouvrez la machine virtuelle nouvellement commandée pour accéder au tableau de bord du service.
- Déroulez **Server Quick Actions** pour accéder au montage ISO, au redémarrage et à la console.

## 3) Monter l'ISO Windows et démarrer dessus
1. Dans **Server Quick Actions**, cliquez sur **ISO Images** et confirmez pour ouvrir la bibliothèque d'ISO.
2. Recherchez **Windows Server 2022** (ou l'édition souhaitée) et cliquez sur **Mount**. Une seule ISO peut être montée à la fois.
3. Revenez sur la page du service, cliquez sur **Reboot** et confirmez. La VM redémarre directement sur l'ISO montée.
4. Ouvrez **Console** dans **Server Quick Actions** pour suivre l'installation.

## 4) Installer Windows Server
1. Dans l'installateur, choisissez la langue et le clavier, puis cliquez sur **Next** et **Install now**.
2. Sélectionnez l'édition souhaitée (par exemple **Windows Server 2022 Standard (Desktop Experience)**) et acceptez les conditions de licence.

### Charger les pilotes VirtIO (important)
L'installateur Windows n'affichera pas les disques tant que les pilotes VirtIO ne sont pas chargés.

1. Dans **ISO Images**, démontez l'ISO Windows, recherchez **virtio** et montez l'image **virtio**. Revenez ensuite à la console.
2. Dans l'installateur, choisissez l'installation **Custom**, puis cliquez sur **Load driver** → **Browse**.
3. Ouvrez le **CD Drive (D:)** et installez ces pilotes (utilisez le dossier le plus récent si votre version exacte de Windows n'est pas listée) :
   - **Balloon**
   - **NetKVM**
   - **VioSCSI**
4. Après l'installation des trois pilotes, les disques apparaissent.
5. Démontrez l'ISO VirtIO et remontez l'ISO Windows Server. Supprimez les partitions existantes si nécessaire, sélectionnez le disque d'installation, puis cliquez sur **Next** pour lancer l'installation.

L'installation peut prendre plusieurs minutes et redémarrera automatiquement.

## 5) Installer les outils VirtIO dans Windows
1. Après la fin de l'installation, connectez-vous avec les identifiants créés. Utilisez **Send Ctrl+Alt+Del** dans la console si nécessaire.
2. Montez à nouveau l'ISO **virtio** depuis **ISO Images**.
3. Dans Windows, ouvrez le lecteur monté et lancez **virtio-win-guest-tools**. Suivez les étapes pour installer tous les pilotes et outils.
4. Vous pouvez démonter l'ISO après l'installation. Votre VM Windows est maintenant prête avec les pilotes nécessaires.
