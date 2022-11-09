[CmdletBinding()]
param ( )
Write-Host "List out IIS logs in C:\inetpub\logs\LogFiles\W3SVC1"
Get-ChildItem -Path C:\inetpub\logs\LogFiles\W3SVC1
Write-Host "Done!"
