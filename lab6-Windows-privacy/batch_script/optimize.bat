:::::::::::::::::::::::::::::::::::::
::Developer : Ottomatic 
::Tools : batch
::Description : optimize configuration for windows 10 client
::File Name: optimize.bat
::Author : @ottomatic
::Prerequisite : 
::Link : https://github.com/Draed
:::::::::::::::::::::::::::::::::::::::

:: Disable useless and intrusive tasks

SCHTASKS /Change /TN "\Microsoft\Windows\WS\WSTask" /DISABLE
SCHTASKS /Change /TN "\Microsoft\Windows\Work Folders\Work Folders Maintenance Work" /DISABLE
SCHTASKS /Change /TN "\Microsoft\Windows\Work Folders\Work Folders Logon Synchronization" /DISABLE
SCHTASKS /Change /TN "\Microsoft\Windows\WOF\WIM-Hash-Validation" /DISABLE
SCHTASKS /Change /TN "\Microsoft\Windows\WOF\WIM-Hash-Management" /DISABLE
SCHTASKS /Change /TN "\Microsoft\Windows\WindowsUpdate\sih" /DISABLE
SCHTASKS /Change /TN "\Microsoft\Windows\Windows Filtering Platform\BfeOnServiceStartTypeChange" /DISABLE
SCHTASKS /Change /TN "\Microsoft\Windows\Windows Error Reporting\QueueReporting" /DISABLE
SCHTASKS /Change /TN "\Microsoft\Windows\WDI\ResolutionHost" /DISABLE
SCHTASKS /Change /TN "\Microsoft\Windows\UpdateOrchestrator\Schedule Scan" /DISABLE
SCHTASKS /Change /TN "\Microsoft\Windows\Sysmain\WsSwapAssessmentTask" /DISABLE
SCHTASKS /Change /TN "\Microsoft\Windows\Sysmain\ResPriStaticDbSync" /DISABLE
SCHTASKS /Change /TN "\Microsoft\Windows\SoftwareProtectionPlatform\SvcRestartTaskNetwork" /DISABLE
SCHTASKS /Change /TN "\Microsoft\Windows\SoftwareProtectionPlatform\SvcRestartTaskLogon" /DISABLE
SCHTASKS /Change /TN "\Microsoft\Windows\SoftwareProtectionPlatform\SvcRestartTask" /DISABLE
SCHTASKS /Change /TN "\Microsoft\Windows\Shell\IndexerAutomaticMaintenance" /DISABLE
SCHTASKS /Change /TN "\Microsoft\Windows\SettingSync\NetworkStateChangeTask" /DISABLE
SCHTASKS /Change /TN "\Microsoft\Windows\SettingSync\BackgroundUploadTask" /DISABLE
SCHTASKS /Change /TN "\Microsoft\Windows\RemoteAssistance\RemoteAssistanceTask" /DISABLE
SCHTASKS /Change /TN "\Microsoft\Windows\PI\Sqm-Tasks" /DISABLE
SCHTASKS /Change /TN "\Microsoft\Windows\NetTrace\GatherNetworkInfo" /DISABLE
SCHTASKS /Change /TN "\Microsoft\Windows\Maps\MapsUpdateTask" /DISABLE
SCHTASKS /Change /TN "\Microsoft\Windows\Maps\MapsToastTask" /DISABLE
SCHTASKS /Change /TN "\Microsoft\Windows\Maintenance\WinSAT" /DISABLE
SCHTASKS /Change /TN "\Microsoft\Windows\FileHistory\File History (maintenance mode)" /DISABLE
SCHTASKS /Change /TN "\Microsoft\Windows\File Classification Infrastructure\Property Definition Sync" /DISABLE
SCHTASKS /Change /TN "\Microsoft\Windows\File Classification Infrastructure\Property Definition Sync" /DISABLE
SCHTASKS /Change /TN "\Microsoft\Windows\Feedback\Siuf\DmClientOnScenarioDownload" /DISABLE
SCHTASKS /Change /TN "\Microsoft\Windows\Feedback\Siuf\DmClient" /DISABLE
SCHTASKS /Change /TN "\Microsoft\Windows\DiskDiagnostic\Microsoft-Windows-DiskDiagnosticDataCollector" /DISABLE
SCHTASKS /Change /TN "\Microsoft\Windows\Customer Experience Improvement Program\UsbCeip" /DISABLE
SCHTASKS /Change /TN "\Microsoft\Windows\Customer Experience Improvement Program\KernelCeipTask" /DISABLE
SCHTASKS /Change /TN "\Microsoft\Windows\Customer Experience Improvement Program\Consolidator" /DISABLE
SCHTASKS /Change /TN "\Microsoft\Windows\CloudExperienceHost\CreateObjectTask" /DISABLE
SCHTASKS /Change /TN "\Microsoft\Windows\CertificateServicesClient\UserTask-Roam" /DISABLE
SCHTASKS /Change /TN "\Microsoft\Windows\Autochk\Proxy" /DISABLE
SCHTASKS /Change /TN "\Microsoft\Windows\AppxDeploymentClient\Pre-staged app cleanup" /DISABLE
SCHTASKS /Change /TN "\Microsoft\Windows\Application Experience\StartupAppTask" /DISABLE
SCHTASKS /Change /TN "\Microsoft\Windows\Application Experience\ProgramDataUpdater" /DISABLE
SCHTASKS /Change /TN "\Microsoft\Windows\Application Experience\Microsoft Compatibility Appraiser" /DISABLE
SCHTASKS /Change /TN "\Microsoft\Windows\AppID\SmartScreenSpecific" /DISABLE
SCHTASKS /Change /TN "\Microsoft\Office\OfficeTelemetryAgentLogOn" /DISABLE
SCHTASKS /Change /TN "\Microsoft\Office\OfficeTelemetryAgentFallBack" /DISABLE

