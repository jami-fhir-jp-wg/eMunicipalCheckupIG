//* code = $observationGroup_codes_cs#7A030 "喀痰検査"
//* code = $observationGroup_codes_cs#9P500 "胸部エックス線検査"
// Alias: $EMCUPX_observationGroup_codes_cs = http://jpfhir.jp/fhir/eCheckup/CodeSystem/observationGroup-codes
// Alias: $EMCUPX_observationGroup_codes_vs = http://jpfhir.jp/fhir/eMunicipalCheckup/ValueSet/observationGroup-codes



Profile:        JP_Observation_eMunicipalCheckup_Group
Parent:         JP_Observation_Group_CUPIX
Id:             JP-Observation-eMunicipalCheckup-Group
//Title:          "自治体検診結果報告書　Observationリソース　検査項目グループ情報"
Description:    "自治体検診結果報告書　Observationリソース　検査項目グループ情報"
* ^url = "http://jpfhir.jp/fhir/eMunicipalCheckup/StructureDefinition/JP_Observation_eMunicipalCheckup_Group"
* ^status = #draft
* obeys emc-obs-1 and emc-obs-g1

* code from $EMCUPX_observationGroup_codes_vs  (required) // from Aliases in VS-CS-eMunicipalCheckup

* subject only Reference(JP_Patient_eMunicipalCheckup)

* value[x] 0..0
* bodySite 0..0
* method 0..0
* device 0..0

* specimen 0..1 MS
* specimen only Reference(JP_Specimen_eMunicipalCheckup)
  * ^short = "検体情報への参照。FHIR JP 検体検査プロファイルに準拠し、検体検査の場合は必須で指定する。検体検査以外の健診項目の場合は、省略可能。"
  * reference 1..1 MS
    * ^short = "Specimenリソースへの参照。fullUrlプロパティに指定されたUUIDを指定する。"

* hasMember only Reference(JP_Observation_eMunicipalCheckup)
  * ^short = "健診項目グループを表現する場合に、グループ内の健診項目に対応するObservationリソースへの参照を表現する。"

// 各種制約
Invariant: emc-obs-g1
Description: "hasMember must not be populated in case status='cancelled'. (status='cancelled'の場合hasMemberは出現しないこと)"
Expression: "(status = 'final' and hasMember.exists()) or (status = 'cancelled' and hasMember.empty())"
Severity: #error
