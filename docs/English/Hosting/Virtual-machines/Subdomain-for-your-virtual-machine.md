# Use the built‑in subdomain for your virtual machine

Since 30.04.2020, every virtual machine comes with a free subdomain that points directly to your IPv4 address. You can use it
immediately to reach your server and enable HTTPS once you add a certificate.

**Example:** `192.168.1.1.polisystems.cloud` resolves to `192.168.1.1`.

### What you get
- The subdomain is automatically created; simply place your IP before `polisystems.cloud`.
- Reverse DNS is also preconfigured to `static.<your-ip>.clients.polisystems.cloud`.

### SSL and usage tips
- No SSL certificate is issued by default. Generate one yourself (for example with Let's Encrypt) if you need HTTPS.
- You can use this hostname for daily access, testing, or while waiting for your own domain to be fully configured.

This built-in subdomain should make it quicker to bring your machines online with a reachable hostname.
