for f in input/fsh/profiles/*.egg;do filepp $f >$f.fsh;done;sushi  . 

cp fsh-generated/resources/*.json  package/ ; gtar czf package.tgz package ; java -jar ../work/validator_cli.jar   fsh-generated/resources/Bundle-example17.json   -showReferenceMessages  -version 4.0.1  -ig jp-core.draft1#1.1.0-beta  -ig package.tgz  -profile http://jpfhir.jp/fhir/eMunicipalCheckup/StructureDefinition/JP_Bundle_eMunicipalCheckup  -html-output output.html

