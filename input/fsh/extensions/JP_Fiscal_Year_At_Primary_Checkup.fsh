Extension: JP_Fiscal_Year_At_Primary_Checkup
Id: JP-Fiscal-Year-At-Primary-Checkup
Description: "一次検診の受診年度を表現する拡張"
* ^url = "http://jpfhir.jp/fhir/eCheckup/Extension/StructureDefinition/JP_Fiscal_Year_At_Primary_Checkup"
* ^version = "1.0.0"
* ^status = #draft
* ^context.type = #element
* ^context.expression = "Encounter"
* . ^short = "一次検診受診年度"
* . ^comment = "一次検診の受診年度を表現する拡張"
* url = "http://jpfhir.jp/fhir/eCheckup/Extension/StructureDefinition/JP_Fiscal_Year_At_Primary_Checkup" (exactly)
* value[x] only date
