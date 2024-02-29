# grub settings

```sh
sudo gedit /etc/default/grub
```

```sh
GRUB_TIMEOUT_STYLE=menu # if it is "hidden" then the grub2 screen does not display

GRUB_TIMEOUT=2 # grub2 screen display as second

GRUB_CMDLINE_LINUX_DEFAULT="" # normally it has "quiet splash" which I dont need them. I add "nomodeset" for if machine has VGA problem.

GRUB_DISTRIBUTOR=`lsb_release -d -s 2> /dev/null || echo unknown_os` # default: GRUB_DISTRIBUTOR=`lsb_release -i -s 2> /dev/null || echo debian`
```

then run:

```sh
sudo update-grub
```