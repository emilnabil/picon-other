#!/bin/sh # 
 # # Command: wget https://raw.githubusercontent.com/emilnabil/picon-other/main/installer.sh -qO - | /bin/sh # # ########################################### ###########################################  
MY_URL="https://raw.githubusercontent.com/emilnabil/picon-other/main"  
PICONCAM="piconCam.tar.gz"
PICONSAT="piconSat.tar.gz"
PICONCRYPT="piconCrypt.tar.gz"
PICONPROV="piconProv.tar.gz"
EMU="emu.tar.gz"
echo "******************************************************************************************************************"
echo "    Download And Install Picons  "
echo "============================================================================================================================="
#####################################################################################
echo "         INSTALL PICON-CAM    "
cd /tmp
set -e 
wget "$MY_URL/$PICONCAM"
wait
tar -xzf $PICONCAM  -C /
wait
cd ..
set +e
rm -f /tmp/$PICONCAM
echo "==========================================================================================================================="
echo "         INSTALL PICON-SAT    "
cd /tmp
set -e 
wget "$MY_URL/$PICONSAT"
wait
tar -xzf $PICONSAT  -C /
wait
cd ..
set +e
rm -f /tmp/$PICONSAT
echo "****************************************************************************************************************************"
echo "         INSTALL PICON-Prov    "
cd /tmp
set -e 
wget "$MY_URL/$PICONPROV"
wait
tar -xzf $PICONPROV  -C /
wait
cd ..
set +e
rm -f /tmp/$PICONPROV
echo "****************************************************************************************************************************"
echo "         Install Picon-Crypt    "
cd /tmp
set -e 
wget "$MY_URL/$PICONCRYPT"
wait
tar -xzf $PICONCRYPT  -C /
wait
cd ..
set +e
rm -f /tmp/$PICONCRYPT
echo "==========================================================================================================================="
echo "****************************************************************************************************************************"
echo "         Install Picon-Emu    "
cd /tmp
set -e 
wget "$MY_URL/$EMU"
wait
tar -xzf $EMU  -C /
wait
cd ..
set +e
rm -f /tmp/$EMU
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




























