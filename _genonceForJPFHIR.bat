@ECHO OFF
SET publisher_jar=publisher.jar
SET publisherJPFHIR_jar=publisherJPFHIR.jar
SET input_cache_path=%CD%\input-cache
SET txjpfhir="-tx http://tx.jpfhir.jp:8099/fx"
COPY %publisherJPFHIR_jar% %input_cache_path%\%publisher_jar%

ECHO Checking internet connection...
PING tx.jpfhir.jp -4 -n 1 -w 1000 | FINDSTR TTL && GOTO isonline
ECHO We're offline...
SET txoption=-tx n/a
GOTO igpublish

:isonline
ECHO We're online
SET txoption=

:igpublish

SET JAVA_TOOL_OPTIONS=-Dfile.encoding=UTF-8

IF EXIST "%input_cache_path%\%publisher_jar%" (
	d:\jdk-11.0.2\bin\java.exe -jar "%input_cache_path%\%publisher_jar%" -ig . %txoption% %txjpfhir% %*
) ELSE If exist "..\%publisher_jar%" (
	d:\jdk-11.0.2\bin\java.exe -jar "..\%publisher_jar%" -ig . %txoption% %txjpfhir% %*
) ELSE (
	ECHO IG Publisher NOT FOUND in input-cache or parent folder.  Please run _updatePublisher.  Aborting...
)

PAUSE
