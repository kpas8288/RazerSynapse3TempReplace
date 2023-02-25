@echo off

echo backup... 
copy "%ProgramFiles(x86)%\Razer\Synapse3\Service\NLog.config" "%ProgramFiles(x86)%\Razer\Synapse3\Service\NLog.config.bak"
copy "%ProgramFiles(x86)%\Razer\Synapse3\WPFUI\Framework\Razer Synapse 3 Host\NLog.config" "%ProgramFiles(x86)%\Razer\Synapse3\WPFUI\Framework\Razer Synapse 3 Host\NLog.config.bak"
copy "%ProgramFiles(x86)%\Razer\Synapse3\WPFUI\Framework\Razer.Synapse3.Installer\NLog.config" "%ProgramFiles(x86)%\Razer\Synapse3\WPFUI\Framework\Razer.Synapse3.Installer\NLog.config.bak"
copy "%ProgramFiles(x86)%\Razer\Synapse3\WPFUI\Framework\Razer.Synapse3.SyncProgress\NLog.config" "%ProgramFiles(x86)%\Razer\Synapse3\WPFUI\Framework\Razer.Synapse3.SyncProgress\NLog.config.bak"

echo replace...
powershell -Command "(gc '%ProgramFiles(x86)%\Razer\Synapse3\Service\NLog.config') -replace 'c:\\temp', 'c:\windows\temp' | Out-File -encoding utf8 '%ProgramFiles(x86)%\Razer\Synapse3\Service\NLog.config' "
powershell -Command "(gc '%ProgramFiles(x86)%\Razer\Synapse3\WPFUI\Framework\Razer Synapse 3 Host\NLog.config') -replace 'c:\\temp', 'c:\windows\temp' | Out-File -encoding utf8 '%ProgramFiles(x86)%\Razer\Synapse3\WPFUI\Framework\Razer Synapse 3 Host\NLog.config' "
powershell -Command "(gc '%ProgramFiles(x86)%\Razer\Synapse3\WPFUI\Framework\Razer.Synapse3.Installer\NLog.config') -replace 'c:\\temp', 'c:\windows\temp' | Out-File -encoding utf8 '%ProgramFiles(x86)%\Razer\Synapse3\WPFUI\Framework\Razer.Synapse3.Installer\NLog.config' "
powershell -Command "(gc '%ProgramFiles(x86)%\Razer\Synapse3\WPFUI\Framework\Razer.Synapse3.SyncProgress\NLog.config') -replace 'c:\\temp', 'c:\windows\temp' | Out-File -encoding utf8 '%ProgramFiles(x86)%\Razer\Synapse3\WPFUI\Framework\Razer.Synapse3.SyncProgress\NLog.config' "

echo done!

pause