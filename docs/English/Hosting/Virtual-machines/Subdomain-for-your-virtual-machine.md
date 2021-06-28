# Subdomain for your virtual machine
Since the 30.04.2020 (and on all machines), a free subdomain comes with the machine that you can use to connect your server and have an HTTPS connection to it.

There is no SSL certificate issued with it, and it directly points to your IPV4.

Here is an example :

**192.168.1.1.polisystems.cloud goes to 192.168.1.1.**

Your RDNS are also automatically set to static.yourip.clients.polisystems.cloud.

It means that you only need to put your IP in front of polisystems.cloud.

Of course, you can use this domain daily, and for example, apply an SSL certificate using let's encrypt.

We wish it will help you to set up your machines.
