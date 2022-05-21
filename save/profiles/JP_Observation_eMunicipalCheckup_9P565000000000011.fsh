Profile:        JP_Observation_eMunicipalCheckup_9P565000000000011
Parent:         JP_Observation_eMunicipalCheckup
Id:             JP-Observation-eMunicipalCheckup-9P565000000000011
Description:    "自治体検診結果報告書　Observationリソース　検査項目情報(子宮頸がん検診の精密検査結果)"
* ^url = "http://jpfhir.jp/fhir/eMunicipalCheckup/StructureDefinition/JP_Observation_eMunicipalCheckup_9P565000000000011"
* ^status = #draft

* category 1..1 MS
  * coding 1..1 MS
    * obeys emc-obs-9P565000000000011-cat

* code 1..1 MS
  * ^short = "健診項目コード。健診項目を識別するJLAC10コードを指定。" //Issueとして挙げる
  * coding 1..1 MS
    * obeys emc-obs-9P565000000000011-code and emc-obs-9P565000000000011-disp

* value[x] only CodeableConcept
* valueCodeableConcept 1..1 MS
  * ^short = "検診結果がコード型である健診項目の結果を表す。"
  * coding 1..1 MS
    * obeys emc-obs-9P565000000000011-system



Invariant: emc-obs-9P565000000000011-cat
Description: "category.coding.code should be 'exam'."
Expression: "code = 'exam'"
Severity: #warning

Invariant: emc-obs-9P565000000000011-code
Description: "code.coding.code must be '9P565000000000011'."
Expression: "code = '9P565000000000011'"
Severity: #error

Invariant: emc-obs-9P565000000000011-disp
Description: "code.coding.display should be '子宮頸がん検診の精密検査結果'."
Expression: "display = '子宮頸がん検診の精密検査結果'"
Severity: #warning

Invariant: emc-obs-9P565000000000011-system
Description: "valueCodeableConcept.coding.system should be 'urn:oid:1.2.392.100495.100.2450'."
Expression: "system = 'urn:oid:1.2.392.100495.100.2450'"
Severity: #warning
