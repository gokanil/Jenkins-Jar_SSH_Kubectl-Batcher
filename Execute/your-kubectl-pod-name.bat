@ECHO OFF
 :: -----------------------
SET job="optional-your-jenkins-folder-name/your-jenkins-job-name"
SET pod="your-kubectl-pod-name"
 :: -----------------------
CD ../.batch/
ECHO Starting the execute process.
CALL update %job%
IF %ERRORLEVEL% NEQ 0 GOTO FINISH
ECHO Starting the server update process.
CALL restart %pod%
:FINISH
PAUSE