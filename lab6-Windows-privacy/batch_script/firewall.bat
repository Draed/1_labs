:::::::::::::::::::::::::::::::::::::
::Developer : Ottomatic 
::Tools : bash/shell
::Description : firewall configuration for windows 10 client
::File Name: firewall.bat
::Author : @ottomatic
::Prerequisite : 
::Link : https://github.com/Draed
:::::::::::::::::::::::::::::::::::::::

:: Block hosts

COPY "%WINDIR%\system32\drivers\etc\hosts" "%WINDIR%\system32\drivers\etc\hosts.backup.txt"
ATTRIB -r "%WINDIR%\system32\drivers\etc\hosts"
SET HOSTS=%WINDIR%\System32\drivers\etc\hosts
FIND /C /I "www.msn.com" %HOSTS%
IF %ERRORLEVEL% NEQ 0 ECHO ^%NOURL% www.msn.com>>%HOSTS%
FIND /C /I "www.msftncsi.com" %HOSTS%
IF %ERRORLEVEL% NEQ 0 ECHO ^%NOURL% www.msftncsi.com>>%HOSTS%
FIND /C /I "www.msdn.com" %HOSTS%
IF %ERRORLEVEL% NEQ 0 ECHO ^%NOURL% www.msdn.com>>%HOSTS%
FIND /C /I "www.microsoft.com" %HOSTS%
IF %ERRORLEVEL% NEQ 0 ECHO ^%NOURL% www.microsoft.com>>%HOSTS%
FIND /C /I "www.bing.com" %HOSTS%
IF %ERRORLEVEL% NEQ 0 ECHO ^%NOURL% www.bing.com>>%HOSTS%
FIND /C /I "wustats.microsoft.com" %HOSTS%
IF %ERRORLEVEL% NEQ 0 ECHO ^%NOURL% wustats.microsoft.com>>%HOSTS%
FIND /C /I "wns.notify.windows.com.akadns.net" %HOSTS%
IF %ERRORLEVEL% NEQ 0 ECHO ^%NOURL% wns.notify.windows.com.akadns.net>>%HOSTS%
FIND /C /I "windowsupdate.microsoft.com" %HOSTS%
IF %ERRORLEVEL% NEQ 0 ECHO ^%NOURL% windowsupdate.microsoft.com>>%HOSTS%
FIND /C /I "windowsupdate.com" %HOSTS%
IF %ERRORLEVEL% NEQ 0 ECHO ^%NOURL% windowsupdate.com>>%HOSTS%
FIND /C /I "win10.ipv6.microsoft.com.nsatc.net" %HOSTS%
IF %ERRORLEVEL% NEQ 0 ECHO ^%NOURL% win10.ipv6.microsoft.com.nsatc.net>>%HOSTS%
FIND /C /I "win10.ipv6.microsoft.com" %HOSTS%
IF %ERRORLEVEL% NEQ 0 ECHO ^%NOURL% win10.ipv6.microsoft.com>>%HOSTS%
FIND /C /I "wildcard.appex-rf.msn.com.edgesuite.net" %HOSTS%
IF %ERRORLEVEL% NEQ 0 ECHO ^%NOURL% wildcard.appex-rf.msn.com.edgesuite.net>>%HOSTS%
FIND /C /I "wes.df.telemetry.microsoft.com" %HOSTS%
IF %ERRORLEVEL% NEQ 0 ECHO ^%NOURL% wes.df.telemetry.microsoft.com>>%HOSTS%
FIND /C /I "watson.telemetry.microsoft.com.nsatc.net" %HOSTS%
IF %ERRORLEVEL% NEQ 0 ECHO ^%NOURL% watson.telemetry.microsoft.com.nsatc.net>>%HOSTS%
FIND /C /I "watson.telemetry.microsoft.com" %HOSTS%
IF %ERRORLEVEL% NEQ 0 ECHO ^%NOURL% watson.telemetry.microsoft.com>>%HOSTS%
FIND /C /I "watson.ppe.telemetry.microsoft.com" %HOSTS%
IF %ERRORLEVEL% NEQ 0 ECHO ^%NOURL% watson.ppe.telemetry.microsoft.com>>%HOSTS%
FIND /C /I "watson.microsoft.com" %HOSTS%
IF %ERRORLEVEL% NEQ 0 ECHO ^%NOURL% watson.microsoft.com>>%HOSTS%
FIND /C /I "watson.live.com" %HOSTS%
IF %ERRORLEVEL% NEQ 0 ECHO ^%NOURL% watson.live.com>>%HOSTS%
FIND /C /I "vortex.data.microsoft.com" %HOSTS%
IF %ERRORLEVEL% NEQ 0 ECHO ^%NOURL% vortex.data.microsoft.com>>%HOSTS%
FIND /C /I "vortex-win.data.microsoft.com" %HOSTS%
IF %ERRORLEVEL% NEQ 0 ECHO ^%NOURL% vortex-win.data.microsoft.com>>%HOSTS%
FIND /C /I "vortex-sandbox.data.microsoft.com" %HOSTS%
IF %ERRORLEVEL% NEQ 0 ECHO ^%NOURL% vortex-sandbox.data.microsoft.com>>%HOSTS%
FIND /C /I "vortex-cy2.metron.live.com.nsatc.net" %HOSTS%
IF %ERRORLEVEL% NEQ 0 ECHO ^%NOURL% vortex-cy2.metron.live.com.nsatc.net>>%HOSTS%
FIND /C /I "vortex-bn2.metron.live.com.nsatc.net" %HOSTS%
IF %ERRORLEVEL% NEQ 0 ECHO ^%NOURL% vortex-bn2.metron.live.com.nsatc.net>>%HOSTS%
FIND /C /I "view.atdmt.com" %HOSTS%
IF %ERRORLEVEL% NEQ 0 ECHO ^%NOURL% view.atdmt.com>>%HOSTS%
FIND /C /I "v10.vortex-win.data.microsoft.com" %HOSTS%
IF %ERRORLEVEL% NEQ 0 ECHO ^%NOURL% v10.vortex-win.data.microsoft.com>>%HOSTS%
FIND /C /I "v10.vortex-win.data.metron.life.com.nsatc.net" %HOSTS%
IF %ERRORLEVEL% NEQ 0 ECHO ^%NOURL% v10.vortex-win.data.metron.life.com.nsatc.net>>%HOSTS%
FIND /C /I "update.microsoft.com" %HOSTS%
IF %ERRORLEVEL% NEQ 0 ECHO ^%NOURL% update.microsoft.com>>%HOSTS%
FIND /C /I "ui.skype.com" %HOSTS%
IF %ERRORLEVEL% NEQ 0 ECHO ^%NOURL% ui.skype.com>>%HOSTS%
FIND /C /I "travel.tile.appex.bing.com" %HOSTS%
IF %ERRORLEVEL% NEQ 0 ECHO ^%NOURL% travel.tile.appex.bing.com>>%HOSTS%
FIND /C /I "telemetry.urs.microsoft.com" %HOSTS%
IF %ERRORLEVEL% NEQ 0 ECHO ^%NOURL% telemetry.urs.microsoft.com>>%HOSTS%
FIND /C /I "telemetry.microsoft.com" %HOSTS%
IF %ERRORLEVEL% NEQ 0 ECHO ^%NOURL% telemetry.microsoft.com>>%HOSTS%
FIND /C /I "telemetry.appex.bing.net:443" %HOSTS%
IF %ERRORLEVEL% NEQ 0 ECHO ^%NOURL% telemetry.appex.bing.net:443>>%HOSTS%
FIND /C /I "telemetry.appex.bing.net" %HOSTS%
IF %ERRORLEVEL% NEQ 0 ECHO ^%NOURL% telemetry.appex.bing.net>>%HOSTS%
FIND /C /I "telecommand.telemetry.microsoft.com.nsatc.net" %HOSTS%
IF %ERRORLEVEL% NEQ 0 ECHO ^%NOURL% telecommand.telemetry.microsoft.com.nsatc.net>>%HOSTS%
FIND /C /I "telecommand.telemetry.microsoft.com" %HOSTS%
IF %ERRORLEVEL% NEQ 0 ECHO ^%NOURL% telecommand.telemetry.microsoft.com>>%HOSTS%
FIND /C /I "survey.watson.microsoft.com" %HOSTS%
IF %ERRORLEVEL% NEQ 0 ECHO ^%NOURL% survey.watson.microsoft.com>>%HOSTS%
FIND /C /I "support.microsoft.com" %HOSTS%
IF %ERRORLEVEL% NEQ 0 ECHO ^%NOURL% support.microsoft.com>>%HOSTS%
FIND /C /I "statsfe2.ws.microsoft.com" %HOSTS%
IF %ERRORLEVEL% NEQ 0 ECHO ^%NOURL% statsfe2.ws.microsoft.com>>%HOSTS%
FIND /C /I "statsfe2.update.microsoft.com.akadns.net" %HOSTS%
IF %ERRORLEVEL% NEQ 0 ECHO ^%NOURL% statsfe2.update.microsoft.com.akadns.net>>%HOSTS%
FIND /C /I "statsfe1.ws.microsoft.com" %HOSTS%
IF %ERRORLEVEL% NEQ 0 ECHO ^%NOURL% statsfe1.ws.microsoft.com>>%HOSTS%
FIND /C /I "static.2mdn.net" %HOSTS%
IF %ERRORLEVEL% NEQ 0 ECHO ^%NOURL% static.2mdn.net>>%HOSTS%
FIND /C /I "ssw.live.com.nsatc.net" %HOSTS%
IF %ERRORLEVEL% NEQ 0 ECHO ^%NOURL% ssw.live.com.nsatc.net>>%HOSTS%
FIND /C /I "ssw.live.com" %HOSTS%
IF %ERRORLEVEL% NEQ 0 ECHO ^%NOURL% ssw.live.com>>%HOSTS%
FIND /C /I "sqm.telemetry.microsoft.com.nsatc.net" %HOSTS%
IF %ERRORLEVEL% NEQ 0 ECHO ^%NOURL% sqm.telemetry.microsoft.com.nsatc.net>>%HOSTS%
FIND /C /I "sqm.telemetry.microsoft.com" %HOSTS%
IF %ERRORLEVEL% NEQ 0 ECHO ^%NOURL% sqm.telemetry.microsoft.com>>%HOSTS%
FIND /C /I "sqm.df.telemetry.microsoft.com" %HOSTS%
IF %ERRORLEVEL% NEQ 0 ECHO ^%NOURL% sqm.df.telemetry.microsoft.com>>%HOSTS%
FIND /C /I "sls.update.microsoft.com.akadns.net" %HOSTS%
IF %ERRORLEVEL% NEQ 0 ECHO ^%NOURL% sls.update.microsoft.com.akadns.net>>%HOSTS%
FIND /C /I "skydrive.wns.windows.com" %HOSTS%
IF %ERRORLEVEL% NEQ 0 ECHO ^%NOURL% skydrive.wns.windows.com>>%HOSTS%
FIND /C /I "skyapi.skyprod.akadns.net" %HOSTS%
IF %ERRORLEVEL% NEQ 0 ECHO ^%NOURL% skyapi.skyprod.akadns.net>>%HOSTS%
FIND /C /I "skyapi.live.net" %HOSTS%
IF %ERRORLEVEL% NEQ 0 ECHO ^%NOURL% skyapi.live.net>>%HOSTS%
FIND /C /I "settings.data.glbdns2.microsoft.com" %HOSTS%
IF %ERRORLEVEL% NEQ 0 ECHO ^%NOURL% settings.data.glbdns2.microsoft.com>>%HOSTS%
FIND /C /I "settings-win.data.microsoft.com" %HOSTS%
IF %ERRORLEVEL% NEQ 0 ECHO ^%NOURL% settings-win.data.microsoft.com>>%HOSTS%
FIND /C /I "settings-sandbox.data.microsoft.com" %HOSTS%
IF %ERRORLEVEL% NEQ 0 ECHO ^%NOURL% settings-sandbox.data.microsoft.com>>%HOSTS%
FIND /C /I "services.wes.df.telemetry.microsoft.com" %HOSTS%
IF %ERRORLEVEL% NEQ 0 ECHO ^%NOURL% services.wes.df.telemetry.microsoft.com>>%HOSTS%
FIND /C /I "secure.flashtalking.com" %HOSTS%
IF %ERRORLEVEL% NEQ 0 ECHO ^%NOURL% secure.flashtalking.com>>%HOSTS%
FIND /C /I "secure.adnxs.com" %HOSTS%
IF %ERRORLEVEL% NEQ 0 ECHO ^%NOURL% secure.adnxs.com>>%HOSTS%
FIND /C /I "schemas.microsoft.akadns.net" %HOSTS%
IF %ERRORLEVEL% NEQ 0 ECHO ^%NOURL% schemas.microsoft.akadns.net>>%HOSTS%
FIND /C /I "sO.2mdn.net" %HOSTS%
IF %ERRORLEVEL% NEQ 0 ECHO ^%NOURL% sO.2mdn.net>>%HOSTS%
FIND /C /I "s.gateway.messenger.live.com" %HOSTS%
IF %ERRORLEVEL% NEQ 0 ECHO ^%NOURL% s.gateway.messenger.live.com>>%HOSTS%
FIND /C /I "reports.wes.df.telemetry.microsoft.com" %HOSTS%
IF %ERRORLEVEL% NEQ 0 ECHO ^%NOURL% reports.wes.df.telemetry.microsoft.com>>%HOSTS%
FIND /C /I "register.mesh.com" %HOSTS%
IF %ERRORLEVEL% NEQ 0 ECHO ^%NOURL% register.mesh.com>>%HOSTS%
FIND /C /I "redir.metaservices.microsoft.com" %HOSTS%
IF %ERRORLEVEL% NEQ 0 ECHO ^%NOURL% redir.metaservices.microsoft.com>>%HOSTS%
FIND /C /I "rad.msn.com" %HOSTS%
IF %ERRORLEVEL% NEQ 0 ECHO ^%NOURL% rad.msn.com>>%HOSTS%
FIND /C /I "rad.live.com" %HOSTS%
IF %ERRORLEVEL% NEQ 0 ECHO ^%NOURL% rad.live.com>>%HOSTS%
FIND /C /I "pricelist.skype.com" %HOSTS%
IF %ERRORLEVEL% NEQ 0 ECHO ^%NOURL% pricelist.skype.com>>%HOSTS%
FIND /C /I "preview.msn.com" %HOSTS%
IF %ERRORLEVEL% NEQ 0 ECHO ^%NOURL% preview.msn.com>>%HOSTS%
FIND /C /I "pre.footprintpredict.com" %HOSTS%
IF %ERRORLEVEL% NEQ 0 ECHO ^%NOURL% pre.footprintpredict.com>>%HOSTS%
FIND /C /I "office.microsoft.com" %HOSTS%
IF %ERRORLEVEL% NEQ 0 ECHO ^%NOURL% office.microsoft.com>>%HOSTS%
FIND /C /I "oca.telemetry.microsoft.com.nsatc.net" %HOSTS%
IF %ERRORLEVEL% NEQ 0 ECHO ^%NOURL% oca.telemetry.microsoft.com.nsatc.net>>%HOSTS%
FIND /C /I "oca.telemetry.microsoft.com" %HOSTS%
IF %ERRORLEVEL% NEQ 0 ECHO ^%NOURL% oca.telemetry.microsoft.com>>%HOSTS%
FIND /C /I "msntest.serving-sys.com" %HOSTS%
IF %ERRORLEVEL% NEQ 0 ECHO ^%NOURL% msntest.serving-sys.com>>%HOSTS%
FIND /C /I "msnbot-65-55-108-23.search.msn.com" %HOSTS%
IF %ERRORLEVEL% NEQ 0 ECHO ^%NOURL% msnbot-65-55-108-23.search.msn.com>>%HOSTS%
FIND /C /I "msn.com" %HOSTS%
IF %ERRORLEVEL% NEQ 0 ECHO ^%NOURL% msn.com>>%HOSTS%
FIND /C /I "msftncsi.com" %HOSTS%
IF %ERRORLEVEL% NEQ 0 ECHO ^%NOURL% msftncsi.com>>%HOSTS%
FIND /C /I "msedge.net" %HOSTS%
IF %ERRORLEVEL% NEQ 0 ECHO ^%NOURL% msedge.net>>%HOSTS%
FIND /C /I "msdn.microsoft.com" %HOSTS%
IF %ERRORLEVEL% NEQ 0 ECHO ^%NOURL% msdn.microsoft.com>>%HOSTS%
FIND /C /I "msdn.com" %HOSTS%
IF %ERRORLEVEL% NEQ 0 ECHO ^%NOURL% msdn.com>>%HOSTS%
FIND /C /I "microsoftupdate.microsoft.com" %HOSTS%
IF %ERRORLEVEL% NEQ 0 ECHO ^%NOURL% microsoftupdate.microsoft.com>>%HOSTS%
FIND /C /I "microsoftupdate.com" %HOSTS%
IF %ERRORLEVEL% NEQ 0 ECHO ^%NOURL% microsoftupdate.com>>%HOSTS%
FIND /C /I "microsoft.com" %HOSTS%
IF %ERRORLEVEL% NEQ 0 ECHO ^%NOURL% microsoft.com>>%HOSTS%
FIND /C /I "m.hotmail.com" %HOSTS%
IF %ERRORLEVEL% NEQ 0 ECHO ^%NOURL% m.hotmail.com>>%HOSTS%
FIND /C /I "m.adnxs.com" %HOSTS%
IF %ERRORLEVEL% NEQ 0 ECHO ^%NOURL% m.adnxs.com>>%HOSTS%
FIND /C /I "login.live.com.nsatc.net" %HOSTS%
IF %ERRORLEVEL% NEQ 0 ECHO ^%NOURL% login.live.com.nsatc.net>>%HOSTS%
FIND /C /I "login.live.com" %HOSTS%
IF %ERRORLEVEL% NEQ 0 ECHO ^%NOURL% login.live.com>>%HOSTS%
FIND /C /I "live.rads.msn.com" %HOSTS%
IF %ERRORLEVEL% NEQ 0 ECHO ^%NOURL% live.rads.msn.com>>%HOSTS%
FIND /C /I "lb1.www.ms.akadns.net" %HOSTS%
IF %ERRORLEVEL% NEQ 0 ECHO ^%NOURL% lb1.www.ms.akadns.net>>%HOSTS%
FIND /C /I "ipv6.msftncsi.com.edgesuite.net" %HOSTS%
IF %ERRORLEVEL% NEQ 0 ECHO ^%NOURL% ipv6.msftncsi.com.edgesuite.net>>%HOSTS%
FIND /C /I "ipv6.msftncsi.com" %HOSTS%
IF %ERRORLEVEL% NEQ 0 ECHO ^%NOURL% ipv6.msftncsi.com>>%HOSTS%
FIND /C /I "i1.services.social.microsoft.com.nsatc.net" %HOSTS%
IF %ERRORLEVEL% NEQ 0 ECHO ^%NOURL% i1.services.social.microsoft.com.nsatc.net>>%HOSTS%
FIND /C /I "i1.services.social.microsoft.com" %HOSTS%
IF %ERRORLEVEL% NEQ 0 ECHO ^%NOURL% i1.services.social.microsoft.com>>%HOSTS%
FIND /C /I "h1.msn.com" %HOSTS%
IF %ERRORLEVEL% NEQ 0 ECHO ^%NOURL% h1.msn.com>>%HOSTS%
FIND /C /I "go.microsoft.com" %HOSTS%
IF %ERRORLEVEL% NEQ 0 ECHO ^%NOURL% go.microsoft.com>>%HOSTS%
FIND /C /I "g.msn.com" %HOSTS%
IF %ERRORLEVEL% NEQ 0 ECHO ^%NOURL% g.msn.com>>%HOSTS%
FIND /C /I "flex.msn.com" %HOSTS%
IF %ERRORLEVEL% NEQ 0 ECHO ^%NOURL% flex.msn.com>>%HOSTS%
FIND /C /I "feedback.windows.com" %HOSTS%
IF %ERRORLEVEL% NEQ 0 ECHO ^%NOURL% feedback.windows.com>>%HOSTS%
FIND /C /I "feedback.search.microsoft.com" %HOSTS%
IF %ERRORLEVEL% NEQ 0 ECHO ^%NOURL% feedback.search.microsoft.com>>%HOSTS%
FIND /C /I "feedback.microsoft-hohm.com" %HOSTS%
IF %ERRORLEVEL% NEQ 0 ECHO ^%NOURL% feedback.microsoft-hohm.com>>%HOSTS%
FIND /C /I "fe3.delivery.mp.microsoft.com" %HOSTS%
IF %ERRORLEVEL% NEQ 0 ECHO ^%NOURL% fe3.delivery.mp.microsoft.com>>%HOSTS%
FIND /C /I "fe3.delivery.dsp.mp.microsoft.com.nsatc.net" %HOSTS%
IF %ERRORLEVEL% NEQ 0 ECHO ^%NOURL% fe3.delivery.dsp.mp.microsoft.com.nsatc.net>>%HOSTS%
FIND /C /I "fe2.update.microsoft.com.akadns.net" %HOSTS%
IF %ERRORLEVEL% NEQ 0 ECHO ^%NOURL% fe2.update.microsoft.com.akadns.net>>%HOSTS%
FIND /C /I "en-us.appex-rf.msn.com" %HOSTS%
IF %ERRORLEVEL% NEQ 0 ECHO ^%NOURL% en-us.appex-rf.msn.com>>%HOSTS%
FIND /C /I "ec.atdmt.com" %HOSTS%
IF %ERRORLEVEL% NEQ 0 ECHO ^%NOURL% ec.atdmt.com>>%HOSTS%
FIND /C /I "download.microsoft.com" %HOSTS%
IF %ERRORLEVEL% NEQ 0 ECHO ^%NOURL% download.microsoft.com>>%HOSTS%
FIND /C /I "dns.msftncsi.com" %HOSTS%
IF %ERRORLEVEL% NEQ 0 ECHO ^%NOURL% dns.msftncsi.com>>%HOSTS%
FIND /C /I "directory.services.live.com.akadns.net" %HOSTS%
IF %ERRORLEVEL% NEQ 0 ECHO ^%NOURL% directory.services.live.com.akadns.net>>%HOSTS%
FIND /C /I "directory.services.live.com" %HOSTS%
IF %ERRORLEVEL% NEQ 0 ECHO ^%NOURL% directory.services.live.com>>%HOSTS%
FIND /C /I "diagnostics.support.microsoft.com" %HOSTS%
IF %ERRORLEVEL% NEQ 0 ECHO ^%NOURL% diagnostics.support.microsoft.com>>%HOSTS%
FIND /C /I "df.telemetry.microsoft.com" %HOSTS%
IF %ERRORLEVEL% NEQ 0 ECHO ^%NOURL% df.telemetry.microsoft.com>>%HOSTS%
FIND /C /I "db3aqu.atdmt.com" %HOSTS%
IF %ERRORLEVEL% NEQ 0 ECHO ^%NOURL% db3aqu.atdmt.com>>%HOSTS%
FIND /C /I "cs1.wpc.v0cdn.net" %HOSTS%
IF %ERRORLEVEL% NEQ 0 ECHO ^%NOURL% cs1.wpc.v0cdn.net>>%HOSTS%
FIND /C /I "corpext.msitadfs.glbdns2.microsoft.com" %HOSTS%
IF %ERRORLEVEL% NEQ 0 ECHO ^%NOURL% corpext.msitadfs.glbdns2.microsoft.com>>%HOSTS%
FIND /C /I "corp.sts.microsoft.com" %HOSTS%
IF %ERRORLEVEL% NEQ 0 ECHO ^%NOURL% corp.sts.microsoft.com>>%HOSTS%
FIND /C /I "compatexchange.cloudapp.net" %HOSTS%
IF %ERRORLEVEL% NEQ 0 ECHO ^%NOURL% compatexchange.cloudapp.net>>%HOSTS%
FIND /C /I "client.wns.windows.com" %HOSTS%
IF %ERRORLEVEL% NEQ 0 ECHO ^%NOURL% client.wns.windows.com>>%HOSTS%
FIND /C /I "choice.microsoft.com.nsatc.net" %HOSTS%
IF %ERRORLEVEL% NEQ 0 ECHO ^%NOURL% choice.microsoft.com.nsatc.net>>%HOSTS%
FIND /C /I "choice.microsoft.com" %HOSTS%
IF %ERRORLEVEL% NEQ 0 ECHO ^%NOURL% choice.microsoft.com>>%HOSTS%
FIND /C /I "cds26.ams9.msecn.net" %HOSTS%
IF %ERRORLEVEL% NEQ 0 ECHO ^%NOURL% cds26.ams9.msecn.net>>%HOSTS%
FIND /C /I "cdn.atdmt.com" %HOSTS%
IF %ERRORLEVEL% NEQ 0 ECHO ^%NOURL% cdn.atdmt.com>>%HOSTS%
FIND /C /I "c.msn.com" %HOSTS%
IF %ERRORLEVEL% NEQ 0 ECHO ^%NOURL% c.msn.com>>%HOSTS%
FIND /C /I "c.atdmt.com" %HOSTS%
IF %ERRORLEVEL% NEQ 0 ECHO ^%NOURL% c.atdmt.com>>%HOSTS%
FIND /C /I "bs.serving-sys.com" %HOSTS%
IF %ERRORLEVEL% NEQ 0 ECHO ^%NOURL% bs.serving-sys.com>>%HOSTS%
FIND /C /I "bl3302geo.storage.dkyprod.akadns.net" %HOSTS%
IF %ERRORLEVEL% NEQ 0 ECHO ^%NOURL% bl3302geo.storage.dkyprod.akadns.net>>%HOSTS%
FIND /C /I "bl3302.storage.live.com" %HOSTS%
IF %ERRORLEVEL% NEQ 0 ECHO ^%NOURL% bl3302.storage.live.com>>%HOSTS%
FIND /C /I "b.rad.msn.com" %HOSTS%
IF %ERRORLEVEL% NEQ 0 ECHO ^%NOURL% b.rad.msn.com>>%HOSTS%
FIND /C /I "b.ads2.msads.net" %HOSTS%
IF %ERRORLEVEL% NEQ 0 ECHO ^%NOURL% b.ads2.msads.net>>%HOSTS%
FIND /C /I "b.ads1.msn.com" %HOSTS%
IF %ERRORLEVEL% NEQ 0 ECHO ^%NOURL% b.ads1.msn.com>>%HOSTS%
FIND /C /I "az512334.vo.msecnd.net" %HOSTS%
IF %ERRORLEVEL% NEQ 0 ECHO ^%NOURL% az512334.vo.msecnd.net>>%HOSTS%
FIND /C /I "az361816.vo.msecnd.net" %HOSTS%
IF %ERRORLEVEL% NEQ 0 ECHO ^%NOURL% az361816.vo.msecnd.net>>%HOSTS%
FIND /C /I "apps.skype.com" %HOSTS%
IF %ERRORLEVEL% NEQ 0 ECHO ^%NOURL% apps.skype.com>>%HOSTS%
FIND /C /I "any.edge.bing.com" %HOSTS%
IF %ERRORLEVEL% NEQ 0 ECHO ^%NOURL% any.edge.bing.com>>%HOSTS%
FIND /C /I "americas2.notify.windows.com.akadns.net" %HOSTS%
IF %ERRORLEVEL% NEQ 0 ECHO ^%NOURL% americas2.notify.windows.com.akadns.net>>%HOSTS%
FIND /C /I "aka-cdn-ns.adtech.de" %HOSTS%
IF %ERRORLEVEL% NEQ 0 ECHO ^%NOURL% aka-cdn-ns.adtech.de>>%HOSTS%
FIND /C /I "aidps.atdmt.com" %HOSTS%
IF %ERRORLEVEL% NEQ 0 ECHO ^%NOURL% aidps.atdmt.com>>%HOSTS%
FIND /C /I "ads1.msn.com" %HOSTS%
IF %ERRORLEVEL% NEQ 0 ECHO ^%NOURL% ads1.msn.com>>%HOSTS%
FIND /C /I "ads1.msads.net" %HOSTS%
IF %ERRORLEVEL% NEQ 0 ECHO ^%NOURL% ads1.msads.net>>%HOSTS%
FIND /C /I "ads.msn.com" %HOSTS%
IF %ERRORLEVEL% NEQ 0 ECHO ^%NOURL% ads.msn.com>>%HOSTS%
FIND /C /I "adnxs.com" %HOSTS%
IF %ERRORLEVEL% NEQ 0 ECHO ^%NOURL% adnxs.com>>%HOSTS%
FIND /C /I "adnexus.net" %HOSTS%
IF %ERRORLEVEL% NEQ 0 ECHO ^%NOURL% adnexus.net>>%HOSTS%
FIND /C /I "ad.doubleclick.net" %HOSTS%
IF %ERRORLEVEL% NEQ 0 ECHO ^%NOURL% ad.doubleclick.net>>%HOSTS%
FIND /C /I "ac3.msn.com" %HOSTS%
IF %ERRORLEVEL% NEQ 0 ECHO ^%NOURL% ac3.msn.com>>%HOSTS%
FIND /C /I "a978.i6g1.akamai.net" %HOSTS%
IF %ERRORLEVEL% NEQ 0 ECHO ^%NOURL% a978.i6g1.akamai.net>>%HOSTS%
FIND /C /I "a.rad.msn.com" %HOSTS%
IF %ERRORLEVEL% NEQ 0 ECHO ^%NOURL% a.rad.msn.com>>%HOSTS%
FIND /C /I "a.ads2.msn.com" %HOSTS%
IF %ERRORLEVEL% NEQ 0 ECHO ^%NOURL% a.ads2.msn.com>>%HOSTS%
FIND /C /I "a.ads2.msads.net" %HOSTS%
IF %ERRORLEVEL% NEQ 0 ECHO ^%NOURL% a.ads2.msads.net>>%HOSTS%
FIND /C /I "a.ads1.msn.com" %HOSTS%
IF %ERRORLEVEL% NEQ 0 ECHO ^%NOURL% a.ads1.msn.com>>%HOSTS%
FIND /C /I "a-msedge.net" %HOSTS%
IF %ERRORLEVEL% NEQ 0 ECHO ^%NOURL% a-msedge.net>>%HOSTS%
FIND /C /I "a-0009.a-msedge.net" %HOSTS%
IF %ERRORLEVEL% NEQ 0 ECHO ^%NOURL% a-0009.a-msedge.net>>%HOSTS%
FIND /C /I "a-0008.a-msedge.net" %HOSTS%
IF %ERRORLEVEL% NEQ 0 ECHO ^%NOURL% a-0008.a-msedge.net>>%HOSTS%
FIND /C /I "a-0007.a-msedge.net" %HOSTS%
IF %ERRORLEVEL% NEQ 0 ECHO ^%NOURL% a-0007.a-msedge.net>>%HOSTS%
FIND /C /I "a-0006.a-msedge.net" %HOSTS%
IF %ERRORLEVEL% NEQ 0 ECHO ^%NOURL% a-0006.a-msedge.net>>%HOSTS%
FIND /C /I "a-0005.a-msedge.net" %HOSTS%
IF %ERRORLEVEL% NEQ 0 ECHO ^%NOURL% a-0005.a-msedge.net>>%HOSTS%
FIND /C /I "a-0004.a-msedge.net" %HOSTS%
IF %ERRORLEVEL% NEQ 0 ECHO ^%NOURL% a-0004.a-msedge.net>>%HOSTS%
FIND /C /I "a-0003.a-msedge.net" %HOSTS%
IF %ERRORLEVEL% NEQ 0 ECHO ^%NOURL% a-0003.a-msedge.net>>%HOSTS%
FIND /C /I "a-0002.a-msedge.net" %HOSTS%
IF %ERRORLEVEL% NEQ 0 ECHO ^%NOURL% a-0002.a-msedge.net>>%HOSTS%
FIND /C /I "a-0001.a-msedge.net" %HOSTS%
IF %ERRORLEVEL% NEQ 0 ECHO ^%NOURL% a-0001.a-msedge.net>>%HOSTS%
FIND /C /I "OneSettings-bn2.metron.live.com.nsatc.net" %HOSTS%
IF %ERRORLEVEL% NEQ 0 ECHO ^%NOURL% OneSettings-bn2.metron.live.com.nsatc.net>>%HOSTS%
FIND /C /I "BN1WNS2011508.wns.windows.com" %HOSTS%
IF %ERRORLEVEL% NEQ 0 ECHO ^%NOURL% BN1WNS2011508.wns.windows.com>>%HOSTS%
ATTRIB +r "%WINDIR%\system32\drivers\etc\hosts"

