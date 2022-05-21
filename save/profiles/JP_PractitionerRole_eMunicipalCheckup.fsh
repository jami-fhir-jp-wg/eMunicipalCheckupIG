// Profile
Profile:        JP_PractitionerRole_eMunicipalCheckup
Parent:         JP_PractitionerRole_CUPIX
Id:             JP-PractitionerRole-eMunicipalCheckup
//Title:          "自治体検診結果報告書　PractitionerRoleリソース　文書作成者役割情報"
Description:    "自治体検診結果報告書　PractitionerRoleリソース　文書作成者役割情報"
* ^url = "http://jpfhir.jp/fhir/eMunicipalCheckup/StructureDefinition/JP_PractitionerRole_eMunicipalCheckup"
* ^status = #draft


* practitioner only Reference(JP_Practitioner_eMunicipalCheckup)

* organization only Reference(JP_Organization_eMunicipalCheckup_Provider)
