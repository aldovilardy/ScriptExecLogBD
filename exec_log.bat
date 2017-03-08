@echo off
echo. Script de ejecucion y bitacora de errores de scripts *.sql
echo. Autor: Aldo Vilardy 30/02/2015
echo. La bitacora de ejecucion queda regitrada en el fichero info.txt
if exist info.txt ( 
erase info.txt)
for %%G in (*.sql) do (sqlcmd /S 127.0.0.1 /d NembreBaseDatos -E -i"%%G" -b -o msg.txt
if errorlevel 1 (
echo. >> info.txt
echo.%date:~6,4%-%date:~3,2%-%date:~0,2% %time:~0,8% Error en script %%G >> info.txt
for /F "tokens=*" %%A in (msg.txt) do @echo %%A >> info.txt ))
if not exist "info.txt" (
echo. No se reportaron errores en la ejecucion de los scripts
echo. No se reportaron errores en la ejecucion de los scripts >> info.txt)
del msg.txt
pause