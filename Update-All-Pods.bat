@ECHO OFF
cd Execute
FOR %%i in (*.bat) DO (
ECHO %%i
CALL %%i
)
PAUSE