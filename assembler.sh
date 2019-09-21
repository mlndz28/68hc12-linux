#!/bin/bash

S19ASM=/opt/hc12asm/as12.exe 

if ! hash wine 2>/dev/null; then
    echo "Wine is needed to run the assembler."
    exit 1
fi

if [ ! -f "$S19ASM" ]; then
	echo "Assembler not found, please make sure $S19ASM exists and has the proper permissions"
fi

wine "$S19ASM" $@ | sed 's/Usage:.*filename/Usage: as12 filename/g'
echo