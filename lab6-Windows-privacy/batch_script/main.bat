:::::::::::::::::::::::::::::::::::::
::Developer : Ottomatic 
::Tools : batch
::Description : main script for windows client configuration
::File Name: main.bat
::Author : @ottomatic
::Prerequisite : 
::Link : https://github.com/Draed
:::::::::::::::::::::::::::::::::::::::


@ECHO OFF

:: var configuration
CALL variables.bat

:: configuration
CALL users.bat

:: Registry backup COPY to C:/RegBackup/Backup.reg 

SETLOCAL
SET RegBackup=%SYSTEMDRIVE%\RegBackup
IF NOT EXIST "%RegBackup%" md "%RegBackup%"
IF EXIST "%RegBackup%\HKLM.reg" DEL "%RegBackup%\HKLM.reg"
REG export HKLM "%RegBackup%\HKLM.reg"
IF EXIST "%RegBackup%\HKCU.reg" DEL "%RegBackup%\HKCU.reg"
REG export HKCU "%RegBackup%\HKCU.reg"
IF EXIST "%RegBackup%\HKCR.reg" DEL "%RegBackup%\HKCR.reg"
REG export HKCR "%RegBackup%\HKCR.reg"
IF EXIST "%RegBackup%\HKU.reg" DEL "%RegBackup%\HKU.reg"
REG export HKU "%RegBackup%\HKU.reg"
IF EXIST "%RegBackup%\HKCC.reg" DEL "%RegBackup%\HKCC.reg"
REG export HKCC "%RegBackup%\HKCC.reg"
IF EXIST "%RegBackup%\Backup.reg" DEL "%RegBackup%\Backup.reg"
COPY "%RegBackup%\HKLM.reg"+"%RegBackup%\HKCU.reg"+"%RegBackup%\HKCR.reg"+"%RegBackup%\HKU.reg"+"%RegBackup%\HKCC.reg" "%RegBackup%\Backup.reg"
DEL "%RegBackup%\HKLM.reg"
DEL "%RegBackup%\HKCU.reg"
DEL "%RegBackup%\HKCR.reg"
DEL "%RegBackup%\HKU.reg"
DEL "%RegBackup%\HKCC.reg"

:: Rename Computer

REG ADD HKLM\SYSTEM\CurrentControlSet\Control\ComputerName\ComputerName /v ComputerName /t REG_SZ /d %MyComputerName% /f
REG ADD HKLM\SYSTEM\CurrentControlSet\Control\ComputerName\ActiveComputerName\ /v ComputerName /t REG_SZ /d %MyComputerName% /f
REG ADD HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\ /v Hostname /t REG_SZ /d %MyComputerName% /f
REG ADD HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\ /v "NV Hostname" /t REG_SZ /d %MyComputerName% /f

:: Change Clock and Date formats 24H, metric (Sign out required to see changes)

REG ADD "HKCU\Control Panel\International" /v "iMeasure" /t REG_SZ /d "0" /f
REG ADD "HKCU\Control Panel\International" /v "iNegCurr" /t REG_SZ /d "1" /f
REG ADD "HKCU\Control Panel\International" /v "iTime" /t REG_SZ /d "1" /f
REG ADD "HKCU\Control Panel\International" /v "sShortDate" /t REG_SZ /d "dd.MM.yyyy" /f
REG ADD "HKCU\Control Panel\International" /v "sShortTime" /t REG_SZ /d "HH:mm" /f
REG ADD "HKCU\Control Panel\International" /v "sTimeFormat" /t REG_SZ /d "H:mm:ss" /f

:: security_hardening
powershell.exe -ExecutionPolicy Unrestricted -Command ". '..\powershell_script\security_hardening.ps1'"

:: install packet 
powershell.exe -ExecutionPolicy Unrestricted -Command ". '..\powershell_script\packet_install.ps1'"

:: disable telemetry
powershell.exe -ExecutionPolicy Unrestricted -Command ". '..\powershell_script\disable_telemetry.ps1'"

:: disable telemetry with firewall rules
Powershell.exe -Executionpolicy remotesigned -File "../powershell_script/firewall_telemetry.ps1"

:: Block hosts, add firewall rules. 
CALL firewall.bat

:: optimize
CALL optimize.bat

:: privacy
CALL privacy.bat

:: configuration
CALL config.bat

:: clean
CALL clean.bat

:: restart at the end
SHUTDOWN -r -t 00