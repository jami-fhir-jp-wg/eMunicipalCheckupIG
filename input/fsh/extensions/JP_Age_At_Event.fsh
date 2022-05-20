Extension: JP_Age_At_Event
Id: JP-Age-At-Event
Description: "検診受診時の年齢を表現する拡張"
* ^url = "http://jpfhir.jp/fhir/eCheckup/Extension/StructureDefinition/JP_Age_At_Event"
* ^version = "1.0.0"
* ^status = #draft
* ^context.type = #element
* ^context.expression = "Patient"
* . ^short = "受診時年齢"
* . ^comment = "検診受診時の年齢を表現する拡張"
* url = "http://jpfhir.jp/fhir/eCheckup/Extension/StructureDefinition/JP_Age_At_Event" (exactly)
* extension contains
    age 1..1 MS and
    event 1..1 MS
* extension[age]
  * ^short = "受診時年齢"
  * url = "age" (exactly)
  * value[x] only Age
  * valueAge.value 1..1 MS
  * valueAge.unit = "歳" (exactly)
  * valueAge.system = $ucum (exactly)
  * valueAge.code = #a
* extension[event]
  * ^short = "検診実施情報"
  * url = "event" (exactly)
  * value[x] only Reference
  * valueReference only Reference(JP_Encounter_eMunicipalCheckup)
  * valueReference.reference 1..1 MS
