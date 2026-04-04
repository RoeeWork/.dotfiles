#!/bin/bash

sudo pacman -Qqem > pkglist_aur.txt
sudo pacman -Qqen > pkglist.txt    
git add .
git commit -m "update" 
git push 
