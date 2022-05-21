Profile:        JP_Observation_eMunicipalCheckup_7A021000008543311
Parent:         JP_Observation_eMunicipalCheckup
Id:             JP-Observation-eMunicipalCheckup-7A021000008543311
Description:    "自治体検診結果報告書　Observationリソース　検査項目情報(子宮頸がん検診の頸部細胞診検査判定)"
* ^url = "http://jpfhir.jp/fhir/eMunicipalCheckup/StructureDefinition/JP_Observation_eMunicipalCheckup_7A021000008543311"
* ^status = #draft

* category 1..1 MS
  * coding 1..1 MS
    * obeys emc-obs-7A021000008543311-cat

* code 1..1 MS
  * ^short = "健診項目コード。健診項目を識別するJLAC10コードを指定。" //Issueとして挙げる
  * coding 1..1 MS
    * obeys emc-obs-7A021000008543311-code and emc-obs-7A021000008543311-disp

* value[x] only CodeableConcept
* valueCodeableConcept 1..1 MS
  * ^short = "検診結果がコード型である健診項目の結果を表す。"
  * coding 1..1 MS
    * obeys emc-obs-7A021000008543311-system



Invariant: emc-obs-7A021000008543311-cat
Description: "category.coding.code should be 'laboratory'."
Expression: "code = 'laboratory'"
Severity: #warning

Invariant: emc-obs-7A021000008543311-code
Description: "code.coding.code must be '7A021000008543311'."
Expression: "code = '7A021000008543311'"
Severity: #error

Invariant: emc-obs-7A021000008543311-disp
Description: "code.coding.display should be '子宮頸がん検診の頸部細胞診検査判定'."
Expression: "display = '子宮頸がん検診の頸部細胞診検査判定'"
Severity: #warning

Invariant: emc-obs-7A021000008543311-system
Description: "valueCodeableConcept.coding.system should be 'urn:oid:1.2.392.100495.100.2400'."
Expression: "system = 'urn:oid:1.2.392.100495.100.2400'"
Severity: #warning

