#!/bin/bash

#Obtention des preferences
read -p 'voulez-vous installer git?: O/n ' reponse

#set keyboard to azerty
localectl set-keymap fr
localectl set-x11-keymap fr

#set time
ln -sf /usr/share/zoneinfo/Europe/Paris /etc/localtime

#get basic software
#vim
echo installation de vim
sudo apt-get install vim

vimrcp=$(sudo find /etc -name vimrc)
echo configuration de vim
echo set nu >> $vimrcp
echo set mouse=a >> $vimrcp

#git optional
if [ "$reponse" == "O" ]; then 
	sudo apt-get install git
fi
echo "Redemarrer votre machine pour les changements prennent effet"
