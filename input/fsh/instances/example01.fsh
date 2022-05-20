Instance: example01
InstanceOf: Patient
Usage: #example
Description: "例1 Patientリソース_受診者情報_記述例"
* extension.url = "http://jpfhir.jp/fhir/eCheckup/Extension/StructureDefinition/JP_Age_At_Event"
* extension.extension[0].url = "age"
* extension.extension[=].valueAge = 66 'a' "歳"
* extension.extension[+].url = "event"
* extension.extension[=].valueReference = Reference(urn:uuid:3af3232e-1579-d4f6-3578-aa1e799fdcad)
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">健診太郎（ケンシンタロウ） 1955年5月4日 男性</div>"
* identifier.system = "urn:oid:1.2.392.200119.6.102.11234567890"
* identifier.value = "34567"
* name[0].extension.url = "http://hl7.org/fhir/StructureDefinition/iso21090-EN-representation"
* name[=].extension.valueCode = #IDE
* name[=].use = #official
* name[=].text = "健診　太郎"
* name[=].family = "健診"
* name[=].given = "太郎"
* name[+].extension.url = "http://hl7.org/fhir/StructureDefinition/iso21090-EN-representation"
* name[=].extension.valueCode = #SYL
* name[=].use = #official
* name[=].text = "ケンシン　タロウ"
* name[=].family = "ケンシン"
* name[=].given = "タロウ"
* telecom.system = #phone
* telecom.value = "03-1111-2222"
* telecom.use = #home
* gender = #male
* birthDate = "1955-05-04"
* address.text = "神奈川県横浜市港区１－２－３"
* address.postalCode = "123-4567"
* address.country = "JP"