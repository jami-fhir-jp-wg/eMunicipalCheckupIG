Profile:        JP_Observation_eMunicipalCheckup_7A030000006144311
Parent:         JP_Observation_eMunicipalCheckup
Id:             JP-Observation-eMunicipalCheckup-7A030000006144311
Description:    "自治体検診結果報告書　Observationリソース　検査項目情報(肺がん検診の喀痰検査判定)"
* ^url = "http://jpfhir.jp/fhir/eMunicipalCheckup/StructureDefinition/JP_Observation_eMunicipalCheckup_7A030000006144311"
* ^status = #draft

* category 1..1 MS
  * coding 1..1 MS
    * obeys emc-obs-7A030000006144311-cat

* code 1..1 MS
  * ^short = "健診項目コード。健診項目を識別するJLAC10コードを指定。" //Issueとして挙げる
  * coding 1..1 MS
    * obeys emc-obs-7A030000006144311-code and emc-obs-7A030000006144311-disp

* value[x] only CodeableConcept
* valueCodeableConcept 1..1 MS
  * ^short = "検診結果がコード型である健診項目の結果を表す。"
  * coding 1..1 MS
    * obeys emc-obs-7A030000006144311-system



Invariant: emc-obs-7A030000006144311-cat
Description: "category.coding.code should be 'laboratory'."
Expression: "code = 'laboratory'"
Severity: #warning

Invariant: emc-obs-7A030000006144311-code
Description: "code.coding.code must be '7A030000006144311'."
Expression: "code = '7A030000006144311'"
Severity: #error

Invariant: emc-obs-7A030000006144311-disp
Description: "code.coding.display should be '肺がん検診の喀痰検査判定'."
Expression: "display = '肺がん検診の喀痰検査判定'"
Severity: #warning

Invariant: emc-obs-7A030000006144311-system
Description: "valueCodeableConcept.coding.system should be 'urn:oid:1.2.392.100495.100.2101'."
Expression: "system = 'urn:oid:1.2.392.100495.100.2101'"
Severity: #warning

