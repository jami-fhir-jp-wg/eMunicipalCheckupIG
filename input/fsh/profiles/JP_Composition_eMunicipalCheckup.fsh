Profile:        JP_Composition_eMunicipalCheckup
Parent:         JP_Composition_CUPIX
Id:             JP-Composition-eMunicipalCheckup
//Title:          "自治体検診結果報告書　Compositionリソース　文書構成情報"
Description:    "自治体検診結果報告書　Compositionリソース　文書構成情報"

* ^url = "http://jpfhir.jp/fhir/eMunicipalCheckup/StructureDefinition/JP_Composition_eMunicipalCheckup"
* ^status = #draft
* type
  * coding
    * code
      * ^short = "文書区分コード。”xx：自治体検診結果報告書”を指定。固定値。"
    * code = #xx // TODO: 実際の値に変更する必要がある
    * display = "自治体検診結果報告書"

* category 1..1 MS
  * ^short = "報告区分を表すコードを設定する。このファイルが作成された目的や作成タイミングなどの情報を格納するために使用される。"
  * coding 1..1 MS
    * system 1..1 MS
      * ^short = "報告区分コードのコード体系を識別するURI。固定値。"
    * system = $report_category_cs (exactly)
    * code 1..1 MS
    * code from $report_category_vs
      * ^short = "報告区分コード。"
      // 51：肺がん検診
      // 52：乳がん検診
      // 53：胃がん検診
      // 54：子宮頸がん検診
      // 55：大腸がん検診
      // 56：肝炎検診
      // 57：骨粗鬆症検診
      // 58：歯周疾患検診
    * display 0..1 MS
      * ^short = "コードの表示名。"

* subject only Reference(JP_Patient_eMunicipalCheckup)
* encounter only Reference(JP_Encounter_eMunicipalCheckup)
* author[practitionerRole] only Reference(JP_PractitionerRole_eMunicipalCheckup)
* author[organizationProvider] only Reference(JP_Organization_eMunicipalCheckup_Provider)
* custodian only Reference(JP_Organization_eMunicipalCheckup_Provider)

* event
  * code
    * coding
      * ^short = "自治体検診の健診プログラムサービスコード（検診区分）"
      * system = $checkup_type_cs (exactly)
        * ^short = "自治体検診の健診プログラムサービスコード（検診区分）を識別するURI。固定値。"
      * code  from $checkup_type_vs // 健診プログラムサービスコード（検診区分）
      //1：一次検診
      // 2：二次検診
      // 3:一次検診と精密検査の同時実施
  * detail only Reference(JP_Encounter_eMunicipalCheckup)

//検査結果セクション
* section[OBSERVATION]
  * entry[COV] only Reference(JP_Coverage_eMunicipalCheckup)
    * ^short = "検査結果セクションに含まれる保険証情報および受診券情報をあらわすCoverageリソースへの参照。"
  * entry[OBS] only Reference(JP_Observation_eMunicipalCheckup or JP_Observation_eMunicipalCheckup_Group)
    * ^short = "検査結果セクションに含まれる検査結果または検査結果グループを示すObservationリソースへの参照。"

//問診結果セクション
* section[QUESTIONAIRRE]
  * entry only Reference(JP_Observation_eMunicipalCheckup or JP_Observation_eMunicipalCheckup_Group)
    * ^short = "問診結果セクションに含まれる検査結果または検査結果グループを示すObservationリソースへの参照。"

//添付書類セクション
* section[ATTACHMENT]
  * entry only Reference(JP_DocumentReference_eMunicipalCheckup or JP_DiagnosticReport_eMunicipalCheckup)
    * ^short = "添付書類セクションに含まれるドキュメントまたは診断レポートを示すObservationリソースへの参照。"
