#!/usr/bin/env bash

z_rm_etc_xorg() {
    sudo rm -f /etc/X11/xorg.conf
    sudo rm -f xorg.conf*
}

z_service() {
    sudo service lightdm stop
    sudo service gdm stop
    sudo service kdm stop
    sudo service lxdm stop
    sudo service xdm stop
    sudo service wdm stop
}


z_Xorg_config() {
    sudo Xorg -configure
    [ -f xorg.conf* ] && sudo mv xorg.conf* /etc/X11/xorg.conf
    sudo dpkg-reconfigure $(dpkg -l | awk '{print $2}' | grep "^xserver" | tr '\n' ' ')
    sudo update-initramfs -u
}

reboot

z_uninstal() {
    sudo apt-get remove xdm lxdm kdm wdm
}


z_service
z_Xorg_config
z_rm_etc_xorg
z_uninstal