:: Disable Remote Assistance

REG ADD "HKLM\System\CurrentControlSet\Control\Remote Assistance" /v "fAllowToGetHelp" /t REG_DWORD /d "0" /f
REG ADD "HKLM\System\CurrentControlSet\Control\Remote Assistance" /v "fAllowFullControl" /t REG_DWORD /d "0" /f
REG ADD "HKLM\Software\Policies\Microsoft\Windows NT\Terminal Services" /v "fDenyTSConnections" /t REG_DWORD /d "1" /f
REG ADD "HKLM\Software\Policies\Microsoft\Windows NT\Terminal Services" /v "fAllowUnsolicitedFullControl" /t REG_DWORD /d "0" /f
REG ADD "HKLM\Software\Policies\Microsoft\Windows NT\Terminal Services" /v "fAllowUnsolicited" /t REG_DWORD /d "0" /f
REG ADD "HKLM\Software\Policies\Microsoft\Windows NT\Terminal Services" /v "fAllowToGetHelp" /t REG_DWORD /d "0" /f

:: Disable sync

@REM REG ADD "HKLM\SOFTWARE\Policies\Microsoft\Windows\SettingSync" /v "DisableWindowsSettingSyncUserOverride" /t REG_DWORD /d 1 /f
@REM REG ADD "HKLM\SOFTWARE\Policies\Microsoft\Windows\SettingSync" /v "DisableWindowsSettingSync" /t REG_DWORD /d 2 /f
@REM REG ADD "HKLM\SOFTWARE\Policies\Microsoft\Windows\SettingSync" /v "DisableWebBrowserSettingSyncUserOverride" /t REG_DWORD /d 1 /f
@REM REG ADD "HKLM\SOFTWARE\Policies\Microsoft\Windows\SettingSync" /v "DisableWebBrowserSettingSync" /t REG_DWORD /d 2 /f
@REM REG ADD "HKLM\SOFTWARE\Policies\Microsoft\Windows\SettingSync" /v "DisableSyncOnPaidNetwork" /t REG_DWORD /d 1 /f
@REM REG ADD "HKLM\SOFTWARE\Policies\Microsoft\Windows\SettingSync" /v "DisableStartLayoutSettingSyncUserOverride" /t REG_DWORD /d 1 /f
@REM REG ADD "HKLM\SOFTWARE\Policies\Microsoft\Windows\SettingSync" /v "DisableStartLayoutSettingSync" /t REG_DWORD /d 2 /f
@REM REG ADD "HKLM\SOFTWARE\Policies\Microsoft\Windows\SettingSync" /v "DisableSettingSyncUserOverride" /t REG_DWORD /d 1 /f
@REM REG ADD "HKLM\SOFTWARE\Policies\Microsoft\Windows\SettingSync" /v "DisableSettingSync" /t REG_DWORD /d 2 /f
@REM REG ADD "HKLM\SOFTWARE\Policies\Microsoft\Windows\SettingSync" /v "DisablePersonalizationSettingSyncUserOverride" /t REG_DWORD /d 1 /f
@REM REG ADD "HKLM\SOFTWARE\Policies\Microsoft\Windows\SettingSync" /v "DisablePersonalizationSettingSync" /t REG_DWORD /d 2 /f
@REM REG ADD "HKLM\SOFTWARE\Policies\Microsoft\Windows\SettingSync" /v "DisableDesktopThemeSettingSyncUserOverride" /t REG_DWORD /d 1 /f
@REM REG ADD "HKLM\SOFTWARE\Policies\Microsoft\Windows\SettingSync" /v "DisableDesktopThemeSettingSync" /t REG_DWORD /d 2 /f
@REM REG ADD "HKLM\SOFTWARE\Policies\Microsoft\Windows\SettingSync" /v "DisableCredentialsSettingSyncUserOverride" /t REG_DWORD /d 1 /f
@REM REG ADD "HKLM\SOFTWARE\Policies\Microsoft\Windows\SettingSync" /v "DisableCredentialsSettingSync" /t REG_DWORD /d 2 /f
@REM REG ADD "HKLM\SOFTWARE\Policies\Microsoft\Windows\SettingSync" /v "DisableAppSyncSettingSyncUserOverride" /t REG_DWORD /d 1 /f
@REM REG ADD "HKLM\SOFTWARE\Policies\Microsoft\Windows\SettingSync" /v "DisableAppSyncSettingSync" /t REG_DWORD /d 2 /f
@REM REG ADD "HKLM\SOFTWARE\Policies\Microsoft\Windows\SettingSync" /v "DisableApplicationSettingSyncUserOverride" /t REG_DWORD /d 1 /f
@REM REG ADD "HKLM\SOFTWARE\Policies\Microsoft\Windows\SettingSync" /v "DisableApplicationSettingSync" /t REG_DWORD /d 2 /f

