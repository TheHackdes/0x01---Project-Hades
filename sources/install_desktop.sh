#!/bin/bash

function install_i3(){
  apt install -y i3-wm i3
}

function install_vnc(){
  apt install -y tigervnc-standalone-server tigervnc-xorg-extension tigervnc-viewer novnc websockify xfce4 dbus-x11 intltool libtool tigervnc-tools
  export DISPLAY=:1
  vncserver -localhost yes -geometry 1920x1080 -SecurityTypes Plain :0

}

function install_desktop(){
  install_i3
  install_vnc
}
