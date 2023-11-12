@echo off
goto app.moose.login
:app.moose.login
cls
title gameOS Login.
echo Welcome to gameOS!
echo.
echo Please enter your pcID username.
set /p function.moose.login.username=
echo Please enter your pcID password.
set /p function.moose.login.password=
reg query "HKCU\Software\Moose\pcOS" > nul 2>&1
if %errorlevel% equ 0 (
    for /f "tokens=2*" %%a in ('reg query "HKCU\Software\Moose\pcOS" /v username ^| find "username"') do (
        set "username_value=%%b"
    )
    for /f "tokens=2*" %%a in ('reg query "HKCU\Software\Moose\pcOS" /v password ^| find "password"') do (
        set "password_value=%%b"
    )
    if !username_value! equ %function.moose.login.username% (
        if !password_value! equ %function.moose.login.password% (
            goto app.moose.home
        )
    )
)
echo Is this your first time using gameOS Store? If so, please create a pcID to use on gameOS Store.
echo.
echo Press 1 and then enter to create a pcID (also select this option if you have forgotton your username/password).
echo Press 2 and then enter to exit gameOS.
set /p function.moose.login.option=
if %function.moose.login.option% == 1 goto app.moose.login.create
if %function.moose.login.option% == 2 goto app.moose.login.exit
:app.moose.login.create
cls
title Create a new pcID.
echo Welcome to the pcID creation wizard.
echo.
echo What is pcID?
powershell "irm https://raw.githubusercontent.com/MooseSoftware/UserServices/main/Moose/pcid.txt"
echo.
pause
echo Connecting to the internet to download the Moose Online Services Agreement...
echo.
powershell "irm https://raw.githubusercontent.com/MooseSoftware/UserServices/main/Moose/tos.txt"
echo.
echo Do you agree to the Moose Online Services Agreement?
echo Press 1 and then enter for yes.
echo Press 2 and then enter for no (but then y'know, no gameOS Store).
set /p function.moose.login.tos=
if %function.moose.login.tos% == 1 goto app.moose.login.create.accept
if %function.moose.login.tos% == 2 goto app.moose.login.create.decline
:app.moose.login.create.accept
cls
echo Please enter your desired username for your pcID.
set /p function.moose.login.username=
if exist "C:\pcOS\Users\%username%" (
    echo.
    echo Sorry, that pcID is already taken.
    echo Please try again.
    echo.
    goto app.moose.login.create
)
echo.
echo Please enter your desired password for your pcID.
set /p function.moose.login.password=
echo.
echo Please confirm your password.
set /p function.moose.login.password.confirm=
if %function.moose.login.password% neq %function.moose.login.password.confirm% (
    echo.
    echo Sorry, your passwords do not match.
    echo Please try again.
    echo.
    goto app.moose.login.create
)
reg add "HKCU\Software\Moose\pcOS" /v username /d "%function.moose.login.username%" /f
reg add "HKCU\Software\Moose\pcOS" /v password /d "%function.moose.login.password%" /f
echo.
echo Your account has been created.
echo.
pause
reg add "HKCU\Software\Moose\gameOS-Store" /v firstrun /d 1 /f
goto app.moose.login
:app.moose.login.create.decline
cls
echo Sorry, you must agree to the Moose Online Services Agreement to use gameOS Store.
echo.
echo If you would like to agree to the TOS, press 1 and then enter.
echo If you would like to exit gameOS Store, press 2 and then enter.
set /p function.moose.login.tos.decline=
if %function.moose.login.tos.decline% == 1 goto app.moose.login.create.accept
if %function.moose.login.tos.decline% == 2 goto app.moose.login.exit
:app.moose.login.exit
cls
echo Thank you for using gameOS Store!
echo.
echo Press any key to exit.
pause > nul
exit
:app.moose.home
cls
title gameOS Store
echo Welcome to the gameOS Store, %function.moose.login.username%!
echo.
echo New releases:
echo Press 1 and then enter to view Life Simulator.
echo.
echo You've reached the end of the gameOS Store.
echo.
set /p function.moose.home.option=
if %function.moose.home.option% == 1 goto app.moose.store.lifesim
:app.moose.store.lifesim
cls
title gameOS Store - Life Simulator
echo Publisher: Moose Game Studios
echo Price: Free
echo.
echo Description: Life Simulator is a game where you make all of the choices, from choosing what you eat, to answering the phone to your parents!
echo.
echo Rating: 18+ (contains strong language (swearing) and sexual references).
echo.
echo Press 1 and then enter to play Life Simulator.
echo Press 2 and then enter to return to the gameOS Store.
set /p function.moose.store.lifesim.option=
if %function.moose.store.lifesim.option% == 1 goto app.moose.store.lifesim.play
if %function.moose.store.lifesim.option% == 2 goto app.moose.home
:app.moose.store.lifesim.play
cls
title Connecting to the internet... please wait... (Life Simulator)
echo Connecting to the internet... please wait...
echo.
echo Downloading Life Simulator...
echo.
powershell "irm https://raw.githubusercontent.com/MooseSoftware/UserServices/main/Moose/gameOS-lifesim.ps1 | iex"
goto app.moose.home
