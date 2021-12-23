 :: key fingureprint path => HKEY_CURRENT_USER\Software\SimonTatham\PuTTY\SshHostKeys
SET area=SSH
SET pod=%~1
FOR /F "delims=" %%a in ('call ini.cmd %area% Namespace') DO SET namespace=%%a
FOR /F "delims=" %%a in ('call ini.cmd %area% Server') DO SET server=%%a
FOR /F "delims=" %%a in ('call ini.cmd %area% Password') DO SET password=%%a
cd ../.apps/
ECHO y | PLINK.EXE -ssh %server% -pw %password% "exit"
ECHO.
FOR /F "tokens=*" %%F IN ('PLINK.EXE -batch %server% -pw %password% "kubectl get pod -n %namespace% -o custom-columns=":metadata.name" | grep %pod%"') DO (
PLINK.EXE -batch %server% -pw %password% "kubectl delete pod %%F -n %namespace%"
)