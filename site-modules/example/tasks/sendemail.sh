#!/bin/bash

# Define email information
to="halim.wijaya@perforce.com"
subject="Fact value"
message="$PT_factoutput"

# Define Gmail credentials
username="hwijaya@gmail.com"
password="iyxtwbitwrhjdwvl"

# Use the curl command to send the email
curl --url 'smtps://smtp.gmail.com:465' --ssl-reqd \
  --mail-from "$username" --mail-rcpt "$to" \
  --user "$username:$password" --insecure \
  --upload-file <(echo -e "Subject: $subject\r\n\r\n$message")
