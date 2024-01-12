#!/bin/bash
# file input
if [ "$#" -eq 0 ]; then
	echo "usage: walle_pathi_generator <url_file>"
	exit
fi
if [ "$1" == "-h" ]; then
	echo "usage: walle_pathi_generator <url_file>"
	exit
fi
url_file=$1
# prepare url file
param_urls=`cat ${url_file} | awk -F'?' '{print $1}'` 
# extract path from url
for url in ${param_urls}
do
	echo "${url%/*}/"
done
