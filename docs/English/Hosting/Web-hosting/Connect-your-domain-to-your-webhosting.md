# Connect your domain to your hosting

When you order a new web hosting, it is very likely that it is not yet connected to your web hosting.
There are several ways to do this, we will present the easiest ways to do this.
If you wish, you can also contact our support and we will gladly help you.

Our DNS servers for web hosting are the following:

**ns1.polisystems.ch**  
**ns2.polisystems.ch**  
**ns3.polisystems.ch**  

## Change your NS records

Nothing could be easier!
To do this, manage your domain.
In our case, we will show it on a domain hosted by us, but know that the procedure is very often similar with other domain providers.

In your Poli Systems client interface (https://polisystems.ch/manager/clientarea) simply click on "My Domains".

![](https://i.imgur.com/puIRfDm.png)

Then simply click on the concerned domain which should be hosted by us.

![](https://i.imgur.com/CgAtbew.png)

When you are here choose "Nameservers" from the menu on the right.

![](https://i.imgur.com/IbEn945.png)

Now choose "Use custom nameservers" and enter the following names:

**ns1.polisystems.ch**  
**ns2.polisystems.ch**  
**ns3.polisystems.ch**  

Don't forget to press "Change Nameservers"

![](https://i.imgur.com/BhlmnPh.png)

## Change your records manually

On your web server (which you can easily access from the client interface) you have a "DNS Management" button

![](https://i.imgur.com/rB9s9fi.png)

You will find here all the necessary records to put in your DNS (whether it is managed by us or not).

![](https://i.imgur.com/mY7yudq.png)


## Propagation

DNS records can take up to 48 hours to propagate so be patient! Normally it's pretty fast, but if not, just wait and it will happen.
The TTL is also a reason on why it can be slower. You can consider the TTL like a "Cache Time", the lower it is, the faster all DNS servers will ask for a new reply.