:: No Web/Bing Search

REG ADD "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /v "DisableWebSearch" /t REG_DWORD /d 1 /f
REG ADD "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /v "ConnectedSearchUseWebOverMeteredConnections" /t REG_DWORD /d 0 /f
REG ADD "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /v "ConnectedSearchUseWeb" /t REG_DWORD /d 0 /f
REG ADD "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /v "ConnectedSearchSafeSearch" /t REG_DWORD /d 3 /f
REG ADD "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /v "ConnectedSearchPrivacy" /t REG_DWORD /d 3 /f
REG ADD "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /v "AllowSearchToUseLocation" /t REG_DWORD /d 0 /f
REG ADD "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Search" /v "BingSearchEnabled" /t REG_DWORD /d 0 /f

:: Disable Policies

@REM REG Delete "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\AdvertisingInfo" /v "Id" /f
@REM REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Power" /v "HiberbootEnabled" /t REG_DWORD /d 0 /f
@REM REG ADD "HKLM\SOFTWARE\Policies\Microsoft\WMDRM" /v "DisableOnline" /t REG_DWORD /d 1 /
@REM REG ADD "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Error Reporting" /v "DontSendAdditionalData" /t REG_DWORD /d 1 /f
@REM REG ADD "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Error Reporting" /v "Disabled" /t REG_DWORD /d 1 /f
@REM REG ADD "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Error Reporting" /v "Disabled" /t REG_DWORD /d 1 /f
@REM REG ADD "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Error Reporting" /v "AutoApproveOSDumps" /t REG_DWORD /d 0 /f
@REM REG ADD "HKLM\SOFTWARE\Policies\Microsoft\Windows\System" /v "EnableSmartScreen" /t REG_DWORD /d 0 /f
@REM REG ADD "HKLM\SOFTWARE\Policies\Microsoft\Windows\System" /v "DisableHHDEP" /t REG_DWORD /d 0 /f
@REM REG ADD "HKLM\SOFTWARE\Policies\Microsoft\Windows\CurrentVersion\Explorer\AutoComplete" /v "AutoSuggest" /t REG_SZ /d "no" /f
@REM REG ADD "HKLM\SOFTWARE\Policies\Microsoft\Windows\CloudContent" /v "DisableWindowsConsumerFeatures" /t REG_DWORD /d 1 /f
@REM REG ADD "HKLM\SOFTWARE\Policies\Microsoft\Windows\CloudContent" /v "DisableSoftLanding" /t REG_DWORD /d 1 /f
@REM REG ADD "HKLM\SOFTWARE\Policies\Microsoft\Windows\AdvertisingInfo" /v "DisabledByGroupPolicy" /t REG_DWORD /d 1 /f
@REM REG ADD "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Real-Time Protection" /v "DisableBehaviorMonitoring" /t REG_DWORD /d 1 /f
@REM REG ADD "HKLM\SOFTWARE\Policies\Microsoft\SearchCompanion" /v "DisableContentFileUpdates" /t REG_DWORD /d 1 /f
@REM REG ADD "HKLM\SOFTWARE\Policies\Microsoft\PCHealth\ErrorReporting\DW" /v "DWNoSecondLevelCollection" /t REG_DWORD /d 1 /f
@REM REG ADD "HKLM\SOFTWARE\Policies\Microsoft\PCHealth\ErrorReporting\DW" /v "DWNoFileCollection" /t REG_DWORD /d 1 /f
@REM REG ADD "HKLM\SOFTWARE\Policies\Microsoft\PCHealth\ErrorReporting\DW" /v "DWNoExternalURL" /t REG_DWORD /d 1 /f
@REM REG ADD "HKLM\SOFTWARE\Policies\Microsoft\Assistance\Client\1.0" /v "NoActiveHelp" /t REG_DWORD /d 1 /f
@REM REG ADD "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AdvertisingInfo" /v "Enabled" /t REG_DWORD /d 0 /f
@REM REG ADD "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Search" /v "BingSearchEnabled" /t REG_DWORD /d 0 /f
@REM REG ADD "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\AdvertisingInfo" /v "Enabled" /t REG_DWORD /d 0 /f
@REM REG ADD "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\AdvertisingInfo" /v "Enabled" /t REG_DWORD /d 0 /f
@REM REG ADD "HKCU\SOFTWARE\Microsoft\Personalization\Settings" /v "AcceptedPrivacyPolicy" /t REG_DWORD /d 0 /f
@REM REG ADD "HKCU\SOFTWARE\Microsoft\InputPersonalization\TrainedDataStore" /v "HarvestContacts" /t REG_DWORD /d 0 /f
@REM REG ADD "HKCU\SOFTWARE\Microsoft\InputPersonalization" /v "RestrictImplicitTextCollection" /t REG_DWORD /d 1 /f
@REM REG ADD "HKCU\SOFTWARE\Microsoft\InputPersonalization" /v "RestrictImplicitInkCollection" /t REG_DWORD /d 1 /f
@REM REG ADD "HKCU\Control Panel\International\User Profile" /v "HttpAcceptLanguageOptOut" /t REG_DWORD /d 1 /f

