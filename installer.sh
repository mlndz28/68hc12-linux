#!/bin/bash

if [[ $EUID -ne 0 ]]; then
   echo "Please run this script as root." 1>&2
   exit 1
fi

if ! hash busybox 2>/dev/null; then
    echo "busybox is needed to run the installer."
    exit 1
fi

mkdir -p /tmp/hc12asm
wget -q https://hcs12text.com/files/asmide340.zip -O /tmp/hc12asm/asmide.zip --show-progress
busybox unzip /tmp/hc12asm/asmide.zip -o -d /tmp/hc12asm/
if [ -f assembler.sh ]; then
    cp assembler.sh /usr/bin/as12
else
    wget -q https://raw.githubusercontent.com/mlndz28/68hc12-linux/master/assembler.sh -O /usr/bin/as12 --show-progress
fi
chmod 755 /usr/bin/as12
mkdir -p /opt/hc12asm
cp /tmp/hc12asm/as12.exe /opt/hc12asm
echo -e "\n  Done.\n"