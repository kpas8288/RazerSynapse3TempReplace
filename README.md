# RazerSynapse3TempReplace
解决 `Razer Synapse3` 每次启动都生产 `c:\temp` 目录的问题

# 原理
备份并修改四个配置文件
````
%ProgramFiles(x86)%\Razer\Synapse3\Service\NLog.config
%ProgramFiles(x86)%\Razer\Synapse3\WPFUI\Framework\Razer Synapse 3 Host\NLog.config
%ProgramFiles(x86)%\Razer\Synapse3\WPFUI\Framework\Razer.Synapse3.Installer\NLog.config
%ProgramFiles(x86)%\Razer\Synapse3\WPFUI\Framework\Razer.Synapse3.SyncProgress\NLog.config
````
把其中的 `c:\temp` 修改到 `c:\windows\temp`

# 使用
**请使用管理员模式运行 `RazerSynapseTempReplace.bat`**


# 参考
https://www.reddit.com/r/razer/comments/lau14y/synapse_3_temp_folder_being_created/