:: Disable pre-release features or settings

REG ADD "HKLM\SOFTWARE\Policies\Microsoft\Windows\PreviewBuilds" /v "AllowBuildPreview" /t REG_DWORD /d 0 /f
REG ADD "HKLM\SOFTWARE\Policies\Microsoft\Windows\PreviewBuilds" /v "EnableConfigFlighting" /t REG_DWORD /d 0 /f
REG ADD "HKLM\SOFTWARE\Policies\Microsoft\Windows\PreviewBuilds" /v "EnableExperimentation" /t REG_DWORD /d 0 /f

:: Disable services

SC config "CscService" start= disabled
SC config "MapsBroker" start= disabled
SC config "CertPropSvc" start= disabled
SC config "wscsvc" start= demand
SC config "SystemEventsBroker" start= demand
SC config "tiledatamodelsvc" start= demand
SC config "WerSvc" start= demand

:: Delete services

PowerShell -Command "Get-Service DiagTrack | Set-Service -StartupType Disabled"
PowerShell -Command "Get-Service dmwappushservice | Set-Service -StartupType Disabled"
PowerShell -Command "Get-Service diagnosticshub.standardcollector.service | Set-Service -StartupType Disabled"
PowerShell -Command "Get-Service DPS | Set-Service -StartupType Disabled"
@REM PowerShell -Command "Get-Service RemoteRegistry | Set-Service -StartupType Disabled"
PowerShell -Command "Get-Service TrkWks | Set-Service -StartupType Disabled"
PowerShell -Command "Get-Service WMPNetworkSvc | Set-Service -StartupType Disabled"
@REM PowerShell -Command "Get-Service WSearch | Set-Service -StartupType Disabled"
@REM PowerShell -Command "Get-Service SysMain | Set-Service -StartupType Disabled"
SC config "DiagTrack" start= disabled
SC config "dmwappushservice" start= disabled
SC config "diagnosticshub.standardcollector.service" start= disabled
SC config "DPS " start= disabled
@REM SC config "RemoteRegistry" start= disabled
SC config "TrkWks" start= disabled
SC config "WMPNetworkSvc" start= disabled
@REM SC config "WSearch" start= disabled
@REM SC config "SysMain" start= disabled
NET STOP DiagTrack
NET STOP diagnosticshub.standardcollector.service
NET STOP dmwappushservice
NET STOP DPS
@REM NET STOP RemoteRegistry
NET STOP TrkWks
NET STOP WMPNetworkSvc
@REM NET STOP WSearch
@REM NET STOP SysMain
SC delete DiagTrack
SC delete "diagnosticshub.standardcollector.service"
SC delete "dmwappushservice"
SC delete "DPS"
@REM SC delete "RemoteRegistry"
SC delete "TrkWks"
SC delete "WMPNetworkSvc"
@REM SC delete "WSearch"
@REM SC delete "SysMain"

