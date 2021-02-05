#######################################################################<br>
#Developer : Ottomatic <br>
#Tools : PowerShell 5.1.18362<br>
######################################################################

#requires -version 4.0
#requires -runasadministrator

<#
.SYNOPSIS
    Disable Telemetry with firewall rules in Windows 10
.DESCRIPTION
    Disable Telemetry with firewall rules in Windows 10
    Requires Admin Access 
.NOTES
    File Name      : firewall_telemetry.ps1
    Author         : @kaosagnt 
    Prerequisite   : PowerShell V4
.LINK
    Script posted on github:
    https://github.com/kaosagnt/pf-telemetry-macosx/blob/master/install-win-firewall-block-telemetry.ps1
#>


$telemetry_file="../../firewall/pf.anchors.org.ianm.pf/telemetry-ipaddresses"
$telemetry_name="Block Telemetry IP Addresses"

If( Test-Path -Path $telemetry_file ) {

	$ip_addresses = Get-Content -Path $telemetry_file  |
		Where-Object { $_ -match '^\d'}

	# Debug
	#foreach ($ip_address in $ip_addresses) { Write-Host "IP Address = $ip_address" }
	#Write-Host ""

	# Add to firewall.
	#Write-Host "Adding Telemetry IP Addresses to Windoze Firewall."

	#Set-NetFirewallProfile -All -Enabled true

	Remove-NetFirewallRule -DisplayName "$telemetry_name" -ErrorAction SilentlyContinue

	New-NetFirewallRule -DisplayName "$telemetry_name" -Direction Outbound -Enabled True `
		-Action Block -RemoteAddress ([string[]]$ip_addresses)
	
	try {
		Get-NetFirewallRule -DisplayName "$telemetry_name" -ErrorAction Stop
		#Write-Host "Status: Enabled"

	} catch [Exception] {

		write-host $_.Exception.message
	}
} else {

    Write-Host "Unable to find telemetry file: $telemetry_file"
}

#Write-Host ""
#Write-Host "Press Enter to exit."
#Read-Host