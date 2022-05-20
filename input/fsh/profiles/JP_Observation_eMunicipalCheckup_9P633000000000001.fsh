Profile:        JP_Observation_eMunicipalCheckup_9P633000000000001
Parent:         JP_Observation_eMunicipalCheckup
Id:             JP-Observation-eMunicipalCheckup-9P633000000000001
Description:    "自治体検診結果報告書　Observationリソース　検査項目情報(骨粗鬆症検診の問診：閉経年齢)"
* ^url = "http://jpfhir.jp/fhir/eMunicipalCheckup/StructureDefinition/JP_Observation_eMunicipalCheckup_9P633000000000001"
* ^status = #draft

* category 1..1 MS
  * coding 1..1 MS
    * obeys emc-obs-9P633000000000001-cat

* code 1..1 MS
  * ^short = "健診項目コード。健診項目を識別するJLAC10コードを指定。" //Issueとして挙げる
  * coding 1..1 MS
    * obeys emc-obs-9P633000000000001-code and emc-obs-9P633000000000001-disp

* value[x] only Quantity
* valueQuantity 1..1 MS
  * ^short = "数値（物理量）型の結果の場合に使用する。"
  * obeys emc-obs-9P633000000000001-unit



Invariant: emc-obs-9P633000000000001-cat
Description: "category.coding.code should be 'exam'."
Expression: "code = 'exam'"
Severity: #warning

Invariant: emc-obs-9P633000000000001-code
Description: "code.coding.code must be '9P633000000000001'."
Expression: "code = '9P633000000000001'"
Severity: #error

Invariant: emc-obs-9P633000000000001-disp
Description: "code.coding.display should be '骨粗鬆症検診の問診：閉経年齢'."
Expression: "display = '骨粗鬆症検診の問診：閉経年齢'"
Severity: #warning

Invariant: emc-obs-9P633000000000001-unit
Description: "valueQuantity.code should be 'a'."
Expression: "code = 'a'"
Severity: #warning

