Instance: Inline-Instance-for-GOFSH-GENERATED-ID-28-6
InstanceOf: Encounter
Usage: #inline
* extension[0].url = "http://jpfhir.jp/fhir/eCheckup/Extension/StructureDefinition/JP_Fiscal_Year_At_Primary_Checkup"
* extension[=].valueDate = "2021"
* extension[+].url = "http://jpfhir.jp/fhir/eCheckup/Extension/StructureDefinition/JP_Checkup_Fee_Collection_Status"
* extension[=].valueString = "本人負担はありません。"
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p>骨粗鬆症検診</p><p>2021年10月1日</p></div>"
* status = #finished
* class = $encounter_cateogry_cs#checkup "健診"
* serviceType = $checkup_encounter_type_cs#1 "個別受診"
* period.start = "2021-10-01"
* period.end = "2021-10-01"
* serviceProvider = Reference(urn:uuid:d1fb6063-8f12-4c2c-922a-7b5e467c8407)