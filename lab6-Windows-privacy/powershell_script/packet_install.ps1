
#######################################################################<br>
#Project : Powershell personnal packet installer <br>
#Developer : Ottomatic <br>
#Tools : PowerShell 5.1.18362<br>
######################################################################

#requires -version 4.0
#requires -runasadministrator

<#
.SYNOPSIS
    Personnal packet installer 
.DESCRIPTION
    Install personnal packet 
    Requires Admin Access 
.NOTES
    File Name      : packet_install.ps1
    Author         : @ottomatic
    Prerequisite   : PowerShell V4
#>

# I use packet manager (getone) in windows 10 but maybe in future only use chocolatey 
# to install  choco : https://lecrabeinfo.net/chocolatey-gestionnaire-paquets-windows.html
# Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))

# Disable TLS 1.3 to prevent errors
# source : https://github.com/NuGet/NuGetGallery/issues/7705
#New-Item 'HKLM:\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.3\Server' -Force | Out-Null
#New-ItemProperty -path 'HKLM:\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.3\Server' -name 'Enabled' -value '0' -PropertyType 'DWord' -Force | Out-Null
#New-ItemProperty -path 'HKLM:\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.3\Server' -name 'DisabledByDefault' -value 1 -PropertyType 'DWord' -Force | Out-Null
New-Item 'HKLM:\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.3\Client' -Force | Out-Null
New-ItemProperty -path 'HKLM:\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.3\Client' -name 'Enabled' -value '0' -PropertyType 'DWord' -Force | Out-Null
New-ItemProperty -path 'HKLM:\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.3\Client' -name 'DisabledByDefault' -value 1 -PropertyType 'DWord' -Force | Out-Null
#Write-Host 'TLS 1.3 has been disabled.'

# default packet manager is chocolate
Install-PackageProvider chocolatey -Confirm
Set-PackageSource -Name chocolatey -Trusted

# install firefox
Install-Package -Name Firefox -ProviderName Chocolatey -Confirm

# install git client
Install-Package -Name git -ProviderName Chocolatey -Confirm

# install vscodium
Install-Package -Name vscodium -ProviderName Chocolatey -Confirm

# install adobe reader 
Install-Package -Name AdobeReader -ProviderName Chocolatey -Confirm