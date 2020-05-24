@echo off
set JOLIE_HOME_FUNC=%CD%\jolie_bin
java -ea:jolie... -ea:joliex... -jar %JOLIE_HOME_FUNC%\jolie.jar -l .\lib\*;%JOLIE_HOME_FUNC%\lib;%JOLIE_HOME_FUNC%\javaServices\*;%JOLIE_HOME_FUNC%\extensions\* -i %JOLIE_HOME_FUNC%\include -C AzureFunctionsPort="\"socket://localhost:%FUNCTIONS_HTTPWORKER_PORT%\"" %*
		
