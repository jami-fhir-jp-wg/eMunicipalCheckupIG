Profile:        JP_Observation_eMunicipalCheckup_7A030161506144349
Parent:         JP_Observation_eMunicipalCheckup
Id:             JP-Observation-eMunicipalCheckup-7A030161506144349
Description:    "自治体検診結果報告書　Observationリソース　検査項目情報(肺がん検診の喀痰検査受診日)"
* ^url = "http://jpfhir.jp/fhir/eMunicipalCheckup/StructureDefinition/JP_Observation_eMunicipalCheckup_7A030161506144349"
* ^status = #draft

* category 1..1 MS
  * coding 1..1 MS
    * obeys emc-obs-7A030161506144349-cat

* code 1..1 MS
  * ^short = "健診項目コード。健診項目を識別するJLAC10コードを指定。" //Issueとして挙げる
  * coding 1..1 MS
    * obeys emc-obs-7A030161506144349-code and emc-obs-7A030161506144349-disp

* value[x] only dateTime
* valueDateTime 1..1 MS
  * ^short = "日付型の検診結果の場合に使用する"



Invariant: emc-obs-7A030161506144349-cat
Description: "category.coding.code should be 'laboratory'."
Expression: "code = 'laboratory'"
Severity: #warning

Invariant: emc-obs-7A030161506144349-code
Description: "code.coding.code must be '7A030161506144349'."
Expression: "code = '7A030161506144349'"
Severity: #error

Invariant: emc-obs-7A030161506144349-disp
Description: "code.coding.display should be '肺がん検診の喀痰検査受診日'."
Expression: "display = '肺がん検診の喀痰検査受診日'"
Severity: #warning

