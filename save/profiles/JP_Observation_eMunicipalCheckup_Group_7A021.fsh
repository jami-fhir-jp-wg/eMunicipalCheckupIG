Profile:        JP_Observation_eMunicipalCheckup_Group_7A021
Parent:         JP_Observation_eMunicipalCheckup_Group
Id:             JP-Observation-eMunicipalCheckup-Group-7A021
Description:    "自治体検診結果報告書　Observationリソース　検査グループ情報(頸部細胞診検査)"
* ^url = "http://jpfhir.jp/fhir/eMunicipalCheckup/StructureDefinition/JP_Observation_eMunicipalCheckup_Group_7A021"
* ^status = #draft

* category 1..1 MS
  * ^short = "検査項目の区分を表すカテゴリコード"
  * coding 1..1 MS
    * obeys emc-obs-7A021-cat

* code 1..1 MS
  * ^short = "健診項目グループコード。健診項目グループを識別するコードを指定。" //Issueとして挙げる
  * coding 1..1 MS
    * obeys emc-obs-7A021-code and emc-obs-7A021-disp

* value[x] 0..0

* hasMember ^slicing.discriminator.type = #profile
* hasMember ^slicing.discriminator.path = "resolve()"
* hasMember ^slicing.rules = #closed
* hasMember contains 
  7A021000008543311 1..1 MS and
  7A021160808543349 1..1 MS
* hasMember[7A021000008543311] only Reference(JP_Observation_eMunicipalCheckup_7A021000008543311)

* hasMember[7A021160808543349] only Reference(JP_Observation_eMunicipalCheckup_7A021160808543349)

Invariant: emc-obs-7A021-cat
Description: "category.coding.code should be 'laboratory'."
Expression: "code = 'laboratory'"
Severity: #warning

Invariant: emc-obs-7A021-code
Description: "code.coding.code must be '7A021'."
Expression: "code = '7A021'"
Severity: #error

Invariant: emc-obs-7A021-disp
Description: "code.coding.display should be '頸部細胞診検査'."
Expression: "display = '頸部細胞診検査'"
Severity: #warning

