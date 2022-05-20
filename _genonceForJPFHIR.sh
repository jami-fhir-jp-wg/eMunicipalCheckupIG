#!/bin/bash
publisher_jar=publisher.jar
publisherJPFHIR_jar=publisherJPFHIR.jar
input_cache_path=./input-cache/
echo Checking internet connection...
#curl -sSf tx.fhir.org > /dev/null
txjpfhir="-tx http://tx.jpfhir.jp:8099/fx"
curl -sSf $txjpfhir > /dev/null
cp $publisherJPFHIR_jar ./input-cache/$publisher_jar

if [ $? -eq 0 ]; then
	echo "Online"
	txoption=""
else
	echo "Offline"
	txoption="-tx n/a"
fi

echo "$txoption"

publisher=$input_cache_path/$publisher_jar
if test -f "$publisher"; then
	java -jar $publisher -ig . $txoption $txjpfhir $*

else
	publisher=../$publisher_jar
	if test -f "$publisher"; then
		java -jar $publisher -ig . $txoption $txjpfhir $*
	else
		echo IG Publisher NOT FOUND in input-cache or parent folder.  Please run _updatePublisher.  Aborting...
	fi
fi
