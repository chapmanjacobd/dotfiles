#!/usr/bin/env bash

set -Eeuox pipefail

sudo dnf install -y https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm
sudo dnf groupupdate –with-optional Multimedia

ssh-keygen -t ed25519 -f ~/.ssh/id

sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc
sudo sh -c 'echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" > /etc/yum.repos.d/vscode.repo'

dnf check-update

sudo dnf install -y mpv ffmpeg python3 python3-pip git android-tools R ImageMagick bat breaktimer code copyq darktable java-latest-openjdk detox cowsay dnscrypt-proxy exa evince expect fd fdk-aac fdupes fish gdal fzf gdal-devel ffmpeg-devel gdal-java geos-devel gdal-python-tools gimp git-delta git-lfs htop inotify-tools jq kdiff3 keepassxc kitty krename lato-fonts lcdnurse libpq-devel libreoffice mediawriter meld moreutils ncdu nmon nomacs pdfmod pg_top picard pipenv plasma-workspace-x11 podman-docker pspg python3-qgis python3.8 ripgrep rstudio-desktop syncthing udunits2 wine xdotool xclip xbacklight trash-cli tldr wget fedora-workstation-repositories chromium-freeworld dnf-plugins-extras-tracer cpufrequtils postgresql-devel breeze-gtk gdal-devel sqlite-devel bash-completion fd-find

wget https://github.com/tom-james-watson/breaktimer-app/releases/latest/download/BreakTimer.AppImage -P ~/.local/bin/

sudo dnf install -y https://zoom.us/client/latest/zoom_x86_64.rpm

sudo dnf install -y https://download2.tixati.com/download/tixati-2.85-1.x86_64.rpm

# sudo dnf config-manager --set-enabled google-chrome
# sudo dnf install -y google-chrome-stable

sudo tee -a /etc/yum.repos.d/google-cloud-sdk.repo << EOM
[google-cloud-sdk]
name=Google Cloud SDK
baseurl=https://packages.cloud.google.com/yum/repos/cloud-sdk-el8-x86_64
enabled=1
gpgcheck=1
repo_gpgcheck=0
gpgkey=https://packages.cloud.google.com/yum/doc/yum-key.gpg
       https://packages.cloud.google.com/yum/doc/rpm-package-key.gpg
EOM
sudo dnf install -y google-cloud-sdk

sudo dnf install -y https://dbeaver.com/files/dbeaver-ee-latest-stable.x86_64.rpm


sudo dnf erase kcalc PackageKit konversation falkon dragon konversation falkon kget ktorrent konqueror chromium zoom docker podman docker podman autokey kontact dolphin Kontact dolphin kwrite calligra* korganizer kmail akregator knode krdc krfb konqueror ktnef kaddressbook konversation kf5-akonadi-server mariadb-common
# sudo dnf erase plasma-discover

gcloud init
gcloud auth application-default login
gcloud auth login