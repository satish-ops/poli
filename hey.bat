@echo %AME%

:: BatchGotAdmin        
:-------------------------------------        
REM  --> Check for permissions  
>nul 2>&1 "%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system"  
REM --> If error flag set, we do not have admin.  
if '%errorlevel%' NEQ '0' (    echo Requesting administrative privileges...    ) else ( goto gotAdmin )  
:UACPrompt  
    echo Set UAC = CreateObject^("Shell.Application"^) > "%temp%\getadmin.vbs"  
    echo UAC.ShellExecute "%~s0", "", "", "runas", 1 >> "%temp%\getadmin.vbs"  
    "%temp%\getadmin.vbs"  
    exit /B
:gotAdmin  



                bat 'echo %AME% > AME.txt'
                script{
                def version = readFile "${env.WORKSPACE}/AME.txt"
                //print(version)
                String[] a = version.split("\\\\")
                b =(a[-2])
                //println(b)
                c = version.replace(b , "20.1")
                print(c)

setx -m AME "C:\Users\PKS1\AppData\Roaming\winbin\lms\amesim\15.1\vendor"

pause