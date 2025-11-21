# SRV Records to join your Minecraft server with a custom domain

If you want to connect to your Minecraft server using your own domain — for example **poli-mine.ch** — you will need to configure an **SRV record**.

You must add DNS entries to your domain using your DNS provider. This could be Poli Systems, Cloudflare, eNom, or any registrar/hosting service where your domain is managed.

## 1. Create an A or AAAA Record  
First, you must create an **A** (IPv4) or **AAAA** (IPv6) record pointing to your server’s IP address.

For example, if you want players to connect via **join.poli-mine.ch**, create:
- **A record** → `join.poli-mine.ch` → **1.1.1.1** (example IP)

## 2. Create the SRV Record  
The SRV record tells Minecraft which **port** to use when connecting through your domain.

The structure of an SRV record is:
```bash
_minecraft._tcp.name TTL class SRV priority weight port target
```

### Example configuration  
If you want players to join using **join.poli-mine.ch**, your SRV record should look like this:

- **Name:** `_minecraft._tcp.join`  
  - This combines the protocol and service (`_minecraft._tcp`) with your subdomain (`join`).  
  - If you want the root domain (no subdomain), use: `_minecraft._tcp`.
- **TTL:** `14400` (or another value if you know why you are changing it)
- **Priority:** `0`
- **Weight:** `5`
- **Port:** The port of your Minecraft server (e.g., `25565`, `25586`, `25598`)
- **Target:** `join.poli-mine.ch`  
  - This must match the A/AAAA record created earlier.

## 3. Connect using your domain  
Once the DNS records are created and propagated, you can join your Minecraft server directly using:

**join.poli-mine.ch**

Your players will no longer need to enter a port manually.