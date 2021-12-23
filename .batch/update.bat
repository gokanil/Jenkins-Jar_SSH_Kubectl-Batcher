SET area=Jenkins
SET job=%~1
FOR /F "delims=" %%a IN ('call ini.cmd %area% Service') DO SET service=%%a
FOR /F "delims=" %%a IN ('call ini.cmd %area% User') DO SET user=%%a
FOR /F "delims=" %%a IN ('call ini.cmd %area% Password') DO SET password=%%a
cd ../.apps
IF NOT EXIST jenkins-cli.jar (
curl -o jenkins-cli.jar %service%/jenkins/jnlpJars/jenkins-cli.jar --ssl-no-revoke
)
java -jar jenkins-cli.jar -s %service% -webSocket -auth %user%:%password% build "%job%" -s -v