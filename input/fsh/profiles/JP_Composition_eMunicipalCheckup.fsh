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

* category 1..1 MS
  * coding 1..1 MS
    * code = #51 (exactly)

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
      * code = #1 (exactly)


  * detail only Reference(JP_Encounter_eMunicipalCheckup)


//検査結果セクション
* section[OBSERVATION]
  * entry[COV] only Reference(JP_Coverage_eMunicipalCheckup)
  * entry[OBS] only Reference(JP_Observation_eMunicipalCheckup or JP_Observation_eMunicipalCheckup_Group)

//問診結果セクション
* section[QUESTIONAIRRE]
  * entry only Reference(JP_Observation_eMunicipalCheckup or JP_Observation_eMunicipalCheckup_Group)
    * reference 1..1
      * ^short = "参照先のリソースのfullUrl要素に指定されるUUID。"

//添付書類セクション
* section[ATTACHMENT]
  * entry only Reference(JP_DocumentReference_eMunicipalCheckup or JP_DiagnosticReport_eMunicipalCheckup)
