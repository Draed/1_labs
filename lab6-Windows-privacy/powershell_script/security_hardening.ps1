#######################################################################<br>
#Developer : Ottomatic <br>
#Tools : PowerShell 5.1.18362<br>
######################################################################

#requires -version 4.0
#requires -runasadministrator

<#
.SYNOPSIS
    Set more secure parameters for windows
.DESCRIPTION
    Set more secure parameters for windows (i.e : force TLS 1.2 for powershell)
    Requires Admin Access 
.NOTES
    File Name      : security_hardening.ps1
    Author         : @ottomatic
    Prerequisite   : PowerShell V4
#>

# Force PowerShell to use TLS 1.2
# sources https://blog.pauby.com/post/force-powershell-to-use-tls-1-2/
[System.Net.ServicePointManager]::SecurityProtocol = [System.Net.SecurityProtocolType]::Tls12


# set strong cryptography on 64 bit .Net Framework (version 4 and above)
Set-ItemProperty -Path 'HKLM:\SOFTWARE\Wow6432Node\Microsoft\.NetFramework\v4.0.30319' -Name 'SchUseStrongCrypto' -Value '1' -Type DWord

# set strong cryptography on 32 bit .Net Framework (version 4 and above)
Set-ItemProperty -Path 'HKLM:\SOFTWARE\Microsoft\.NetFramework\v4.0.30319' -Name 'SchUseStrongCrypto' -Value '1' -Type DWord 

#force using TLS 1.2 
# sources https://support.microsoft.com/fr-fr/help/3140245/update-to-enable-tls-1-1-and-tls-1-2-as-default-secure-protocols-in-wi

# activation de TLS 1.2 au niveau de SCHANNEL
reg add "HKLM\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.2\Client" /v DisabledByDefault /t REG_DWORD /d 0 /f /reg:32
reg add "HKLM\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.2\Client" /v DisabledByDefault /t REG_DWORD /d 0 /f /reg:64
reg add "HKLM\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.2\Client" /v Enabled /t REG_DWORD /d 1 /f /reg:32
reg add "HKLM\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.2\Client" /v Enabled /t REG_DWORD /d 1 /f /reg:64

# force l utilisation de TLS 1.2 pour WinHttp par defaut
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Internet Settings\WinHttp" /v DefaultSecureProtocols /t REG_DWORD /d 0x00000800 /f /reg:32
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Internet Settings\WinHttp" /v DefaultSecureProtocols /t REG_DWORD /d 0x00000800 /f /reg:64

#change .NET Framework default TLS version
# sources https://docs.microsoft.com/en-us/mem/configmgr/core/plan-design/security/enable-tls-1-2-client
reg add HKLM\SOFTWARE\Microsoft\.NETFramework\v4.0.30319 /v SystemDefaultTlsVersions /t REG_DWORD /d 1 /f /reg:64
reg add HKLM\SOFTWARE\Microsoft\.NETFramework\v4.0.30319 /v SystemDefaultTlsVersions /t REG_DWORD /d 1 /f /reg:32

# enable TLS 1.2
# sources https://community.spiceworks.com/topic/1947965-unable-to-enable-the-tls-1-2-from-the-registry
#reg edit "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Internet Settings" /v SecureProtocols  /t REG_DWORD /d 0x00000800 