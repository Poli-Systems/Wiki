# Backup with Duplicati to Poli Systems S3

Duplicati S3

This wiki page will guide you through setting up backups with Duplicati on our S3 service. Our S3 service offers triple replication in two different data centers in Switzerland and AES-256 encryption at the disk level. By the end of this guide, you will have configured your Duplicati backups.

This article refers to Duplicati - 2.0.8.1 using a Windows PC. However, the steps should be the same for Linux, Mac, or other systems.

## What is Duplicati?

[Duplicati](https://duplicati.com) is a free, open-source, and highly configurable backup client that securely stores encrypted, incremental, compressed backups on cloud storage services and remote file servers. It's a popular alternative to commercial backup solutions, offering a robust and flexible way to protect your data.

## Ordering Your S3 Storage

First, you need to calculate your required S3 storage space. You can choose an S3 plan on our site here: [https://polisystems.ch/en/s3](https://polisystems.ch/en/s3)

Ensure you correctly assess the storage space you need for your backups.

## Install Duplicati on Your Computer

Visit the Duplicati official website: [https://duplicati.com/download](https://duplicati.com/download). Choose the system you want to install Duplicati on and download the software.

Install Duplicati on your computer, following the steps provided in the installation process.

### Access the Duplicati Default Page

Once installed, open the Duplicati page. If the installer didn't open the page automatically, go to [http://localhost:8200/](http://localhost:8200/) in a browser to access the Duplicati starting page.

## Create Your First Backup Plan

Click the "Add backup" button on the left pane.

![Add Backup](https://i.imgur.com/OLSEBIU.png)

Click "Next" on the following page.

![Next](https://i.imgur.com/Nr2Gmw4.png)

### General

Configure the following settings:
- **Backup Name**: Choose a name for your backup.
- **Encryption**: You can choose to encrypt your backup. We recommend enabling encryption for added security. If you enable encryption, be sure to save your "Passphrase".

In this example, we'll name the backup "Test" and use a random Passphrase.

![General Settings](https://i.imgur.com/5ojOcHQ.png)

### Destination

Set up your destination (S3 of Poli Systems in our case). Select "S3 Compatible" in the "Storage Type" list.

![S3 Compatible](https://i.imgur.com/hKanLho.png)

Next, set the following options:

- **Use SSL**: Ticked

- **Server**: Poli Systems - 02 (CH) or Poli Systems - 03 (CH) depending on what we've provided

- **Bucket Name**: This can be anything, but ideally something like the computer name

- **Bucket Create Region**: Leave as is

- **Storage Class**: Leave as is

- **Folder Path**: The path where your backups will be in the bucket. We recommend the name of your job, for us it will be "Test"

- **AWS Access ID**: The AWS Access ID of your S3 Poli Systems service, found in your client area under the concerned service

- **AWS Access Key**: The AWS Key ID of your S3 Poli Systems service, found in your client area under the concerned service

- **Client Library to Use**: Leave as is


Before proceeding, perform one important step for the backup to work properly. In the "Advanced options" section, add an advanced option. Add "s3-disable-chunk-encoding" and tick it.

![Advanced Options](https://i.imgur.com/etVGdcN.png)
![Disable Chunk Encoding](https://i.imgur.com/OfixPBQ.png)

Now you are all set! Your settings should look like this:

![Settings Summary](https://i.imgur.com/Wss5u5Q.png)

### Source Data

Click "Next" and choose the data you want to save in your backup. It can be anything, even your whole computer.

![Source Data](https://i.imgur.com/Wqzd8WA.png)

In this example, I will just save my GitHub folder.

### Schedule

Click "Next" and choose when you want the data to be saved.

![Schedule](https://i.imgur.com/SNErbwf.png)

### Options

Here you can choose the backup retentions and other fine-tuning options like the Remote volume size. The default options work fine.

![Options](https://i.imgur.com/p3edKta.png)

Click "Next". If any warnings pop up, read them and accept them. For example, the bucket name should be in lowercase letters in our case.

## Run the First Backup

Go back to the "Home" menu and run your first backup.

![Run Backup](https://i.imgur.com/3rUk0lP.png)

Once finished, you may have a warning. It's normal because it is the first backup; you can safely ignore it.

Your machine is now secured with Duplicati on our S3 services. Remember to save your passphrase if you used encryption in your job, as you won't be able to restore any data without it.

## Side Notes About Duplicati

Duplicati is a robust open-source software, still marked as Beta but highly stable after years of development. You can easily restore from your backups in the designated section. The Poli Systems team is proud to be an official S3 provider for this excellent project.

The most important thing to remember for making Duplicati work with our system is to disable "s3-disable-chunk-encoding" as explained in the "Destination" section.