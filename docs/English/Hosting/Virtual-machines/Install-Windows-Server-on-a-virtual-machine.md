# Install Windows Server on a virtual machine

When you order a new virtual machine you won't see any option to choose Windows as operating system.

This guide seems long, but it's very detailed to fit even new users, advanced users you can refer mainly to the images.

NOTE : We don't offer Windows licences they are at your own charge, and we only accept legal licences. In case of abuse of the Microsoft licencing terms your server cloud be directly terminated without notice. 

![](https://i.imgur.com/EK5c8sR.png)

However, it's fully possible to use our virtual machines with Windows Server, note that it can be slow on tiny machines.

We don't provide it directly during the order because the installation needs to be done manually.

During this guide we will use a EPYC VM - M (4vCPU - 8GB ram) and we will install Windows Server 2022.
You can install Windows Server 2022 Standard or Datacenter, core or not.

Windows Server is only available  in English, German and Russian as ISO. You can install another language directly in Windows once it's installed if required.

## Order your machine

Choose your machine on our website directly, it can be any machine, but remember that tinier machines can be slower.

When you order it you are free to choose any options for it, concerning the operating system it doesn't matter put whatever you want, it won't be used.

## Manage your virtual machine

If you are not familiar  with our management panel, once you order you can simply go on your service (the concerned virtual machine) and it will open a dashboard to manage it.

For example, I will press on the machine I just ordered for this guide.
![](https://i.imgur.com/oUqIo4t.png)

In this dashboard you can open some menu's below to manage your new virtual machine. 
![](https://i.imgur.com/Eg75nkQ.png)

During this guide we will be interested in the "Server Quick Actions" section, open it (to do so press on the tiny - sign).

## Install Windows Server

To install Windows on your virtual machine, you need to follow these steps, pay attention to it mainly for the drivers.

### Mount the ISO and boot

First, you want to head in the "Server Quick Actions" area, and press the "ISO Images" button. 
![](https://i.imgur.com/PudmaT8.png)

Press "confirm" to open the management of the ISO's.

![](https://i.imgur.com/UgmFKGR.png)

Here you see multiple ISO's and you see that there are multiple pages of it.
You can install Windows Server as well as Proxmox Mail Gateway or other awesome images.
For now we want to install Windows Server 2022 (it includes Datacenter and Standard in the same ISO).
As you can see there isn't the 2022 edition on my screen, you can search it in the top left search bar or simply search it through the different pages.

Once you got the image you wanted press "Mount" and confirm.
![](https://i.imgur.com/REuAgIO.png)

**Note : there can be only ONE and ONLY image mounted at the same time.**

Now that the image is mounted you can go back to the management of your virtual machine.
![](https://i.imgur.com/QsTiKDD.png)

Now that you are back in the management area, in the "Server Quick Actions" section you can press reboot and confirm.
![](https://i.imgur.com/0C0BaJ3.png)

![](https://i.imgur.com/X0g3t3o.png)

Your server will be rebooted and it will directly start on your selected ISO.
You can now open the "Console" in the "Server Quick Actions" section and confirm as always.

It will open the console in a new popup (you may need to accept it).
![](https://i.imgur.com/bmMfPme.png)

### Installation of Windows

Now that you have access to the virtual console, you can see that you are directly on a classical Windows Installer window.
Proceed as you would normally.
For example, we will use the English version of our ISO and simply change the "Time and format" to French (Switzerland). And press "Next".

In the next window, simply press "Install now" and wait a few seconds.

![](https://i.imgur.com/gDykcYa.png)

In my case I want it to be easy as possible so I will go with Windows Server 2022 Standard (Desktop Experience).
Press next again.

You will need to accept the licence terms, accept it and press next.

### Install the needed drivers
**This part is important.**

Select custom as installation. 
![](https://i.imgur.com/DmQOYEe.png)

Here you will see that you don't see any disks.

You will need to head back to the ISO area (if you don't remember how to go there please scroll up this document).

In the ISO management area unmount your current ISO by pressing the "Unmount" button in green and confirm.
![](https://i.imgur.com/QlPo9Sh.png)

Now search for "virtio".
And mount the concerned image, and confirm it.
![](https://i.imgur.com/NpXhCjR.png)

Once mounted head back to your virtual console.
Press "Load driver".

![](https://i.imgur.com/T0BNGXw.png)

Press on "Browse".

![](https://i.imgur.com/gX5RtIG.png)

Now open the "CD Driver (D:)"

![](https://i.imgur.com/eEVfscT.png)

You will need to install multiple drivers. 
There will be three drivers : 
 - Balloon
 - NetKVM
 - VioSCSI

To do so, open the concerned folder (I will do it with NetKVM for example).
And go with your concerned server version. As you can see in my specific case there aren't any 2k22 folders, in this case simply take the most recent one, so I will go in the 2k19 folder.

Press on the amd64 folder and press "OK".

![](https://i.imgur.com/WAL5mX4.png)

There can be an warning that the drivers aren't signed, bypass it by pressing ok.

Press next once the first driver loaded : 

![](https://i.imgur.com/IvyjEdK.png)

And repeat what we just did for the 2 other drivers.
In my case I will do it with Balloon and VioSCSI.

Once every driver is installed you should magically see the Drives!

![](https://i.imgur.com/eqsnrab.png)


Now we need to remount the Windows server ISO back, as currently it's the Virtio ISO which is mounted.
So like last time, unmount the current ISO and remount the Windows Server ISO you took.
![](https://i.imgur.com/DkeOsoh.png)

You can then delete all partitions.
![](https://i.imgur.com/TytHnUh.png)

And simply press "Next" with the selected install disk.

![](https://i.imgur.com/KxHjANT.png)

The installation of Windows will be running during a few minutes.
Take a break and come back once it's ready.


##Install the drivers on Windows

Once your virtual machine has finished installing and rebooted, you will have the classical credentials questions.
We won't write any guide for it as it's quite common to do this on windows machines, if you are lost simply check some YouTube videos for it.

To login you can simply press on the "Send Crtl+Alt+Del" and you can type your password to login.

![](https://i.imgur.com/V7nb60x.png)

Remount the virtio ISO.
![](https://i.imgur.com/JpHkdIS.png)

In the Virtio CD and install the "virtio-win-guest-tools".

![](https://i.imgur.com/uIlWxfH.png)

Simply follow the steps to install it.

Perfect, your new Windows Virtual machine is now ready and running, with all necessary drivers.
If you want, you can unmount the virtual ISO.
