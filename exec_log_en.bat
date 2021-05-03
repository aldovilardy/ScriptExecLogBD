@echo off
echo. Execution script and error log for *.sql scripts
echo. Autor: Aldo Vilardy 30/02/2015
echo. The error log will be regitered into the file info.txt
if exist info.txt ( 
erase info.txt)
for %%G in (*.sql) do (sqlcmd /S 127.0.0.1 /d Briefing2 -E -i"%%G" -b -o msg.txt
if errorlevel 1 (
echo. >> info.txt
echo.%date:~6,4%-%date:~3,2%-%date:~0,2% %time:~0,8% Script Error %%G >> info.txt
for /F "tokens=*" %%A in (msg.txt) do @echo %%A >> info.txt ))
if not exist "info.txt" (
echo. No errors were reported in the execution of the scripts
echo. No errors were reported in the execution of the scripts >> info.txt)
del msg.txt
pause