Profile:        JP_Observation_eMunicipalCheckup_Group_7A030
Parent:         JP_Observation_eMunicipalCheckup_Group
Id:             JP-Observation-eMunicipalCheckup-Group-7A030
Description:    "自治体検診結果報告書　Observationリソース　検査グループ情報(喀痰検査)"
* ^url = "http://jpfhir.jp/fhir/eMunicipalCheckup/StructureDefinition/JP_Observation_eMunicipalCheckup_Group_7A030"
* ^status = #draft

* category 1..1 MS
  * ^short = "検査項目の区分を表すカテゴリコード"
  * coding 1..1 MS
    * obeys emc-obs-7A030-cat

* code 1..1 MS
  * ^short = "健診項目グループコード。健診項目グループを識別するコードを指定。" //Issueとして挙げる
  * coding 1..1 MS
    * obeys emc-obs-7A030-code and emc-obs-7A030-disp

* value[x] 0..0

* hasMember ^slicing.discriminator.type = #profile
* hasMember ^slicing.discriminator.path = "resolve()"
* hasMember ^slicing.rules = #closed
* hasMember contains 
  7A030161506144349 1..1 MS and
  7A030000006144311 1..1 MS and
  7A030160806144349 1..1 MS
* hasMember[7A030161506144349] only Reference(JP_Observation_eMunicipalCheckup_7A030161506144349)

* hasMember[7A030000006144311] only Reference(JP_Observation_eMunicipalCheckup_7A030000006144311)

* hasMember[7A030160806144349] only Reference(JP_Observation_eMunicipalCheckup_7A030160806144349)

Invariant: emc-obs-7A030-cat
Description: "category.coding.code should be 'laboratory'."
Expression: "code = 'laboratory'"
Severity: #warning

Invariant: emc-obs-7A030-code
Description: "code.coding.code must be '7A030'."
Expression: "code = '7A030'"
Severity: #error

Invariant: emc-obs-7A030-disp
Description: "code.coding.display should be '喀痰検査'."
Expression: "display = '喀痰検査'"
Severity: #warning

