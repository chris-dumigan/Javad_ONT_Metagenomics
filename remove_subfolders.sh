#!/bin/bash

mainDir="//mnt/d/Cdumigan/Nanopore/Javad_ONT_Metagenomics/fast5_pass"

subs=`ls $mainDir`

for i in $subs; do
    if [[ -d "$mainDir/$i" ]]; then
        mv "$mainDir/$i"/* "$mainDir/"
        rm -rf "$mainDir/$i"
    fi
done
