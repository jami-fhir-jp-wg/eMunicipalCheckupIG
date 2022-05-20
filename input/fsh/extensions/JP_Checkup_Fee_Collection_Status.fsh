Extension: JP_Checkup_Fee_Collection_Status
Id: JP-Checkup-Fee-Collection-Status
Description: "自治体検診の費用徴収区分を表現する拡張"
* ^url = "http://jpfhir.jp/fhir/eCheckup/Extension/StructureDefinition/JP_Checkup_Fee_Collection_Status"
* ^version = "1.0.0"
* ^status = #draft
* ^context.type = #element
* ^context.expression = "Encounter"
* . ^short = "費用徴収区分"
* . ^comment = "自治体検診の費用徴収区分を表現する拡張"
* url = "http://jpfhir.jp/fhir/eCheckup/Extension/StructureDefinition/JP_Checkup_Fee_Collection_Status" (exactly)
* value[x] only string
