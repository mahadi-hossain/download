#!/bin/bash
fileid="1SVwDjFklJspqlS3mDtfuv5WlIWOq6V0F"
filename="webgateway-1.0-SNAPSHOT.zip"
curl -c ./cookie -s -L "https://drive.google.com/uc?export=download&id=${fileid}" > /dev/null
curl -Lb ./cookie "https://drive.google.com/uc?export=download&confirm=`awk '/download/ {print $NF}' ./cookie`&id=${fileid}" -o ${filename}