:: Remove Retail Demo

REG Delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FolderDescriptions\{12D4C69E-24AD-4923-BE19-31321C43A767}" /f
takeown /f %ProgramData%\Microsoft\Windows\RetailDemo /r /d y
icacls %ProgramData%\Microsoft\Windows\RetailDemo /grant Administrators:F /T
rd /s /q %ProgramData%\Microsoft\Windows\RetailDemo
takeown /f "C:\Windows\SystemApps\Microsoft.Windows.CloudExperienceHost_cw5n1h2txyewy\RetailDemo" /r /d y
icacls "C:\Windows\SystemApps\Microsoft.Windows.CloudExperienceHost_cw5n1h2txyewy\RetailDemo" /grant Administrators:F /T
rd /s /q "C:\Windows\SystemApps\Microsoft.Windows.CloudExperienceHost_cw5n1h2txyewy\RetailDemo" 

:: Delete OneDrive

@REM REG ADD "HKLM\SOFTWARE\Policies\Microsoft\Windows\OneDrive" /v DisableFileSyncNGSC /t REG_DWORD /d 1 /f
@REM TASKKILL /f /im OneDrive.exe
@REM %SystemRoot%\System32\OneDriveSetup.exe /uninstall
@REM %SystemRoot%\SysWOW64\OneDriveSetup.exe /uninstall
@REM rd "%UserProfile%\OneDrive" /Q /S
@REM rd "%LocalAppData%\Microsoft\OneDrive" /Q /S
@REM rd "%ProgramData%\Microsoft OneDrive" /Q /S
@REM rd "C:\OneDriveTemp" /Q /S
@REM REG Delete "HKEY_CLASSES_ROOT\CLSID\{018D5C66-4533-4307-9B53-224DE2ED1FE6}" /f
@REM REG Delete "HKEY_CLASSES_ROOT\Wow6432Node\CLSID\{018D5C66-4533-4307-9B53-224DE2ED1FE6}" /f
@REM REG Delete "HKCU\SOFTWARE\Classes\CLSID\{018D5C66-4533-4307-9B53-224DE2ED1FE6}" /f /reg:32
@REM REG Delete "HKCU\SOFTWARE\Classes\CLSID\{018D5C66-4533-4307-9B53-224DE2ED1FE6}" /f /reg:64
@REM REG Delete "HKLM\SOFTWARE\Classes\CLSID\{018D5C66-4533-4307-9B53-224DE2ED1FE6}" /f /reg:32
@REM REG Delete "HKLM\SOFTWARE\Classes\CLSID\{018D5C66-4533-4307-9B53-224DE2ED1FE6}" /f /reg:64
@REM REG Delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FolderDescriptions\{A52BBA46-E9E1-435f-B3D9-28DAA648C0F6}" /f
@REM REG Delete "HKLM\SOFTWARE\Policies\Microsoft\Windows\OneDrive" /v "DisableFileSyncNGSC" /f
@REM REG Delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FolderDescriptions\{339719B5-8C47-4894-94C2-D8F77ADD44A6}" /f
@REM REG Delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FolderDescriptions\{767E6811-49CB-4273-87C2-20F355E1085B}" /f
@REM REG Delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FolderDescriptions\{C3F2459E-80D6-45DC-BFEF-1F769F2BE730}" /f
@REM REG Delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FolderDescriptions\{24D89E24-2F19-4534-9DDE-6A6671FBB8FE}" /f

