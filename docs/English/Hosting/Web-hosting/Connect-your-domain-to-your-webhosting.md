# Connect Your Domain to Your Hosting

When you order a new web hosting service, your domain is often not connected yet. Below are the simplest ways to point your domain toward your hosting. If you need assistance, contact our support team—we will be happy to help.

Our DNS servers for web hosting are:

- **ns1.polisystems.ch**
- **ns2.polisystems.ch**
- **ns3.polisystems.ch**

## Change Your NS Records

Changing your NS records is simple. In this guide we demonstrate with a domain hosted by us, but other registrars follow a similar process.

1. In your Poli Systems client interface (https://polisystems.ch/manager/clientarea), click **My Domains**.

   ![My Domains](https://i.imgur.com/puIRfDm.png)

2. Click the domain you want to point to our hosting.

   ![Domain Selection](https://i.imgur.com/CgAtbew.png)

3. From the menu on the right, choose **Nameservers**.

   ![Nameservers Menu](https://i.imgur.com/IbEn945.png)

4. Select **Use custom nameservers** and enter:

   - `ns1.polisystems.ch`
   - `ns2.polisystems.ch`
   - `ns3.polisystems.ch`

5. Click **Change Nameservers**.

   ![Change Nameservers](https://i.imgur.com/BhlmnPh.png)

## Change Your Records Manually

If you prefer to change your records manually, follow these steps:

1. On your web server (accessible from the client interface), click **DNS Management**.

   ![DNS Management Button](https://i.imgur.com/hKHqkbZ.png)

2. Choose the domain you want to manage and click **DNS Records** at the top.

   ![DNS Records](https://i.imgur.com/RMdEzFF.png)

3. Copy the displayed records into your DNS settings (whether managed by us or another provider).

   ![DNS Records List](https://i.imgur.com/FXQbLZI.png)

## Propagation

DNS records can take up to 48 hours to propagate. In most cases it is faster, but patience may be required. The TTL (Time to Live) also influences propagation; lower values refresh the records more quickly across DNS servers.