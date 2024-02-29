# Use both Gnome-boxes and virt-manager with same VM
To see the same list from both GUI apps:

Open virt-manager (without sudo) --> "add connection" --> "Hypervisor"="QEMU/KVM user session".

When an image is imported to gnome-boxes, gnome-boxes converts this image to qcow2. But gnome-boxes can run other image formats without any issue. Therefore, create the VM from virt-manager and run it from gnome-boxes if you will use the built-in share feature of gnome-boxes.

# File share tips
1- adding CD-ROM hardware:

```sh
mkisofs -o '/home/user/shared_files.iso' '/home/user/shared_files'
```

2- via gnome-boxes built-in feature.

3- via syncthing (cross-platform app).

For 2nd and 3rd options, the network of VM must be "bridge". When the bridge network is seşected from virt-manager GUI, the device name must be "virbr0".

# Ready-to-use Microsoft VM
Microsoft offers ready-to-use VMs. SOme of them contains Visual Studio, subsystem-Linux:

https://developer.microsoft.com/en-us/windows/downloads/virtual-machines/

# Microsoft Licence

## Windows 10 Licence
windows aktive edilmediğinde sistem kullanılabiliyor. Sadece şunlar kısıtlanıyor:
- sync with account
- theme and personalizations
- optional updates (critical and security updates are installing)

## Windows 11 PRO VS HOME
Home version does not include features like:
- Hyper-V. 
- Windows containers (Home version can only run Linux containers) (source: https://docs.docker.com/desktop/install/windows-install/)

In any case the PRO version should be prefered.

## Office Licence
Office without licence only allows you to open files read-only.

If you need Office only once, mount office-2021-pro-plus.iso as CD-ROM to VM, and install it. It allows you to use all features for 5 days. The setup process takes about 6 minutes on SSD drive. The windows10-VM increases to 15.4 GB.

# fedora.vmdk
- Fedora-Workstation-Live-x86_64-37-1.7.iso
- english
- virt-manager: 4.1.0
- chipset: Q35
- hypersisor: kvm
- acrhitecture: x86_64
- firmware: bios
- partitions: mbr. it has multiple free parts left and right side of fedora partition.
- original image format: vmkd
- image virtual size: 300 GB
- image real size: 11.7 GB
- password: 123456a
- OS updates: 04/2023
- installed: gparted, blivet-gui, gnome-tweak-extension
- manuel operations: old logs and kernel removed
- manual test: libreoffice-writer opened without issue when VM setup was 1400 MB RAM and 1 CPU.

# windows10.vmdk
- win10_22h2_english_international_x64_download_at_3_december_2022 (official iso microsoft web site)
- english
- network connection: off via virt-manager
- virt-manager: 4.1.0
- chipset: Q35
- hypersisor: kvm
- acrhitecture: x86_64
- firmware: bios
- partitions: mbr. it has multiple free parts left and right side of Windows partition.
- original image format: vmkd
- image virtual size: 300 GB
- image real size: 11.1 GB
- password: 123456a
- mamuel operations: disabled effects
- manual test: microsoft-word opened without issue when VM setup was 1500 MB RAM and 1 CPU.
