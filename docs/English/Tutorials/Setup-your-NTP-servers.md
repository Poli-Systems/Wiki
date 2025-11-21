# How to configure NTP

## What is NTP?

The Network Time Protocol (NTP) synchronizes your device with multiple time servers around the world. You can configure them manually or automatically. Accurate timekeeping is essential for logging, certificates, and many services that rely on consistent timestamps.
 

## On Windows

1. Open the Control Panel.

![](https://i.imgur.com/pFiEIrD.png)

2. Go to **Clock and Region**.

![](https://i.imgur.com/X2cR64S.png)

3. Click **Date and Time**.

![](https://i.imgur.com/lc5aA5V.png)

4. Select the **Internet Time** tab.

![](https://i.imgur.com/xHQokH4.png)

5. Click **Change settings…**

![](https://i.imgur.com/y3dDaRy.png)

6. Update the **Server** value.

![](https://i.imgur.com/0gvdBtR.png)
   - `ntp1.polisystems.ch` (Germany)
   - `ntp2.polisystems.ch` (Switzerland)

All our machines are synchronized with multiple atomic clocks in Switzerland and Germany, so you can use either server.

7. Click **Update now**, then **OK**.

![](https://i.imgur.com/J5DwOeV.png)

Your Windows machine now keeps reliable time.

## On Linux

On Linux, configuration via the CLI is straightforward.

1. Install the NTP package if needed:

   ```bash
   apt install ntp -y
   # or
   yum install ntp -y
   ```

2. Edit `/etc/ntp.conf`:

   ```bash
   nano /etc/ntp.conf
   ```

3. Update the `server` lines:

   ```bash
   server ntp1.polisystems.ch
   server ntp2.polisystems.ch
   ```

4. Restart the service:

   ```bash
   service ntp restart
   ```

You can also run `ntpdate -u ntp1.polisystems.ch` for a one-time sync if you need an immediate correction.

## On macOS

1. Open **System Preferences > Date & Time** (or **System Settings** on recent versions).
2. Click the lock to unlock the pane if required.
3. Enable **Set date and time automatically**.
4. Enter the IP or DNS addresses of your preferred time servers, separated by commas, for example: `ntp1.polisystems.ch., ntp2.polisystems.ch.`

# Final notes

Your devices are now synced and ready to keep accurate time.

Resources for macOS: [https://www.ctrl.blog/entry/tutorial-macos-ntp-config.html](https://www.ctrl.blog/entry/tutorial-macos-ntp-config.html)
