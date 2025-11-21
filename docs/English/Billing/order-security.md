# Order security

If you are unsure about your order, you can contact us at any time.

The internet can be unpredictable, and scams are unfortunately common. We apply the following protections on our website:

- Our website is secured everywhere with end-to-end encryption. We use TLS 1.2 or 1.3; older versions are blocked to avoid vulnerabilities.
- You pass through two major security layers. First, traffic goes through Cloudflare to access our website, which mitigates DDoS and other attacks.

![Cloudflare protection](https://i.imgur.com/LOpoFX1.png)

- Through Cloudflare you reach their servers first, then connect to ours using SSL/TLS certificates.
- All our servers have advanced DDoS protection so your order is not disrupted by attempted attacks. For Layer 7 attacks, we recommend connecting your site to [Cloudflare](https://cloudflare.com).
- Payments are processed on the official pages of each payment provider to keep you secure. For example, PayPal transactions happen on paypal.com, and Wallee opens a lightbox from their site. We never process payment details directly.
- Administrative passwords for email and management interfaces are at least 24 characters long and unique, making them difficult to compromise.
- We use reCAPTCHA (the small wheel on the bottom right) to detect suspicious activity and block bots.
- If you use an ad blocker you might notice banners about Google Analytics. We use Analytics to understand user flows and detect unusual or malicious behavior.
- The main server IP is never exposed. All traffic passes through Cloudflare, preventing SSH brute-force attempts or similar attacks.
- We regularly test our website with tools such as SSL Labs, Mail-Tester, and Sucuri to ensure compliance and resilience.
- Security headers like `X-Content-Type-Options: nosniff` and `X-Frame-Options: SAMEORIGIN` are configured in our `.htaccess` file to prevent clickjacking and drive-by downloads.
- Server access is limited to SSH keys (RSA4096 or ED25519) with multi-factor authentication.
- Custom FireHol ban lists and tailored firewalls further reduce DDoS risks.
- We enable Cloudflare's CSAM scanning tool on support tickets to prevent child sexual abuse material. Learn more here: [https://blog.cloudflare.com/the-csam-scanning-tool/](https://blog.cloudflare.com/the-csam-scanning-tool/).

### Why trust us?

We provide responsive support, maintain a strong reputation, and already serve numerous companies. If you need additional help, simply ask.

Join our [Discord](https://discord.gg/Hyh5ekP) for faster assistance, or [open a ticket](https://polisystems.ch/manager/submitticket.php?step=2&deptid=2).
