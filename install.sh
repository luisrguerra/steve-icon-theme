#!/bin/sh

cat << "EOF"

Steve
Icon Theme

EOF

echo Theme installation

if [ -e ~/.icons/Steve ]
then
   echo Steve installation found at home folder, uninstalling...
   sudo rm -R ~/.icons/Steve
fi

if [ -e /usr/share/icons/Steve ]
then
   echo Steve installation found at system icon themes, uninstalling...
   sudo rm -R /usr/share/icons/Steve
fi

echo Installing theme at /usr/share/icons

sudo cp -fr Steve /usr/share/icons

echo Creating icon theme cache

sudo gtk-update-icon-cache -q /usr/share/icons/Steve
