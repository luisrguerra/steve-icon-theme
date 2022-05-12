cat << "EOF"

Steve
Icon Theme

EOF

echo Uninstalling Steve icon theme

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



