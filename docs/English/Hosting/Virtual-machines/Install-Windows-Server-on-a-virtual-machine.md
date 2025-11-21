# Install Windows Server on a virtual machine

Windows is not available as an automatic install option when ordering a virtual machine, but you can deploy it manually with our ISO library. Follow the steps below to mount the image, load the VirtIO drivers, and finalize the installation.

> **Licensing reminder:** We do not provide Windows licenses. You must use a valid license key. Microsoft licensing abuses may lead to termination without notice.

These steps use an EPYC VM ‑ M (4 vCPU, 8 GB RAM) and Windows Server 2022, but the process is similar for other sizes and for Standard or Datacenter editions.

## 1) Order your machine
- Choose any VM size. Smaller instances can run Windows but may feel slower.
- During checkout, any operating system choice is fine because it will be replaced by the manual installation.

## 2) Open the management dashboard
- In the Manager, open the newly ordered virtual machine to reach the service dashboard.
- Expand **Server Quick Actions** to access ISO mounting, reboot, and console controls.

## 3) Mount the Windows ISO and boot from it
1. In **Server Quick Actions**, click **ISO Images** and confirm to open the ISO library.
2. Search for **Windows Server 2022** (or the edition you need) and click **Mount**. Only one ISO can be mounted at a time.
3. Return to the service page, click **Reboot**, and confirm. The VM will restart directly on the mounted ISO.
4. Open **Console** in **Server Quick Actions** to follow the installation.

## 4) Install Windows Server
1. In the installer, choose your language and keyboard settings, then click **Next** and **Install now**.
2. Select the desired edition (e.g., **Windows Server 2022 Standard (Desktop Experience)**) and accept the license terms.

### Load the VirtIO drivers (important)
Windows setup will not list the disks until the VirtIO drivers are loaded.

1. In **ISO Images**, unmount the Windows ISO, search for **virtio**, and mount the **virtio** image. Return to the console.
2. In the installer, choose **Custom** installation, then click **Load driver** → **Browse**.
3. Open the **CD Drive (D:)** and install these drivers (use the most recent folder if your exact Windows version is not listed)
:
   - **Balloon**
   - **NetKVM**
   - **VioSCSI**
4. After installing the three drivers, the disks will appear.
5. Unmount the VirtIO ISO and remount the Windows Server ISO. Delete any existing partitions if needed, select the install disk, and click **Next** to start installation.

The installation may take several minutes and will reboot automatically.

## 5) Install VirtIO tools inside Windows
1. After Windows finishes setup, sign in using the credentials you created. Use **Send Ctrl+Alt+Del** in the console if needed.
2. Mount the **virtio** ISO again from **ISO Images**.
3. In Windows, open the mounted drive and run **virtio-win-guest-tools**. Follow the prompts to install all drivers and tools.
4. Optionally unmount the ISO after installation. Your Windows VM is now fully configured with the required drivers.