:: Disables unwanted Windows features

PowerShell -Command Disable-WindowsOptionalFeature -Online -NoRestart -FeatureName "Internet-Explorer-Optional-amd64"
PowerShell -Command Disable-WindowsOptionalFeature -Online -NoRestart -FeatureName "MediaPlayback"
PowerShell -Command Disable-WindowsOptionalFeature -Online -NoRestart -FeatureName "WindowsMediaPlayer"
PowerShell -Command Disable-WindowsOptionalFeature -Online -NoRestart -FeatureName "WorkFolders-Client"

:: Delete other Apps

PowerShell -Command "Get-AppxProvisionedPackage -Online | Where-Object DisplayName -eq Microsoft.3DBuilder | Remove-AppxProvisionedPackage -Online"
PowerShell -Command "Get-AppxProvisionedPackage -Online | Where-Object DisplayName -eq Microsoft.BingFinance | Remove-AppxProvisionedPackage -Online"
PowerShell -Command "Get-AppxProvisionedPackage -Online | Where-Object DisplayName -eq Microsoft.BingNews | Remove-AppxProvisionedPackage -Online"
PowerShell -Command "Get-AppxProvisionedPackage -Online | Where-Object DisplayName -eq Microsoft.Getstarted | Remove-AppxProvisionedPackage -Online"
PowerShell -Command "Get-AppxProvisionedPackage -Online | Where-Object DisplayName -eq Microsoft.MicrosoftOfficeHub | Remove-AppxProvisionedPackage -Online"
PowerShell -Command "Get-AppxProvisionedPackage -Online | Where-Object DisplayName -eq Microsoft.MicrosoftSolitaireCollection | Remove-AppxProvisionedPackage -Online"
PowerShell -Command "Get-AppxProvisionedPackage -Online | Where-Object DisplayName -eq Microsoft.Office.OneNote | Remove-AppxProvisionedPackage -Online"
PowerShell -Command "Get-AppxProvisionedPackage -Online | Where-Object DisplayName -eq Microsoft.SkypeApp | Remove-AppxProvisionedPackage -Online"
PowerShell -Command "Get-AppxProvisionedPackage -Online | Where-Object DisplayName -eq Microsoft.WindowsPhone | Remove-AppxProvisionedPackage -Online"
PowerShell -Command "Get-AppxProvisionedPackage -Online | Where-Object DisplayName -eq Microsoft.XboxApp | Remove-AppxProvisionedPackage -Online"
PowerShell -Command "Get-AppxProvisionedPackage -Online | Where-Object DisplayName -eq Microsoft.ZuneMusic | Remove-AppxProvisionedPackage -Online"
PowerShell -Command "Get-AppxProvisionedPackage -Online | Where-Object DisplayName -eq Microsoft.ZuneVideo | Remove-AppxProvisionedPackage -Online"
PowerShell -Command "Get-AppxPackage *Microsoft* | Remove-AppxPackage"
PowerShell -Command "Get-AppXProvisionedPackage -online | Remove-AppxProvisionedPackage -online"
PowerShell -Command "Get-AppXPackage | Remove-AppxPackage"
PowerShell -Command "Get-AppXPackage -User  | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage -AllUsers | Remove-AppxPackage"

:: Remove 3D Objects

REG Delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FolderDescriptions\{31C0DD25-9439-4F12-BF41-7FF4EDA38722}" /f
REG ADD "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\{0DB7E03F-FC29-4DC6-9020-FF41B59E513A}" /f
REG Delete "HKLM\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\{0DB7E03F-FC29-4DC6-9020-FF41B59E513A}" /

:: Remove CameraRollLibrary

REG Delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FolderDescriptions\{2B20DF75-1EDA-4039-8097-38798227D5B7}" /f

:: Disable Test mode

bcdedit /set TESTSIGNING OFF

:: Show Computer shortcut on desktop

REG ADD "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\NewStartPanel" /v "{20D04FE0-3AEA-1069-A2D8-08002B30309D}" /t REG_DWORD /d 0 /f

:: SET Windows Explorer to start on This PC instead of Quick Access

REG ADD "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "LaunchTo" /t REG_DWORD /d 1 /f

