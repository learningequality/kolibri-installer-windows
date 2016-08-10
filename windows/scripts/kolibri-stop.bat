rem kill port :8080 to stop kolibri server

FOR /F "tokens=5 delims= " %%P % %IN ('netstat -a -n -o ^| findstr %:8080.*LISTENING') DO TaskKill.exe /F /PID %%P%
pause

rem REF: http://stackoverflow.com/questions/6204003/kill-a-process-by-looking-up-the-port-being-used-by-it-from-a-bat