:: Add firewall rules. Block unwanted IP addresses. (telemetry)

NETSH advfirewall set allprofiles state on
NETSH advfirewall firewall add rule name="telemetry_www.trust.office365.com" dir=out action=block remoteip=64.4.6.100 enable=yes
NETSH advfirewall firewall add rule name="telemetry_www.moskisvet.com.c.footprint.net" dir=out action=block remoteip=8.253.37.126 enable=yes
NETSH advfirewall firewall add rule name="telemetry_www.moskisvet.com.c.footprint.net" dir=out action=block remoteip=198.78.208.254 enable=yes
NETSH advfirewall firewall add rule name="telemetry_www.cisco.com" dir=out action=block remoteip=198.135.3.118 enable=yes
NETSH advfirewall firewall add rule name="telemetry_wusonprem.ipv6.microsoft.com.akadns.net" dir=out action=block remoteip=157.56.106.189 enable=yes
NETSH advfirewall firewall add rule name="telemetry_wns.windows.com" dir=out action=block remoteip=40.77.229.0-40.77.229.255 enable=yes
NETSH advfirewall firewall add rule name="telemetry_wes.df.telemetry.microsoft.com" dir=out action=block remoteip=65.52.100.93 enable=yes
NETSH advfirewall firewall add rule name="telemetry_wdcpeurope.microsoft.akadns.net" dir=out action=block remoteip=137.117.235.16 enable=yes
NETSH advfirewall firewall add rule name="telemetry_watson.telemetry.microsoft.com" dir=out action=block remoteip=40.77.228.92 enable=yes
NETSH advfirewall firewall add rule name="telemetry_watson.ppe.telemetry.microsoft.com" dir=out action=block remoteip=65.52.100.11 enable=yes
NETSH advfirewall firewall add rule name="telemetry_watson.microsoft.com.nsatc.net" dir=out action=block remoteip=65.52.108.154 enable=yes
NETSH advfirewall firewall add rule name="telemetry_watson.live.com" dir=out action=block remoteip=207.46.223.94 enable=yes
NETSH advfirewall firewall add rule name="telemetry_vortex-db5.metron.live.com.nsatc.net" dir=out action=block remoteip=191.232.139.5 enable=yes
NETSH advfirewall firewall add rule name="telemetry_vd.vidfuture.com" dir=out action=block remoteip=66.225.197.197 enable=yes
NETSH advfirewall firewall add rule name="telemetry_v4ncsi.msedge.net" dir=out action=block remoteip=13.107.4.52 enable=yes
NETSH advfirewall firewall add rule name="telemetry_v20-asimov-win.vortex.data.microsoft.com.akadns.net" dir=out action=block remoteip=64.4.54.254 enable=yes
NETSH advfirewall firewall add rule name="telemetry_v10-win.vortex.data.microsoft.com.akadns.net" dir=out action=block remoteip=111.221.29.254 enable=yes
NETSH advfirewall firewall add rule name="telemetry_us.vortex-win.data.microsoft.com" dir=out action=block remoteip=40.90.136.33 enable=yes
NETSH advfirewall firewall add rule name="telemetry_urs.microsoft.com.nsatc.net" dir=out action=block remoteip=157.55.233.125,192.232.139.180 enable=yes
NETSH advfirewall firewall add rule name="telemetry_trouter-neu-a.cloudapp.net" dir=out action=block remoteip=13.69.188.18 enable=yes
NETSH advfirewall firewall add rule name="telemetry_trouter-easia-a.dc.trouter.io" dir=out action=block remoteip=13.75.106.0 enable=yes
NETSH advfirewall firewall add rule name="telemetry_telemetry.microsoft.com" dir=out action=block remoteip=65.52.100.9 enable=yes
NETSH advfirewall firewall add rule name="telemetry_telemetry.appex.search.prod.ms.akadns.net" dir=out action=block remoteip=168.61.24.141 enable=yes
NETSH advfirewall firewall add rule name="telemetry_telemetry.appex.bing.net" dir=out action=block remoteip=65.52.161.64,168.63.108.233 enable=yes
NETSH advfirewall firewall add rule name="telemetry_telecommand.telemetry.microsoft.com" dir=out action=block remoteip=65.55.252.92 enable=yes
NETSH advfirewall firewall add rule name="telemetry_tapeytapey.com" dir=out action=block remoteip=2.21.246.26 enable=yes
NETSH advfirewall firewall add rule name="telemetry_t.urs.microsoft.com.nsatc.net" dir=out action=block remoteip=64.4.54.167,65.55.44.85 enable=yes
NETSH advfirewall firewall add rule name="telemetry_t.urs.microsoft.com" dir=out action=block remoteip=131.253.40.37 enable=yes
NETSH advfirewall firewall add rule name="telemetry_survey.watson.microsoft.com" dir=out action=block remoteip=207.68.166.254 enable=yes
NETSH advfirewall firewall add rule name="telemetry_statsfe2-df.ws.microsoft.com.nsatc.net" dir=out action=block remoteip=134.170.115.60 enable=yes
NETSH advfirewall firewall add rule name="telemetry_statsfe2.ws.microsoft.com.nsatc.net" dir=out action=block remoteip=131.253.14.153 enable=yes
NETSH advfirewall firewall add rule name="telemetry_statsfe2.ws.microsoft.com" dir=out action=block remoteip=207.46.114.61 enable=yes
NETSH advfirewall firewall add rule name="telemetry_statsfe2.update.microsoft.com.akadns.net" dir=out action=block remoteip=65.52.108.153 enable=yes
NETSH advfirewall firewall add rule name="telemetry_stats.update.microsoft.com.nsatc.net" dir=out action=block remoteip=64.4.54.22 enable=yes
NETSH advfirewall firewall add rule name="telemetry_static.sl-reverse.com" dir=out action=block remoteip=169.54.179.156 enable=yes
NETSH advfirewall firewall add rule name="telemetry_ssw.live.com.nsatc.net" dir=out action=block remoteip=207.46.7.252 enable=yes
NETSH advfirewall firewall add rule name="telemetry_ssw.live.com" dir=out action=block remoteip=207.46.101.29 enable=yes
NETSH advfirewall firewall add rule name="telemetry_sqm.msn.com" dir=out action=block remoteip=65.55.252.93 enable=yes
NETSH advfirewall firewall add rule name="telemetry_sqm.df.telemetry.microsoft.com" dir=out action=block remoteip=65.52.100.94 enable=yes
NETSH advfirewall firewall add rule name="telemetry_sonybank.net" dir=out action=block remoteip=2.21.246.24 enable=yes
NETSH advfirewall firewall add rule name="telemetry_settings-win-ppe.data.microsoft.com" dir=out action=block remoteip=40.77.226.248 enable=yes
NETSH advfirewall firewall add rule name="telemetry_settings-sandbox.data.microsoft.com" dir=out action=block remoteip=111.221.29.177 enable=yes
NETSH advfirewall firewall add rule name="telemetry_settings-sandbox.data.glbdns2.microsoft.com" dir=out action=block remoteip=191.232.140.76 enable=yes
NETSH advfirewall firewall add rule name="telemetry_services.wes.df.telemetry.microsoft.com" dir=out action=block remoteip=65.52.100.92 enable=yes
NETSH advfirewall firewall add rule name="telemetry_service.xbox.com" dir=out action=block remoteip=157.55.129.21 enable=yes
NETSH advfirewall firewall add rule name="telemetry_secure-ams.adnxs.com" dir=out action=block remoteip=37.252.163.244,37.252.163.106 enable=yes
NETSH advfirewall firewall add rule name="telemetry_secure.flashtalking.com" dir=out action=block remoteip=95.101.244.134 enable=yes
NETSH advfirewall firewall add rule name="telemetry_schemas.microsoft.akadns.net" dir=out action=block remoteip=65.54.226.187 enable=yes
NETSH advfirewall firewall add rule name="telemetry_sact.atdmt.com" dir=out action=block remoteip=94.245.121.177 enable=yes
NETSH advfirewall firewall add rule name="telemetry_s0.2mdn.net" dir=out action=block remoteip=172.217.21.166 enable=yes
NETSH advfirewall firewall add rule name="telemetry_s.outlook.com" dir=out action=block remoteip=134.170.3.199 enable=yes
NETSH advfirewall firewall add rule name="telemetry_rmads.msn.com" dir=out action=block remoteip=157.56.23.91 enable=yes
NETSH advfirewall firewall add rule name="telemetry_reports.wes.df.telemetry.microsoft.com" dir=out action=block remoteip=65.52.100.91 enable=yes
NETSH advfirewall firewall add rule name="telemetry_redir.metaservices.microsoft.com" dir=out action=block remoteip=194.44.4.200,194.44.4.208,2.21.246.42,2.21.246.58 enable=yes
NETSH advfirewall firewall add rule name="telemetry_realgames.cn" dir=out action=block remoteip=65.55.57.27 enable=yes
NETSH advfirewall firewall add rule name="telemetry_pipe.skype.com" dir=out action=block remoteip=40.115.1.44 enable=yes
NETSH advfirewall firewall add rule name="telemetry_perthnow.com.au" dir=out action=block remoteip=2.21.246.8 enable=yes
NETSH advfirewall firewall add rule name="telemetry_osiprod-weu-snow-000.cloudapp.net" dir=out action=block remoteip=23.97.178.173 enable=yes
NETSH advfirewall firewall add rule name="telemetry_oca.watson.data.microsoft.com.akadns.net" dir=out action=block remoteip=64.4.54.153 enable=yes
NETSH advfirewall firewall add rule name="telemetry_oca.telemetry.microsoft.com.nsatc.net" dir=out action=block remoteip=65.55.252.63 enable=yes
NETSH advfirewall firewall add rule name="telemetry_nt-c.ns.nsatc.net" dir=out action=block remoteip=8.254.119.155 enable=yes
NETSH advfirewall firewall add rule name="telemetry_nt-b.ns.nsatc.net" dir=out action=block remoteip=8.254.92.155 enable=yes
NETSH advfirewall firewall add rule name="telemetry_ns3.msft.net" dir=out action=block remoteip=192.221.113.53 enable=yes
NETSH advfirewall firewall add rule name="telemetry_ns3.a-msedge.net" dir=out action=block remoteip=131.253.21.1 enable=yes
NETSH advfirewall firewall add rule name="telemetry_ns2.a-msedge.net" dir=out action=block remoteip=204.79.197.2 enable=yes
NETSH advfirewall firewall add rule name="telemetry_ns1.gslb.com" dir=out action=block remoteip=8.19.31.10 enable=yes
NETSH advfirewall firewall add rule name="telemetry_ns1.a-msedge.net" dir=out action=block remoteip=204.79.197.1 enable=yes
NETSH advfirewall firewall add rule name="telemetry_nl-1.ns.nsatc.net" dir=out action=block remoteip=4.23.39.155 enable=yes
NETSH advfirewall firewall add rule name="telemetry_nexus.officeapps.live.com" dir=out action=block remoteip=40.76.8.142,23.101.14.229,207.46.153.155 enable=yes
NETSH advfirewall firewall add rule name="telemetry_next-services.windows.akadns.net" dir=out action=block remoteip=134.170.30.202 enable=yes
NETSH advfirewall firewall add rule name="telemetry_new_wns.windows.com" dir=out action=block remoteip=131.253.21.0-131.253.47.255 enable=yes
NETSH advfirewall firewall add rule name="telemetry_msnbot-65-55-108-23.search.msn.com" dir=out action=block remoteip=65.55.108.23 enable=yes
NETSH advfirewall firewall add rule name="telemetry_msnbot-64-4-54-18.search.msn.com" dir=out action=block remoteip=64.4.54.18 enable=yes
NETSH advfirewall firewall add rule name="telemetry_msnbot-207-46-194-46.search.msn.com" dir=out action=block remoteip=207.46.194.46 enable=yes
NETSH advfirewall firewall add rule name="telemetry_msnbot-207-46-194-33.search.msn.com" dir=out action=block remoteip=207.46.194.33 enable=yes
NETSH advfirewall firewall add rule name="telemetry_msnbot-207-46-194-29.search.msn.com" dir=out action=block remoteip=207.46.194.29 enable=yes
NETSH advfirewall firewall add rule name="telemetry_msnbot-207-46-194-25.search.msn.com" dir=out action=block remoteip=207.46.194.25 enable=yes
NETSH advfirewall firewall add rule name="telemetry_msnbot-207-46-194-14.search.msn.com" dir=out action=block remoteip=207.46.194.14 enable=yes
NETSH advfirewall firewall add rule name="telemetry_msedge.net" dir=out action=block remoteip=204.79.19.197 enable=yes
NETSH advfirewall firewall add rule name="telemetry_ms1-ib.adnxs.com" dir=out action=block remoteip=37.252.163.88 enable=yes
NETSH advfirewall firewall add rule name="telemetry_modern.watson.data.microsoft.com.akadns.net" dir=out action=block remoteip=65.55.252.43,65.52.108.29,65.55.252.202 enable=yes
NETSH advfirewall firewall add rule name="telemetry_mm.bing.net" dir=out action=block remoteip=204.79.197.200 enable=yes
NETSH advfirewall firewall add rule name="telemetry_microsoft22.com" dir=out action=block remoteip=52.178.178.16 enable=yes
NETSH advfirewall firewall add rule name="telemetry_microsoft21.com" dir=out action=block remoteip=65.55.64.54 enable=yes
NETSH advfirewall firewall add rule name="telemetry_microsoft20.com" dir=out action=block remoteip=40.80.145.27 enable=yes
NETSH advfirewall firewall add rule name="telemetry_microsoft17.com" dir=out action=block remoteip=40.80.145.78 enable=yes
NETSH advfirewall firewall add rule name="telemetry_microsoft16.com" dir=out action=block remoteip=23.99.116.116 enable=yes
NETSH advfirewall firewall add rule name="telemetry_microsoft15.com" dir=out action=block remoteip=77.67.29.176 enable=yes
NETSH advfirewall firewall add rule name="telemetry_microsoft14.com" dir=out action=block remoteip=65.55.223.0-65.55.223.255 enable=yes
NETSH advfirewall firewall add rule name="telemetry_microsoft13.com" dir=out action=block remoteip=65.39.117.230 enable=yes
NETSH advfirewall firewall add rule name="telemetry_microsoft12.com" dir=out action=block remoteip=64.4.23.0-64.4.23.255 enable=yes
NETSH advfirewall firewall add rule name="telemetry_microsoft11.com" dir=out action=block remoteip=23.223.20.82 enable=yes
NETSH advfirewall firewall add rule name="telemetry_microsoft10.com" dir=out action=block remoteip=213.199.179.0-213.199.179.255 enable=yes
NETSH advfirewall firewall add rule name="telemetry_microsoft09.com" dir=out action=block remoteip=2.22.61.66 enable=yes
NETSH advfirewall firewall add rule name="telemetry_microsoft08.com" dir=out action=block remoteip=195.138.255.0-195.138.255.255 enable=yes
NETSH advfirewall firewall add rule name="telemetry_microsoft07.com" dir=out action=block remoteip=157.55.56.0-157.55.56.255 enable=yes
NETSH advfirewall firewall add rule name="telemetry_microsoft06.com" dir=out action=block remoteip=157.55.52.0-157.55.52.255 enable=yes
NETSH advfirewall firewall add rule name="telemetry_microsoft05.com" dir=out action=block remoteip=157.55.236.0-157.55.236.255 enable=yes
NETSH advfirewall firewall add rule name="telemetry_microsoft04.com" dir=out action=block remoteip=157.55.235.0-157.55.235.255 enable=yes
NETSH advfirewall firewall add rule name="telemetry_microsoft03.com" dir=out action=block remoteip=157.55.130.0-157.55.130.255 enable=yes
NETSH advfirewall firewall add rule name="telemetry_microsoft02.com" dir=out action=block remoteip=111.221.64.0-111.221.127.255 enable=yes
NETSH advfirewall firewall add rule name="telemetry_microsoft01.com" dir=out action=block remoteip=11.221.29.253 enable=yes
NETSH advfirewall firewall add rule name="telemetry_microsoft.com" dir=out action=block remoteip=104.96.147.3 enable=yes
NETSH advfirewall firewall add rule name="telemetry_mediaroomsds.microsoft.com" dir=out action=block remoteip=134.170.185.70 enable=yes
NETSH advfirewall firewall add rule name="telemetry_media.blinkbox.com.c.footprint.net" dir=out action=block remoteip=206.33.58.254 enable=yes
NETSH advfirewall firewall add rule name="telemetry_m.adnxs.com" dir=out action=block remoteip=37.252.170.141 enable=yes
NETSH advfirewall firewall add rule name="telemetry_legacy.watson.data.microsoft.com.akadns.net" dir=out action=block remoteip=65.55.252.71 enable=yes
NETSH advfirewall firewall add rule name="telemetry_inside.microsoftmse.com" dir=out action=block remoteip=65.55.39.10 enable=yes
NETSH advfirewall firewall add rule name="telemetry_iact.atdmt.com" dir=out action=block remoteip=94.245.121.178 enable=yes
NETSH advfirewall firewall add rule name="telemetry_i4.services.social.microsoft.com" dir=out action=block remoteip=104.79.134.225 enable=yes
NETSH advfirewall firewall add rule name="telemetry_i1.services.social.microsoft.com" dir=out action=block remoteip=23.74.190.252,104.82.22.249 enable=yes
NETSH advfirewall firewall add rule name="telemetry_hp-comm.ca.msn.com" dir=out action=block remoteip=40.127.139.224 enable=yes
NETSH advfirewall firewall add rule name="telemetry_helloaddress.com" dir=out action=block remoteip=2.21.246.10 enable=yes
NETSH advfirewall firewall add rule name="telemetry_globalns2.appnexus.net" dir=out action=block remoteip=8.19.31.11 enable=yes
NETSH advfirewall firewall add rule name="telemetry_geo-prod.dodsp.mp.microsoft.com.nsatc.net" dir=out action=block remoteip=191.232.139.212 enable=yes
NETSH advfirewall firewall add rule name="telemetry_geo-prod.do.dsp.mp.microsoft.com" dir=out action=block remoteip=40.77.226.217-40.77.226.224 enable=yes
NETSH advfirewall firewall add rule name="telemetry_geo.settings.data.microsoft.com.akadns.net" dir=out action=block remoteip=64.4.0.0-64.4.63.255 enable=yes
NETSH advfirewall firewall add rule name="telemetry_float.2655.bm-impbus.prod.ams1.adnexus.net" dir=out action=block remoteip=37.252.163.215 enable=yes
NETSH advfirewall firewall add rule name="telemetry_float.2113.bm-impbus.prod.ams1.adnexus.net" dir=out action=block remoteip=37.252.163.3 enable=yes
NETSH advfirewall firewall add rule name="telemetry_float.1334.bm-impbus.prod.fra1.adnexus.net" dir=out action=block remoteip=37.252.170.82 enable=yes
NETSH advfirewall firewall add rule name="telemetry_float.1332.bm-impbus.prod.fra1.adnexus.net" dir=out action=block remoteip=37.252.170.81 enable=yes
NETSH advfirewall firewall add rule name="telemetry_float.1143.bm-impbus.prod.fra1.adnexus.net" dir=out action=block remoteip=37.252.170.1 enable=yes
NETSH advfirewall firewall add rule name="telemetry_flex.msn.com" dir=out action=block remoteip=207.46.194.8 enable=yes
NETSH advfirewall firewall add rule name="telemetry_fesweb1.ch1d.binginternal.com" dir=out action=block remoteip=131.253.14.76 enable=yes
NETSH advfirewall firewall add rule name="telemetry_fe3.delivery.dsp.mp.microsoft.com.nsatc.net" dir=out action=block remoteip=64.4.54.18 enable=yes
NETSH advfirewall firewall add rule name="telemetry_fd-rad-msn-com.a-0004.a-msedge.net" dir=out action=block remoteip=204.79.197.206 enable=yes
NETSH advfirewall firewall add rule name="telemetry_fashiontamils.com" dir=out action=block remoteip=69.64.34.185 enable=yes
NETSH advfirewall firewall add rule name="telemetry_exch-eu.atdmt.com.nsatc.net" dir=out action=block remoteip=94.245.121.179,94.245.121.176 enable=yes
NETSH advfirewall firewall add rule name="telemetry_evoke-windowsservices-tas.msedge.net" dir=out action=block remoteip=13.107.5.88 enable=yes
NETSH advfirewall firewall add rule name="telemetry_eu.vortex-win.data.microsoft.com" dir=out action=block remoteip=191.232.139.254 enable=yes
NETSH advfirewall firewall add rule name="telemetry_es-1.ns.nsatc.net" dir=out action=block remoteip=8.254.34.155 enable=yes
NETSH advfirewall firewall add rule name="telemetry_edge-atlas-shv-01-cdg2.facebook.com" dir=out action=block remoteip=179.60.192.10 enable=yes
NETSH advfirewall firewall add rule name="telemetry_e8218.ce.akamaiedge.net" dir=out action=block remoteip=23.57.107.27 enable=yes
NETSH advfirewall firewall add rule name="telemetry_e6845.ce.akamaiedge.net" dir=out action=block remoteip=23.57.101.163 enable=yes
NETSH advfirewall firewall add rule name="telemetry_dub109-afx.ms.a-0009.a-msedge.net" dir=out action=block remoteip=204.79.197.211 enable=yes
NETSH advfirewall firewall add rule name="telemetry_dps.msn.com" dir=out action=block remoteip=131.253.14.121 enable=yes
NETSH advfirewall firewall add rule name="telemetry_dmd.metaservices.microsoft.com.akadns.net" dir=out action=block remoteip=52.160.91.170 enable=yes
NETSH advfirewall firewall add rule name="telemetry_dmd.metaservices.microsoft.com.akadns.net" dir=out action=block remoteip=40.112.210.171 enable=yes
NETSH advfirewall firewall add rule name="telemetry_dmd.metaservices.microsoft.com" dir=out action=block remoteip=40.87.63.92,40.80.145.78,40.80.145.38,40.80.145.27,40.112.213.22 enable=yes
NETSH advfirewall firewall add rule name="telemetry_diagnostics.support.microsoft.com" dir=out action=block remoteip=134.170.52.151 enable=yes
NETSH advfirewall firewall add rule name="telemetry_diagnostics.support.microsoft.akadns.net" dir=out action=block remoteip=157.56.121.89 enable=yes
NETSH advfirewall firewall add rule name="telemetry_df.telemetry.microsoft.com" dir=out action=block remoteip=65.52.100.7 enable=yes
NETSH advfirewall firewall add rule name="telemetry_descargas.diximedia.es.c.footprint.net" dir=out action=block remoteip=185.13.160.61 enable=yes
NETSH advfirewall firewall add rule name="telemetry_deploy.static.akamaitechnologies.com" dir=out action=block remoteip=23.218.212.69 enable=yes
NETSH advfirewall firewall add rule name="telemetry_deploy.akamaitechnologies.com" dir=out action=block remoteip=95.100.38.95 enable=yes
NETSH advfirewall firewall add rule name="telemetry_db5.wns.notify.windows.com.akadns.net" dir=out action=block remoteip=40.77.226.246,40.77.226.247 enable=yes
NETSH advfirewall firewall add rule name="telemetry_db5.vortex.data.microsoft.com.akadns.net" dir=out action=block remoteip=40.77.226.250 enable=yes
NETSH advfirewall firewall add rule name="telemetry_db5.settings.data.microsoft.com.akadns.net" dir=out action=block remoteip=40.77.226.249,191.232.139.253 enable=yes
NETSH advfirewall firewall add rule name="telemetry_db5.displaycatalog.md.mp.microsoft.com.akadns.net" dir=out action=block remoteip=40.77.229.125 enable=yes
NETSH advfirewall firewall add rule name="telemetry_db3wns2011111.wns.windows.com" dir=out action=block remoteip=157.56.124.87 enable=yes
NETSH advfirewall firewall add rule name="telemetry_dart.l.doubleclick.net" dir=out action=block remoteip=173.194.113.219,173.194.113.220,173.194.113.219,216.58.209.166,172.217.20.134 enable=yes
NETSH advfirewall firewall add rule name="telemetry_cy2.settings.data.microsoft.com.akadns.net" dir=out action=block remoteip=64.4.54.253,13.78.188.147 enable=yes
NETSH advfirewall firewall add rule name="telemetry_cs697.wac.thetacdn.net" dir=out action=block remoteip=192.229.233.249 enable=yes
NETSH advfirewall firewall add rule name="telemetry_cs479.wac.edgecastcdn.net" dir=out action=block remoteip=68.232.35.139 enable=yes
NETSH advfirewall firewall add rule name="telemetry_corpext.msitadfs.glbdns2.microsoft.com" dir=out action=block remoteip=131.107.113.238 enable=yes
NETSH advfirewall firewall add rule name="telemetry_compatexchange.cloudapp.net" dir=out action=block remoteip=23.99.10.11 enable=yes
NETSH advfirewall firewall add rule name="telemetry_colonialtoolset.com" dir=out action=block remoteip=208.84.0.53 enable=yes
NETSH advfirewall firewall add rule name="telemetry_col130-afx.ms.a-0008.a-msedge.net" dir=out action=block remoteip=204.79.197.210 enable=yes
NETSH advfirewall firewall add rule name="telemetry_co4.telecommand.telemetry.microsoft.com.akadns.net" dir=out action=block remoteip=65.55.252.190 enable=yes
NETSH advfirewall firewall add rule name="telemetry_cn.msn.fr" dir=out action=block remoteip=23.102.21.4 enable=yes
NETSH advfirewall firewall add rule name="telemetry_choice.microsoft.com.nsatc.net" dir=out action=block remoteip=65.55.128.81,157.56.91.77 enable=yes
NETSH advfirewall firewall add rule name="telemetry_chinamobileltd.com" dir=out action=block remoteip=211.137.82.38 enable=yes
NETSH advfirewall firewall add rule name="telemetry_cdn.energetichabits.com" dir=out action=block remoteip=93.184.220.20 enable=yes
NETSH advfirewall firewall add rule name="telemetry_cdn.deezer.com.c.footprint.net" dir=out action=block remoteip=8.254.209.254 enable=yes
NETSH advfirewall firewall add rule name="telemetry_cannon-construction.co.uk" dir=out action=block remoteip=93.184.220.29 enable=yes
NETSH advfirewall firewall add rule name="telemetry_candycrushsoda.king.com" dir=out action=block remoteip=185.48.81.162 enable=yes
NETSH advfirewall firewall add rule name="telemetry_c.nine.com.au" dir=out action=block remoteip=207.46.194.10 enable=yes
NETSH advfirewall firewall add rule name="telemetry_c.microsoft.akadns.net" dir=out action=block remoteip=134.170.188.139 enable=yes
NETSH advfirewall firewall add rule name="telemetry_bsnl.eyeblaster.akadns.net" dir=out action=block remoteip=82.199.80.141 enable=yes
NETSH advfirewall firewall add rule name="telemetry_bots.teams.skype.com" dir=out action=block remoteip=13.107.3.128 enable=yes
NETSH advfirewall firewall add rule name="telemetry_bn2.vortex.data.microsoft.com.akadns.net" dir=out action=block remoteip=65.55.44.109 enable=yes
NETSH advfirewall firewall add rule name="telemetry_blu173-mail-live-com.a-0006.a-msedge.net" dir=out action=block remoteip=204.79.197.208 enable=yes
NETSH advfirewall firewall add rule name="telemetry_beta.t.urs.microsoft.com" dir=out action=block remoteip=157.56.74.250 enable=yes
NETSH advfirewall firewall add rule name="telemetry_bay175-mail-live-com.a-0007.a-msedge.net" dir=out action=block remoteip=204.79.197.209 enable=yes
NETSH advfirewall firewall add rule name="telemetry_b.ns.nsatc.net" dir=out action=block remoteip=198.78.208.155 enable=yes
NETSH advfirewall firewall add rule name="telemetry_auth.nym2.appnexus.net" dir=out action=block remoteip=68.67.155.138 enable=yes
NETSH advfirewall firewall add rule name="telemetry_auth.lax1.appnexus.net" dir=out action=block remoteip=68.67.133.169 enable=yes
NETSH advfirewall firewall add rule name="telemetry_auth.ams1.appnexus.net" dir=out action=block remoteip=37.252.164.5 enable=yes
NETSH advfirewall firewall add rule name="telemetry_assets2.parliament.uk.c.footprint.net" dir=out action=block remoteip=192.221.106.126 enable=yes
NETSH advfirewall firewall add rule name="telemetry_assets.dishonline.com.c.footprint.net" dir=out action=block remoteip=207.123.56.252 enable=yes
NETSH advfirewall firewall add rule name="telemetry_asimov-sandbox.vortex.data.microsoft.com.akadns.net" dir=out action=block remoteip=64.4.54.32 enable=yes
NETSH advfirewall firewall add rule name="telemetry_array204-prod.dodsp.mp.microsoft.com.nsatc.net" dir=out action=block remoteip=65.52.0.0-65.52.255.255 enable=yes
NETSH advfirewall firewall add rule name="telemetry_apnic.net" dir=out action=block remoteip=221.232.247.2,222.216.3.213 enable=yes
NETSH advfirewall firewall add rule name="telemetry_a-msedge.net" dir=out action=block remoteip=204.79.197.204 enable=yes
NETSH advfirewall firewall add rule name="telemetry_ams1-ib.adnxs.com" dir=out action=block remoteip=37.252.163.207,37.252.162.228,37.252.162.216 enable=yes
NETSH advfirewall firewall add rule name="telemetry_ampudc.udc0.glbdns2.microsoft.com" dir=out action=block remoteip=137.116.81.24 enable=yes
NETSH advfirewall firewall add rule name="telemetry_akadns.info" dir=out action=block remoteip=157.56.96.54 enable=yes
NETSH advfirewall firewall add rule name="telemetry_ads.msn.com" dir=out action=block remoteip=157.56.91.82,157.56.23.91,104.82.14.146,207.123.56.252,185.13.160.61,8.254.209.254,65.55.128.80,8.12.207.125 enable=yes
NETSH advfirewall firewall add rule name="telemetry_adnxs.com" dir=out action=block remoteip=37.252.170.80,37.252.170.142,37.252.170.140,37.252.169.43 enable=yes
NETSH advfirewall firewall add rule name="telemetry_ad.doubleclick.net" dir=out action=block remoteip=172.217.20.230 enable=yes
NETSH advfirewall firewall add rule name="telemetry_acyfdr.explicit.bing.net" dir=out action=block remoteip=204.79.197.201 enable=yes
NETSH advfirewall firewall add rule name="telemetry_a.msft.net" dir=out action=block remoteip=208.76.45.53 enable=yes

