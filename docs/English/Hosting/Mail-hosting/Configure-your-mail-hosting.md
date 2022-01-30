#Configure your mail hosting

To properly explain the whole process we are going to explain it from when you order your mail hosting until your mail is configured.
This guide will be very detailed, so that even new users can have their mail service up and running.
So for advanced user this guide can looks like long but you will surely find it easier than you think.
In case you need help, you can always [contact us](https://polisystems.ch/manager/submitticket.php) and we will be happy to help you out.

Note that the prices, and packages could have changed over time.

##It looks complicated but it's not

Trust us, this guide is very detailed and you will surely think it's really hard.
It's not. Once you will have understood it you will surely say us it's easier than you thought.

##Order your mail service

Firstly choose the package that fits you on our website and press "Buy".

![Order](https://i.imgur.com/Bg7hk09.png)

Enter your current domain name, register one or transfer one domain name.
Here we are going to use our existing domain.
Note : **it won't be neccesary to update your nameservers**.

![Order](https://i.imgur.com/Hc5QGp0.png)

Choose your billing cycle and continue.

![Order](https://i.imgur.com/oxVk0lI.png)

Fill in all the informations or procceed to the order with your account. 
Choose your payment method and remember to press *I have read and agree to the Terms of Service* at the bottom of the page.

![Client area](https://i.imgur.com/FztFuRd.png)

Head to the client area now.

##Important Mail (domain configuration)

This section is very important.
You will recive an Important mail in your inbox.

In this mail will be all you need to setup and manage your mail services.
It mainly contains all the informations you need to add in your DNS of your domain.


![Mail](https://i.imgur.com/LGyAn1J.png)


So now lead to your domain and configure it like in the mail.
If you did not bought your domain through us or you are using Cloudflare it's the same idea.

So lead to your domains page on the client area, and manage DNS records.

![Add dns records part 1](https://i.imgur.com/MXFhD6a.png)

**Keep this page open we will need it later for DKIM**.
Remeber to remove the qotes if there is any.

We have added our DNS records that we recived in the mail, so the MX records and SPF records.

It was easy right?

We need to make one last thing with our DNS records but we will explain it later on in this tutorial.

##Manage your mail service

###Login in the panel
In the mail we talked about recently, you surely saw the url of your control panel.

![Mail control panel](https://i.imgur.com/ltDpAWA.png)

There is two ways to login in the panel.
You can login using the credentials we went you in the mail.
Or you can login on your client area by clicking "Login to DirectAdmin" in your mail hosting product page.

![Login via portal](https://i.imgur.com/ya8Q7Zf.png)

Alright simply login using one of the two ways.

![Management panel](https://i.imgur.com/StoxyFv.png)

**You can choose your language here, or in the menu at the bottom left once logged in**.

Awesome you are in!
Here you can see a few things, disk space, E-Mails and more.

**On your left** there is a few buttons. They explain what they do.
We are intressted for the moment in *Account Manager* section.

####Multi domain packages note

>If you have a plan that includes multiple domains you can add additional domains in the "Domain Setup" section.
>You simply need to press "Add new" fill your domain and press "Create"

>**Note: for users with multiple domain you can switch domain on the top right**
![Domain](https://i.imgur.com/YqaDrrG.png)

###DKIM configuration

You are nearly finished!

Lead to "Account Manager -> DKIM Keys (ONLY USE DKIM KEY HERE)"

See the x._domainkey record?

![Domain key DKIM](https://i.imgur.com/gWXf764.png)

Take the first record (x._domainkey) and add a **TXT** record to your DNS (the page that you didn't closed)
Take the second record like "v=DKIM1; k=rsa; .....
and paste it as address.

**REMOVE THE QOTES of "v=DKIM**

At the end it should look like this :

![DKIM](https://i.imgur.com/ZS8UKvl.png)


###Create a new mail box

Guess what you just finished now it's the cool part!

Now lead to "E-mail Manager -> E-mail Accounts".

![Create e-mail](https://i.imgur.com/5unZHzD.png)

Press on Create account.

![Create e-mail 2](https://i.imgur.com/UaSGxqb.png)

Fill in all the data you need, limit disk space or not. Add a sending limit or not.

And finnaly press **CREATE ACCOUNT**

![Created](https://i.imgur.com/xOAmc8L.png)

You have just created your first account.
Please don't take note of the POP/IMAP/SMTP server.

###Login to your mail box and send mail

You can now login on your mail box.
You can either use an client such as outlook.
Or you can use our awesome webclient!

To login you can press on "Webmail" in the right bar or ask your users to go to [mail.polisystems.ch](https://mail.polisystems.ch/).
It may take up to 5 minutes for your mail address to be usable.

###End

You are done!

You can now freely send/recive mails.
Try to mess around with our Webmail, and mainly with the management panel.
You will find some cool things like in the section "Spamassassin Setup" where you can freely activate our Spam protection for your mails!

We hope you will have fun with your new mails.
