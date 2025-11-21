
# Backup S3 NAS Synology

This wiki page will guide you through setting up backups of your Synology NAS on our S3 service.
This S3 service is offered by us, with triple replication in two different datacenters in Switzerland and with AES-256 encryption on the disk level.
By the end of this wiki page, you will have configured your Synology NAS with backups to us using Synology's Hyper backup service.

This article refers to DSM 7.0 using a Synology 1821+ NAS.

## Ordering your S3 storage

First you need to calculate your required S3 storage space.
You can choose an S3 plan on our site here: [https://polisystems.ch/en/s3](https://polisystems.ch/en/s3)

Check correctly the storage space you need for your backups.

## Setting up your Synology NAS

Once you have your S3 logins (available in the customer area) go to your NAS.

### Install Hyper Backup

First, go to the Synology package manager and install the Hyper Backup package if it is not already installed.
![](https://i.imgur.com/fYxp2yu.png)
In our case it is already installed, if it is not the case on your side install it and press Open.

### Configure Hyper Backup

Once Hyper Backup is open, simply click on "+" in the upper left corner.
Then click on "Data backup task".
![](https://i.imgur.com/rUKj76u.png)
Then simply select S3 Storage from the list.

![](https://i.imgur.com/oFrO2ke.png)

#### Fill in your S3 information
You are not far from being done. 
Here you only need to enter your S3 information (available in your personal Poli Systems space).

![](https://i.imgur.com/brIOHIa.png)

 - Server address : s3.polisystems.ch, s3-02.polisystems.ch, s3-03.polisystems.ch
 - Signature Version : V4 or V2
 - Request Style : Path-Style
 - Access Key : Your S3 access key
 - Secret Key : Your S3 secret key
 - Bucket name : Either default or create a new bucket just for your Synology
 - Directory : The directory where the Synology backup will be stored

Then simply press next.

Choose the folders you want to back up and press next again.
Choose the applications you want to back up and press the next button.

#### Plan the backups

![](https://i.imgur.com/SYThAs0.png)
Here you have to choose when you want the backups to be made.
If you want you can enable file integrity checking.
**You can also enable client-side encryption, but if you lose the key or password you won't be able to recover your data so keep this information safe if you enable encryption.**

Press Next again.

#### Backup rotation configuration
![](https://i.imgur.com/C129Jf4.png)
Regarding the rotation of backups we recommend you to activate Smart recycle if space permits.
This allows you to have different versions of your files, for example if you delete them.
In our case 50 versions allow us to find our files up to 6 months back.

#### Your backup is ready!
![](https://i.imgur.com/ZrPK8mw.png)

Now your NAS is backed up and secure. You will never lose your data again!
Once a backup is done, do some tests in hyper backup of single file restoration by using the action button on the screen above.