:: Block ports (security)

NETSH advfirewall firewall add rule name="Block_TCP-69" dir=in action=block protocol=tcp localport=69 enable=yes
NETSH advfirewall firewall add rule name="Block_TCP-135" dir=in action=block protocol=tcp localport=135 enable=yes
NETSH advfirewall firewall add rule name="Block_TCP-137" dir=in action=block protocol=tcp localport=137 enable=yes
NETSH advfirewall firewall add rule name="Block_TCP-138" dir=in action=block protocol=tcp localport=138 enable=yes
NETSH advfirewall firewall add rule name="Block_TCP-139" dir=in action=block protocol=tcp localport=139 enable=yes
NETSH advfirewall firewall add rule name="Block_TCP-445" dir=in action=block protocol=tcp localport=445 enable=yes
NETSH advfirewall firewall add rule name="Block_TCP-1025" dir=in action=block protocol=tcp localport=1025 enable=yes
NETSH advfirewall firewall add rule name="Block_TCP-4444" dir=in action=block protocol=tcp localport=4444 enable=yes
NETSH advfirewall firewall add rule name="Block_TCP-5000" dir=in action=block protocol=tcp localport=5000 enable=yes


:: Disable poxy use

netsh winhttp reset proxy
REG ADD "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Internet Settings" /v "ProxyEnable" /t REG_SZ /d "0" /f
