:::::::::::::::::::::::::::::::::::::
::Developer : Ottomatic 
::Tools : batch
::Description : configure variables
::File Name: variables.bat
::Author : @ottomatic
::Prerequisite : 
::Link : https://github.com/Draed
:::::::::::::::::::::::::::::::::::::::


@ECHO OFF

:: 1-Disable autoupdate,2-ask for download and install, 3-ask for reboot, 4-automatic update
SETX AutoUpdateN 2

:: add config path
SETX CONFIGATH %HOMEPATH%\CONFIG

:: if system on SSD drive - set 0, HDD - 3
SETX Prefetch 3

:: Computer name
SETX MyComputerName OTTOMATIC-WINDOWS-PC

:: Unused IP adress 
SETX NOURL 127.0.0.0