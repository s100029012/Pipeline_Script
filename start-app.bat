@echo off
set BUILD_ID=DontKillMe
rem d:
rem cd D:\Progs\services
mkdir %CD%\apps\logs
start /B %JAVA_HOME%/bin/java -jar spring-boot/build/libs/spring-boot-0.0.1-SNAPSHOT.jar >> %CD%\apps\logs\app.log 2>&1
