@Echo File by Kauan Fonseca
@Echo Off
echo.
echo -----------------------------------
echo        Reiniciando Aplicativos
echo -----------------------------------
echo.

taskkill /f /fi "USERNAME eq %USERNAME%" > nul 2>&1

:: Reiniciar o serviço de áudio do Windows ::

net stop Audiosrv > nul 2>&1
net start Audiosrv > nul 2>&1
net stop VIAKaraokeService > nul 2>&1
net start VIAKaraokeService > nul 2>&1

:: Reiniciar o serviço de rede ::

net stop LanmanWorkstation > nul 2>&1
net start LanmanWorkstation > nul 2>&1

:: Reiniciar o serviço de firewall do Windows ::

net stop MpsSvc > nul 2>&1
net start MpsSvc > nul 2>&1

:: Reiniciar o serviço de gerenciamento de eventos do Windows ::

net stop EventLog > nul 2>&1
net start EventLog > nul 2>&1

:: Reiniciar o serviço de serviço de perfil de usuário ::

net stop ProfSvc > nul 2>&1
net start ProfSvc > nul 2>&1

:: Reiniciando Explorer ::

taskkill /F /IM explorer.exe > nul 2>&1
timeout /t 2 /nobreak > nul 2>&1
start explorer.exe
exit