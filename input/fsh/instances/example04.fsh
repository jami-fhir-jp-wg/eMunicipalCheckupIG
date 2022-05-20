Instance: example04
InstanceOf: Practitioner
Usage: #example
Description: "例4 Practitionerリソース_作成者情報_記述例"
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p>東京太郎（トウキョウタロウ）</p></div>"
* name[0].extension.url = "http://hl7.org/fhir/StructureDefinition/iso21090-EN-representation"
* name[=].extension.valueCode = #IDE
* name[=].text = "東京　太郎"
* name[=].family = "東京"
* name[=].given = "太郎"
* name[+].extension.url = "http://hl7.org/fhir/StructureDefinition/iso21090-EN-representation"
* name[=].extension.valueCode = #SYL
* name[=].text = "トウキョウ　タロウ"
* name[=].family = "トウキョウ"
* name[=].given = "タロウ"
