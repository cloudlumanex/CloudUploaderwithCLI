#!/bin/bash

FILENAME=$1
S3_BUCKET=$2

# Check if the filename argument is provided
if [ -z "$FILENAME" ]; then
    echo "Error: Filename is required."
    exit 1
fi

# Check if file exists
if [ ! -f "$FILENAME" ]; then
    echo "Error: File does not exist: $FILENAME"
    exit 1
fi

# Check if the S3 bucket argument is provided
if [ -z "$S3_BUCKET" ]; then
    echo "Error: S3 bucket is required."
    exit 1
fi

# Validate the S3 bucket format
if [[ ! "$S3_BUCKET" =~ ^s3:// ]]; then
    echo "Error: Invalid S3 bucket format. It should start with 's3://'."
    exit 1
fi

echo "Ready to upload $FILENAME to $S3_BUCKET."

# Upload the file to S3
aws s3 cp "$FILENAME" "$S3_BUCKET"
UPLOAD_STATUS=$?

if [ $UPLOAD_STATUS -eq 0 ]; then
    echo "Upload successful: $FILENAME to $S3_BUCKET."
else
    echo "Upload failed with status: $UPLOAD_STATUS."
    exit 1
fi
