@echo off
setlocal enabledelayedexpansion
set port=8080
echo "will kill port: %port% in process"
for /f "tokens=1-5" %%a in ('netstat -nao ^| find "%port%"') do (
    if "%%e%" == "" (
        set pid=%%e
    ) else (
         set pid=%%e
    )
    echo !pid!
)
if NOT "!pid!" == "" (
   taskkill /f /pid !pid!
)
