#!/bin/bash

FILENAME=$1

CLOUD_DIRECTORY=$2


# check if the filename argument is provided
if [ -z "$FILENAME" ]; then
	echo "Error: Filename is required."
	exit 1
fi


# check if file exists
if [ -f "$FILENAME" ]; then
	echo "Error: File does not exist: $FILENAME"
	exit 1
fi


echo "Ready to upload $FILENAME to $CLOUD_DIRECTORY."

