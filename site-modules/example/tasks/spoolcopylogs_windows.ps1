[CmdletBinding()]
Param(
  [String] $logfile
)

& 'C:\Program Files\Amazon\AWSCLIV2\aws.exe' s3 cp C:\inetpub\logs\LogFiles\W3SVC1\$logfile s3://demohw

