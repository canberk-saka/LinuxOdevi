#!/bin/bash


DIRECTORY="/home/bsm"

inotifywait -m "$DIRECTORY" -e create  -e delete |
	
while read path action file; do

	FILE_NAME=$(basename "$file")


	echo "Islem: $action, Dosya: $file" >> /home/bsm/notlar.txt

done	
