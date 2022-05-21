Profile:        JP_Observation_eMunicipalCheckup_1B040000001599811
Parent:         JP_Observation_eMunicipalCheckup
Id:             JP-Observation-eMunicipalCheckup-1B040000001599811
Description:    "自治体検診結果報告書　Observationリソース　検査項目情報(大腸がん検診の便潜血検査判定)"
* ^url = "http://jpfhir.jp/fhir/eMunicipalCheckup/StructureDefinition/JP_Observation_eMunicipalCheckup_1B040000001599811"
* ^status = #draft

* category 1..1 MS
  * coding 1..1 MS
    * obeys emc-obs-1B040000001599811-cat

* code 1..1 MS
  * ^short = "健診項目コード。健診項目を識別するJLAC10コードを指定。" //Issueとして挙げる
  * coding 1..1 MS
    * obeys emc-obs-1B040000001599811-code and emc-obs-1B040000001599811-disp

* value[x] only CodeableConcept
* valueCodeableConcept 1..1 MS
  * ^short = "検診結果がコード型である健診項目の結果を表す。"
  * coding 1..1 MS
    * obeys emc-obs-1B040000001599811-system



Invariant: emc-obs-1B040000001599811-cat
Description: "category.coding.code should be 'laboratory'."
Expression: "code = 'laboratory'"
Severity: #warning

Invariant: emc-obs-1B040000001599811-code
Description: "code.coding.code must be '1B040000001599811'."
Expression: "code = '1B040000001599811'"
Severity: #error

Invariant: emc-obs-1B040000001599811-disp
Description: "code.coding.display should be '大腸がん検診の便潜血検査判定'."
Expression: "display = '大腸がん検診の便潜血検査判定'"
Severity: #warning

Invariant: emc-obs-1B040000001599811-system
Description: "valueCodeableConcept.coding.system should be 'urn:oid:1.2.392.100495.100.2500'."
Expression: "system = 'urn:oid:1.2.392.100495.100.2500'"
Severity: #warning
