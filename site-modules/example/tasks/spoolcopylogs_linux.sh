#!/bin/bash
/usr/local/bin/aws s3 cp /var/log/httpd/$PT_logfile s3://demohw

echo "Log file has been uploaded successfully to AWS S3 demohw"
