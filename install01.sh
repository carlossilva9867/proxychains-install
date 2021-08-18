#!/bin/bash
#colors

        Black='\033[0;30m'        # Black
        Red='\033[0;31m'          # Red
        Green='\033[0;32m'        # Green
        Yellow='\033[0;33m'       # Yellow
        Blue='\033[0;34m'         # Blue
        Purple='\033[0;35m'       # Purple
        Cyan='\033[0;36m'         # Cyan
        White='\033[0;37m'        # White
barra="############################################################################"
echo $barra
echo -e  "                 $Green  automatizador de proxuchains
$Yellow
                                             __   _
      _ __    _ __    ___   __  __  _   _   / _| (_) __   __   ___
     | '_ \  | '__|  / _ \  \ \/ / | | | | | |_  | | \ \ / /  / _ \
     | |_) | | |    | (_) |  >  <  | |_| | |  _| | |  \ V /  |  __/
     | .__/  |_|     \___/  /_/\_\  \__, | |_|   |_|   \_/    \___|
     |_|                            |___/
                                                       $White wwww.proxyfive.com.br
                                                        Usuario $USER
                                                        Data `date +%D`
                                                        versão 1.0
"

#verificando a versao do so
RELEASE=`cat  /etc/*release`
ID=`grep -e  ^ID /etc/os-release | sed 's/ID=//g' | grep -v ID_LIKE`
ID_LIKE=`grep -e  ID_LIKE /etc/os-release | tr -d "A-Z_="'"' | awk '{ print $1'}`
VERSION=`grep -e  ^PRETTY_NAME /etc/os-release |  sed 's/PRETTY_NAME="//g'`

if [ $ID_LIKE = "debian" ]
#DEBIAN
then
        echo "sistema operacional compativel"
        echo "seu sistema operacional é  $ID_LIKE versao $VERSION"

#REDHAT
elif [ $ID_LIKE = "rhel" ]

then
        echo "sistema operacional compativel"
        echo "seu sistema operacional é  $ID_LIKE versao $VERSION"
else
        echo "sistema operacional incompativel"
fi
