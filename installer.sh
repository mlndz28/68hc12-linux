#!/bin/bash

if [[ $EUID -ne 0 ]]; then
   echo "Please run this script as root." 1>&2
   exit 1
fi

mkdir -p /tmp/hc12asm
wget -q https://hcs12text.com/files/asmide340.zip -O /tmp/hc12asm/asmide.zip --show-progress
busybox unzip /tmp/hc12asm/asmide.zip -o -d /tmp/hc12asm/
cp assembler.sh /bin/as12
chmod 755 /bin/as12
mkdir -p /opt/hc12asm
cp /tmp/hc12asm/as12.exe /opt/hc12asm
echo -e "\n  Done.\n"