:: Hide the search box from taskbar

@REM REG ADD "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Search" /v "SearchboxTaskbarMode" /t REG_DWORD /d 0 /f
@REM REG ADD "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Search" /v "BingSearchEnabled" /t REG_DWORD /d 0 /f

:: Disable MRU lists (jump lists) of XAML apps in Start Menu

REG ADD "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "Start_TrackDocs" /t REG_DWORD /d 0 /f

:: Show file extensions

@REM REG ADD "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "HideFileExt" /t REG_DWORD /d 0 /f

:: Show hidden extension

@REM REG ADD "HKCR\lnkfile" /v "NeverShowExt" /f
@REM REG ADD "HKCR\IE.AssocFile.URL" /v "NeverShowExt" /f
@REM REG ADD "HKCR\IE.AssocFile.WEBSITE" /v "NeverShowExt" /f
@REM REG ADD "HKCR\InternetShortcut" /v "NeverShowExt" /f
@REM REG ADD "HKCR\Microsoft.Website" /v "NeverShowExt" /f
@REM REG ADD "HKCR\piffile" /v "NeverShowExt" /f
@REM REG ADD "HKCR\SHCmdFile" /v "NeverShowExt" /f
@REM REG ADD "HKCR\LibraryFolder" /v "NeverShowExt" /f

:: Turn OFF Sticky Keys when SHIFT is pressed 5 times

REG ADD "HKCU\Control Panel\Accessibility\StickyKeys" /v "Flags" /t REG_SZ /d "506" /f

:: Turn OFF Filter Keys when SHIFT is pressed for 8 seconds

REG ADD "HKCU\Control Panel\Accessibility\Keyboard Response" /v "Flags" /t REG_SZ /d "122" /f

:: Windows Update - only directly from Microsoft

REG ADD "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\DeliveryOptimization\Config" /v "DODownloadMode" /t REG_DWORD /d 0 /f
REG ADD "HKLM\SOFTWARE\Policies\Microsoft\Windows\DeliveryOptimization" /v "DODownloadMode" /t REG_DWORD /d 0 /f

:: Windows Update

@REM NET STOP wuauserv
@REM SCHTASKS /Change /TN "\Microsoft\Windows\WindowsUpdate\Automatic App Update" /DISABLE
@REM REG ADD "HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU" /v "AutoInstallMinorUpdates" /t REG_DWORD /d 0 /f
@REM REG ADD "HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU" /v "AUOptions" /t REG_DWORD /d %AutoUpdateN% /f
@REM REG ADD "HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU" /v "NoAutoUpdate" /t REG_DWORD /d 0 /f
@REM REG ADD "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\WindowsUpdate\Auto Update" /v "AUOptions" /t REG_DWORD /d %AutoUpdateN% /f
@REM NET START wuauserv

:: Disable Reboot after Windows Updates are installed

@REM SCHTASKS /Change /TN "Microsoft\Windows\UpdateOrchestrator\Reboot" /Disable
@REM ren "%WinDir%\System32\Tasks\Microsoft\Windows\UpdateOrchestrator\Reboot" "Reboot.bak"
@REM md "%WinDir%\System32\Tasks\Microsoft\Windows\UpdateOrchestrator\Reboot"
@REM SCHTASKS /Change /TN "Microsoft\Windows\UpdateOrchestrator\Reboot" /Disable

::Disable shares your WiFi network login

@REM REG ADD "HKLM\SOFTWARE\Microsoft\PolicyManager\default\WiFi\AllowAutoConnectToWiFiSenseHotspots" /v "value" /t REG_DWORD /d 0 /f
@REM REG ADD "HKLM\SOFTWARE\Microsoft\PolicyManager\default\WiFi\AllowWiFiHotSpotReporting" /v "value" /t REG_DWORD /d 0 /f

::Prevent from creating LNK files in the Recents folder

@REM REG ADD "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "NoRecentDocsHistory" /t REG_DWORD /d 1 /f

::Remove the Previous Versions tab in file Properties

REG ADD "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer" /v NoPreviousVersionsPage /t REG_DWORD /d 1 /f

::Disable Notification Center Completely in Windows 10.reg

