#!/bin/sh # 
 # # Command: wget https://raw.githubusercontent.com/emilnabil/picon-other/main/installer.sh -qO - | /bin/sh # # ########################################### ###########################################  
MY_URL="https://raw.githubusercontent.com/emilnabil/picon-other/main"  
PICONCAM="piconCam.zip"
PICONSAT="piconSat.zip"
PICONCRYPT="piconCrypt.zip"
PICONPROV="piconProv.zip"
EMU="emu.zip"
echo "******************************************************************************************************************"
#check mounted storage
mrp=("/media/hdd" "/media/usb" "/media/mmc")
for mr in "${mrp[@]}"; do
if [ -d "$mr" ]; then
echo ""
break
fi
done
echo "    Download And Install Picons  "
echo "============================================================================================================================="
#####################################################################################
echo "         INSTALL PICON-CAM    "
cd /tmp
set -e 
wget "$MY_URL/$PICONCAM"
wait
unzip piconCam.zip
wait
cp -rf /tmp/piconCam $mr/piconCam
cd ..
set +e
rm -f /tmp/$PICONCAM
rm -rf /tmp/piconCam
echo "==========================================================================================================================="
echo "         INSTALL PICON-SAT    "
cd /tmp
set -e 
wget "$MY_URL/$PICONSAT"
wait
unzip piconSat.zip
wait
cp -rf /tmp/piconSat $mr/piconSat
cd ..
set +e
rm -f /tmp/$PICONSAT
rm -rf /tmp/piconSat
echo "****************************************************************************************************************************"
echo "         INSTALL PICON-Prov    "
cd /tmp
set -e 
wget "$MY_URL/$PICONPROV"
wait
unzip piconProv.zip
wait
cp -rf /tmp/piconProv $mr/piconProv
cd ..
set +e
rm -f /tmp/$PICONPROV
rm -rf /tmp/piconProv
echo "****************************************************************************************************************************"
echo "         Install Picon-Crypt    "
cd /tmp
set -e 
wget "$MY_URL/$PICONCRYPT"
wait
unzip piconCrypt.zip
wait
cp -rf /tmp/piconCrypt $mr/piconCrypt
cd ..
set +e
rm -f /tmp/$PICONCRYPT
rm -rf /tmp/piconCrypt
echo "==========================================================================================================================="
echo "****************************************************************************************************************************"
echo "         Install Picon-Emu    "
cd /tmp
set -e 
wget "$MY_URL/$EMU"
wait
unzip emu.zip
wait
cp -rf /tmp/emu $mr/emu
cd ..
set +e
rm -f /tmp/$EMU
rm -rf /tmp/emu
echo "==========================================================================================================================="
echo "# PICON  INSTALLED SUCCESSFULLY #"
echo "
echo " "*********************************************************" 
	echo "********************************************************************************"
echo "   UPLOADED BY  >>>>   EMIL_NABIL "   
sleep 4;
	echo '========================================================================================================================='
###########################################                                                                                                                  
echo ". >>>>         RESTARING     <<<<"
echo "**********************************************************************************"
wait
killall -9 enigma2
exit 0




































