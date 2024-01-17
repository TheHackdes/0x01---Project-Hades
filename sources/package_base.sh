#!/bin/bash


function update(){
  apt update && apt upgrade -y
}

function install_base(){
  apt install -y htop curl wget git \
    nmap
}

function install_fzf(){
  git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf 
  ~/.fzf/install
}

function package_base(){
  update
  install_base
  install_fzf
}
