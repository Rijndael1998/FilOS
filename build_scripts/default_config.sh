#!/bin/bash

# This script provides common customization options for the ISO
# 
# Usage: Copy this file to config.sh and make changes there.  Keep this file (default_config.sh) as-is
#   so that subsequent changes can be easily merged from upstream.  Keep all customiations in config.sh

# The version of Ubuntu to generate.  Successfully tested: bionic, cosmic, disco, eoan, focal, groovy, jammy
# See https://wiki.ubuntu.com/DevelopmentCodeNames for details
export TARGET_UBUNTU_VERSION="jammy"

# The Ubuntu Mirror URL. It's better to change for faster download.
# More mirrors see: https://launchpad.net/ubuntu/+archivemirrors
export TARGET_UBUNTU_MIRROR="http://us.archive.ubuntu.com/ubuntu/"

# The packaged version of the Linux kernel to install on target image.
# See https://wiki.ubuntu.com/Kernel/LTSEnablementStack for details
export TARGET_KERNEL_PACKAGE="linux-generic"

# The file (no extension) of the ISO containing the generated disk image,
# the volume id, and the hostname of the live environment are set from this name.
export TARGET_NAME="FilOS"

# The text label shown in GRUB for booting into the live environment
export GRUB_LIVEBOOT_LABEL="Try $TARGET_NAME without installing"

# The text label shown in GRUB for starting installation
export GRUB_INSTALL_LABEL="Install $TARGET_NAME"

# Packages to be removed from the target system after installation completes succesfully
export TARGET_PACKAGE_REMOVE="
    ubiquity \
    casper \
    discover \
    laptop-detect \
    os-prober \
    ubuntu-gnome-desktop \
"

# Package customisation function.  Update this function to customize packages
# present on the installed system.
function customize_image() {
    # install graphics and desktop
    apt-get install -y \
    ubuntu-gnome-desktop

    # useful tools
    apt-get install -y \
    clamav-daemon \
    apt-transport-https \
    curl \
    memtest86+ \
    python3 \

    # purge
    apt-get purge -y \
    transmission-gtk \
    transmission-common \
    gnome-mahjongg \
    gnome-mines \
    gnome-sudoku \
    aisleriot \
    hitori \
    firefox \
    cheese cheese-common \
    discover discover-data \
    fdisk \
    gedit gedit-common \
    gnome-calendar gnome-disk-utility gnome-font-viewer \
    gnome-online-accounts \
    libreoffice-base-core \
    libreoffice-calc \
    libreoffice-common \
    libreoffice-core \
    libreoffice-draw \
    libreoffice-gnome \
    libreoffice-gtk3 \
    libreoffice-impress \
    libreoffice-math \
    libreoffice-pdfimport \
    libreoffice-style-breeze \
    libreoffice-style-colibre \
    libreoffice-style-elementary \
    libreoffice-style-yaru \
    libreoffice-writer \
    remmina-common remmina-plugin-rdp remmina-plugin-secret \
    remmina-plugin-vnc remmina \
    thunderbird thunderbird-gnome-support \
    
}

# Used to version the configuration.  If breaking changes occur, manual
# updates to this file from the default may be necessary.
export CONFIG_FILE_VERSION="0.4"