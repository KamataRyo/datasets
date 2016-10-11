#!/bin/bash
DATA_FOLDER='data'
if [[ ! -d "$DATA_FOLDER" ]]; then
    mkdir "$DATA_FOLDER"
fi
cd $DATA_FOLDER && tar xfz ../ldgourmet.tar.gz
