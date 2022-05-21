Profile:        JP_Composition_eMunicipalCheckup
Parent:         JP_Composition_CUPIX
Id:             JP-Composition-eMunicipalCheckup
//Title:          "自治体検診結果報告書　Compositionリソース　文書構成情報"
Description:    "自治体検診結果報告書　Compositionリソース　文書構成情報"
* ^url = "http://jpfhir.jp/fhir/eMunicipalCheckup/StructureDefinition/JP_Composition_eMunicipalCheckup"
* ^status = #draft

* type
  * coding
    * display = "自治体検診結果報告書"

* subject only Reference(JP_Patient_eMunicipalCheckup)
* encounter only Reference(JP_Encounter_eMunicipalCheckup)
* author 1..2 MS
* author[practitionerRole] only Reference(JP_PractitionerRole_eMunicipalCheckup)
* author[organizationProvider] only Reference(JP_Organization_eMunicipalCheckup_Provider)
* custodian only Reference(JP_Organization_eMunicipalCheckup_Provider)

* event
  * code
    * coding
      * ^short = "自治体検診の検診区分。"
      * system = "http://jpfhir.jp/fhir/eCheckup/CodeSystem/checkup-type-code"
        * ^short = "自治体検診の検診区分を識別するURI。固定値。"
      * code

  * detail only Reference(JP_Encounter_eMunicipalCheckup)


//検査結果セクション
* section[OBSERVATION]
  * entry[OBS] only Reference(JP_Observation_eMunicipalCheckup or JP_Observation_eMunicipalCheckup_Group)
  * entry[COV] only Reference(JP_Coverage_eMunicipalCheckup)


//問診結果セクション
* section[QUESTIONAIRRE]
  * entry only Reference(JP_Observation_eMunicipalCheckup)


//添付書類セクション
* section[ATTACHMENT]
  * entry only Reference(JP_DocumentReference_eMunicipalCheckup)
