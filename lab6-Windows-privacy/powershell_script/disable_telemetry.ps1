#######################################################################<br>
#Developer : Ottomatic <br>
#Tools : PowerShell 5.1.18362<br>
######################################################################

#requires -version 4.0
#requires -runasadministrator

<#
.SYNOPSIS
    Disable Telemetry & Related Processes in Windows 10
.DESCRIPTION
    Disable Telemetry & Related Processes in Windows 10
    Requires Admin Access 
.NOTES
    File Name      : disable-telemetry.ps1
    Author         : @equilibriumuk
    Prerequisite   : PowerShell V4
.LINK
    Script posted on github:
    https://github.com/equk
#>

# Disable Telemetry
## ">> Disabling Telemetry in SOFTWARE Policies"
If (-Not (Test-Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\DataCollection"))
{
    New-Item -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows" -Name DataCollection
}
sp "HKLM:\SOFTWARE\Policies\Microsoft\Windows\DataCollection" "AllowTelemetry" 0
sp "HKLM:\SOFTWARE\Wow6432Node\Policies\Microsoft\Windows\DataCollection" "AllowTelemetry" 0
# Disable Problem Steps Recorder (see README.md for more info)
If (-Not (Test-Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\AppCompat"))
{
    New-Item -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows" -Name AppCompat
}
## ">> Disabling Problem Steps Recorder in SOFTWARE Policies"
sp "HKLM:\SOFTWARE\Policies\Microsoft\Windows\AppCompat" "DisableUAR" 1
# Disable Application Impact Telemetry
## ">> Disabling Application Impact Telemetry in SOFTWARE Policies"
sp "HKLM:\SOFTWARE\Policies\Microsoft\Windows\AppCompat" "AITEnable" 0
# Disable Customer Experience Improvement Program
## ">> Disabling Customer Experience Improvement Program in SOFTWARE Policies"
If (-Not (Test-Path "HKLM:\SOFTWARE\Policies\Microsoft\SQMClient"))
{
    New-Item -Path "HKLM:\SOFTWARE\Policies\Microsoft" -Name SQMClient
}
If (-Not (Test-Path "HKLM:\SOFTWARE\Policies\Microsoft\SQMClient\Windows"))
{
    New-Item -Path "HKLM:\SOFTWARE\Policies\Microsoft\SQMClient" -Name Windows
}
sp "HKLM:\SOFTWARE\Policies\Microsoft\SQMClient\Windows" "CEIPEnable" 0
## ">> SOFTWARE Policies Applied"
## "++ Make sure you run disable-services.ps1 & disable-tasks.ps1"
## "++ to disable all telemetry & ceip related services & tasks"
