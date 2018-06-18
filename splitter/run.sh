#!/bin/bash

INPUT_PDF="_2018__SEIM_Proceedings_Full.pdf"
INPUT_CAT="split.cat"

while IFS='' read -r cmd || [[ -n "$cmd" ]]; do
    args=($cmd)
    pdftk $INPUT_PDF cat ${args[0]} output ${args[1]}
done < "$INPUT_CAT"
