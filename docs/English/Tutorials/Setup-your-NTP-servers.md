# How to configure to NTP

## What is NTP

In brief, the Network Time Protocol syncs your computer with multiple “Time Servers" around the world. You can define them manually, or automatically. It permits your computer, phone, and any devices that support NTP to have a really precise time, as it's needed for some programs or applications.  
 

## On Windows

Firstly, open your control panel.

![](https://i.imgur.com/pFiEIrD.png)

Then, go in the Clock and Region section.

![](https://i.imgur.com/X2cR64S.png)

Once you are there, click on “Date and Time”

![](https://i.imgur.com/lc5aA5V.png)

Click on internet time

![](https://i.imgur.com/xHQokH4.png)

Once there click on “Change settings…"

![](https://i.imgur.com/y3dDaRy.png)

Then change the “Server”

![](https://i.imgur.com/0gvdBtR.png)

You can change this value by anything you want or use the Poli Systems public NTP servers :  
ntp1.polisystems.ch for servers in Germany

ntp2.polisystems.ch for servers in Switzerland

All our machines are synced with different Atomic clock around Switzerland and Germany.  
Finnaly press “Update now” and OK.

![](https://i.imgur.com/J5DwOeV.png)

You are done for your Windows Machine!

## On Linux

On Linux in the CLI it's really quiet easy to do.

Install the NTP package if needed.

> apt install ntp -y
> 
> yum install ntp -y

Then go in `/etc/ntp.conf` 

> nano /etc/ntp.conf

Change the lines “server" to

> server ntp1.polisystems.ch
> 
> server ntp2.polisystems.ch

And finnaly make

> service ntp restart

You can also run `ntpdate -u ntp1.polisystems.ch` to update the time on your machine once.

## On MacOS

Sadly for this one we don't have any screen-shots but here is how to do it !

macOS, Open the System Preferences app: Date and Time

1.  Click the lock to unlock the preference pane, if needed
2.  Enable the “Set date and time automatically” option
3.  Enter the IP or DNS addresses of your preferred time-servers followed by a period character, and separate multiple entries with commas.  
    E.g. “ntp1.polisystems.ch., ntp2.polisystems.ch.”

# Final notes

That's it now you will always be on time, and your computer too!

ressources for macOS : [https://www.ctrl.blog/entry/tutorial-macos-ntp-config.html](https://www.ctrl.blog/entry/tutorial-macos-ntp-config.html)
