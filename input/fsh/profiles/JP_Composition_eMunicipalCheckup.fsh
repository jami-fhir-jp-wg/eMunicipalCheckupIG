Profile:        JP_Composition_eMunicipalCheckup
Parent:         JP_Composition_CUPIX
Id:             JP-Composition-eMunicipalCheckup
//Title:          "自治体検診結果報告書　Compositionリソース　文書構成情報"
Description:    "自治体検診結果報告書　Compositionリソース　文書構成情報"
* ^url = "http://jpfhir.jp/fhir/eMunicipalCheckup/StructureDefinition/JP_Composition_eMunicipalCheckup"
* ^status = #draft



* type
  * coding
    * system = "http://jpfhir.jp/fhir/Common/CodeSystem/doc-typecodes"
    * code 1..1 MS
      * ^short = "文書区分コード。”xx：自治体検診結果報告書”を指定。固定値。"
    * code = #xx // TODO: 実際の値に変更する必要がある
    * display 0..1 MS
      * ^short = "文書区分コードの表示名。"
    * display = "自治体検診結果報告書"
  
* category 1..1 MS
  * ^short = "報告区分を表すコードを設定する。このファイルが作成された目的や作成タイミングなどの情報を格納するために使用される。"
  * coding 1..1 MS
    * system 1..1 MS
      * ^short = "報告区分コードのコード体系を識別するURI。固定値。"
//    * system = "urn:oid:2.16.840.1.113883.2.2.1.6.1001" (exactly)
    * system = $report_category_cs (exactly)
    * code 1..1 MS
      * ^short = "報告区分コード。"
    * display 0..1 MS
      * ^short = "コードの表示名。"

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
