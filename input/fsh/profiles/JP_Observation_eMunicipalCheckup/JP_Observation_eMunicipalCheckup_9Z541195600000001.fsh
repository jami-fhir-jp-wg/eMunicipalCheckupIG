Profile:        JP_Observation_eMunicipalCheckup_9Z541195600000001
Parent:         JP_Observation_eMunicipalCheckup
Id:             JP-Observation-eMunicipalCheckup-9Z541195600000001
Description:    "自治体検診結果報告書　Observationリソース　検査項目情報(骨粗鬆症検診の超音波検査骨量値)"
* ^url = "http://jpfhir.jp/fhir/eMunicipalCheckup/StructureDefinition/JP_Observation_eMunicipalCheckup_9Z541195600000001"
* ^status = #draft

* category 1..1 MS
  * coding 1..1 MS
    * obeys emc-obs-9Z541195600000001-cat

* code 1..1 MS
  * ^short = "健診項目コード。健診項目を識別するJLAC10コードを指定。" //Issueとして挙げる
  * coding 1..1 MS
    * obeys emc-obs-9Z541195600000001-code and emc-obs-9Z541195600000001-disp

* value[x] only Quantity
* valueQuantity 1..1 MS
  * ^short = "数値（物理量）型の結果の場合に使用する。"
  * obeys emc-obs-9Z541195600000001-unit



Invariant: emc-obs-9Z541195600000001-cat
Description: "category.coding.code should be 'imaging'."
Expression: "code = 'imaging'"
Severity: #warning

Invariant: emc-obs-9Z541195600000001-code
Description: "code.coding.code must be '9Z541195600000001'."
Expression: "code = '9Z541195600000001'"
Severity: #error

Invariant: emc-obs-9Z541195600000001-disp
Description: "code.coding.display should be '骨粗鬆症検診の超音波検査骨量値'."
Expression: "display = '骨粗鬆症検診の超音波検査骨量値'"
Severity: #warning

Invariant: emc-obs-9Z541195600000001-unit
Description: "valueQuantity.code should be '{%YAM}'."
Expression: "code = '{%YAM}'"
Severity: #warning

