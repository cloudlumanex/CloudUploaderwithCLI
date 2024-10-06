# Cloud Uploader

## Overview

**Cloud Uploader** is a simple bash-based command-line interface (CLI) tool that allows users to quickly upload files to an AWS S3 bucket. It provides a seamless upload experience similar to popular cloud storage services, with validation checks to ensure that the input is correct before attempting an upload.

## Features

- Validate and check for the existence of the file before uploading.
- Validate the S3 bucket format.
- Provides meaningful error messages for incorrect or missing inputs.
- Uploads files to an S3 bucket using the AWS CLI.
- Displays success or failure messages based on the upload status.

## Prerequisites

- **AWS CLI**: You must have the AWS CLI installed on your system. You can install it by following the [official AWS CLI installation guide](https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html).
- **AWS Account**: You need an active AWS account to access S3.
- **Configured AWS Credentials**: Configure your AWS credentials using the command:
  ```bash
  aws configure
![Screenshot 2024-10-06 053002](https://github.com/user-attachments/assets/4466eeea-7375-451f-b97c-967eac673e7f)

![Screenshot 2024-10-06 053045](https://github.com/user-attachments/assets/f1031e31-92bb-4a71-95e8-1c2e8f233942)

## 
