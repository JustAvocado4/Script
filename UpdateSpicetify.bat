@echo off
title Updating Spotify

:: to close any spotify the user is running!
echo Closing any running Spotify application...
taskkill /F /IM Spotify.exe 2>nul

:: spacing for easy reading
echo.

:: install client
echo Installing spicetify-cli...
echo.|powershell -Command "iwr -useb https://raw.githubusercontent.com/spicetify/spicetify-cli/master/install.ps1 | iex"

echo Waiting for spicetify-cli installation to finish...
timeout /t 2 /nobreak > nul

:: spacing for easy reading
echo.

:: prompt user about completion
color 0A
echo Installation completed !!!

:: exiting command prompt
timeout /t 2 /nobreak > nul
powershell -Command "exit"