REG ADD "HKLM\SOFTWARE\Wow6432Node\Policies\Microsoft\Windows Defender" /v "DisableAntiSpyware" /t REG_DWORD /d 1 /f
REG ADD "HKLM\SOFTWARE\Wow6432Node\Policies\Microsoft\Windows Defender" /v "DisableRoutinelyTakingAction" /t REG_DWORD /d 1 /f
REG ADD "HKLM\SOFTWARE\Wow6432Node\Policies\Microsoft\Windows Defender\Policy Manager" /f
REG ADD "HKLM\SOFTWARE\Wow6432Node\Policies\Microsoft\Windows Defender\Real-Time Protection" /v "DisableRealtimeMonitoring" /t REG_DWORD /d 1 /f
REG ADD "HKCU\SOFTWARE\Policies\Microsoft\Windows\Explorer" /v "DisableNotificationCenter" /t REG_DWORD /d 1 /f

:: Disabling Windows 10 Experiments 
REG ADD  "HKLM\SOFTWARE\Microsoft\PolicyManager\current\device\System" /v AllowExperimentation /t REG_WORD /d 0 /f

:: remove app

powershell -command " get-appxpackage -allusers 'Microsoft.BingFinance' | remove-appxpackage "
powershell -command " get-appxpackage -allusers 'Microsoft.BingFoodAndDrink' | remove-appxpackage "
powershell -command " get-appxpackage -allusers 'Microsoft.BingHealthAndFitness' | remove-appxpackage "
powershell -command " get-appxpackage -allusers 'Microsoft.BingMaps' | remove-appxpackage 
powershell -command " get-appxpackage -allusers 'Microsoft.BingNews' | remove-appxpackage "
powershell -command " get-appxpackage -allusers 'Microsoft.BingSports' | remove-appxpackage "
powershell -command " get-appxpackage -allusers 'Microsoft.BingTranslator' | remove-appxpackage "
powershell -command " get-appxpackage -allusers 'Microsoft.BingTravel' | remove-appxpackage "
powershell -command " get-appxpackage -allusers 'Microsoft.ConnectivityStore' | remove-appxpackage "
powershell -command " get-appxpackage -allusers 'Microsoft.DiagnosticDataViewer' | remove-appxpackage "
powershell -command " get-appxpackage -allusers 'Microsoft.GetHelp' | remove-appxpackage "
powershell -command " get-appxpackage -allusers 'Microsoft.Getstarted' | remove-appxpackage "
powershell -command " get-appxpackage -allusers 'Microsoft.HelpAndTips' | remove-appxpackage "
powershell -command " get-appxpackage -allusers 'Microsoft.Messaging' | remove-appxpackage "
powershell -command " get-appxpackage -allusers 'Microsoft.MicrosoftJackpot' | remove-appxpackage "
powershell -command " get-appxpackage -allusers 'Microsoft.MicrosoftJigsaw' | remove-appxpackage "
powershell -command " get-appxpackage -allusers 'Microsoft.MicrosoftMahjong' | remove-appxpackage "
powershell -command " get-appxpackage -allusers 'Microsoft.MicrosoftOfficeHub' | remove-appxpackage "
powershell -command " get-appxpackage -allusers 'Microsoft.MicrosoftPowerBIForWindows' | remove-appxpackage "
powershell -command " get-appxpackage -allusers 'Microsoft.MicrosoftSudoku' | remove-appxpackage "
powershell -command " get-appxpackage -allusers 'Microsoft.MovieMoments' | remove-appxpackage "
powershell -command " get-appxpackage -allusers 'Microsoft.NetworkSpeedTest' | remove-appxpackage "
powershell -command " get-appxpackage -allusers 'Microsoft.OneConnect' | remove-appxpackage "
powershell -command " get-appxpackage -allusers 'Microsoft.People' | remove-appxpackage "
powershell -command " get-appxpackage -allusers 'Microsoft.SkypeApp' | remove-appxpackage "
powershell -command " get-appxpackage -allusers 'Microsoft.SkypeWiFi' | remove-appxpackage "
powershell -command " get-appxpackage -allusers 'Microsoft.WindowsFeedbackHub' | remove-appxpackage 
powershell -command " get-appxpackage -allusers 'Microsoft.WindowsReadingList' | remove-appxpackage "
powershell -command " get-appxpackage -allusers 'Microsoft.WorldNationalParks' | remove-appxpackage "
powershell -command " get-appxpackage -allusers 'Windows.ContactSupport' | remove-appxpackage "
powershell -command " get-appxpackage -allusers 'Microsoft.Studios.Wordament' | remove-appxpackage "