# Connect Your Domain to Your Hosting

When you order a new web hosting service, it is likely that your domain is not yet connected to your hosting. There are several ways to do this, and we will present the easiest methods here. If you need assistance, feel free to contact our support team, and we will be happy to help.

Our DNS servers for web hosting are:

**ns1.polisystems.ch**  
**ns2.polisystems.ch**  
**ns3.polisystems.ch**  

## Change Your NS Records

Changing your NS records is simple! Follow these steps to manage your domain. In this guide, we will demonstrate using a domain hosted by us, but the procedure is often similar with other domain providers.

1. In your Poli Systems client interface (https://polisystems.ch/manager/clientarea), click on "My Domains".

   ![My Domains](https://i.imgur.com/puIRfDm.png)

2. Click on the domain that should be hosted by us.

   ![Domain Selection](https://i.imgur.com/CgAtbew.png)

3. From the menu on the right, choose "Nameservers".

   ![Nameservers Menu](https://i.imgur.com/IbEn945.png)

4. Select "Use custom nameservers" and enter the following names:

   **ns1.polisystems.ch**  
   **ns2.polisystems.ch**  
   **ns3.polisystems.ch**  

5. Press "Change Nameservers".

   ![Change Nameservers](https://i.imgur.com/BhlmnPh.png)

## Change Your Records Manually

If you prefer to change your records manually, follow these steps:

1. On your web server (accessible from the client interface), click on the "DNS Management" button.

   ![DNS Management Button](https://i.imgur.com/hKHqkbZ.png)

2. Choose the domain you want to manage and click on "DNS Records" at the top.

   ![DNS Records](https://i.imgur.com/RMdEzFF.png)

3. Here, you will find all the necessary records to input into your DNS settings (whether managed by us or another provider).

   ![DNS Records List](https://i.imgur.com/FXQbLZI.png)

## Propagation

DNS records can take up to 48 hours to propagate, so please be patient! Normally, it is faster, but if not, just wait a bit longer, and the changes will take effect. The TTL (Time to Live) can also affect propagation speed. The TTL acts like a "Cache Time"; the lower it is, the faster all DNS servers will request a new reply.